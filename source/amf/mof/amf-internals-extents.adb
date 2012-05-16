------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                            Testsuite Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Strings.Wide_Wide_Fixed;

with League.Strings.Internals;

with AMF.Internals.AMF_URI_Extents;
with AMF.Internals.AMF_URI_Stores;
with AMF.Internals.Collections.Elements.Containers;
with AMF.Internals.Helpers;
with AMF.Internals.Listener_Registry;
with AMF.Internals.Tables.AMF_Tables;

package body AMF.Internals.Extents is

   use type AMF.Internals.Tables.AMF_Tables.Extent_Element_Identifier;
   use type Matreshka.Internals.Strings.Shared_String_Access;

   function Lookup
    (Extent  : AMF_Extent;
     Element : AMF_Element) return Tables.AMF_Tables.Extent_Element_Identifier;
   --  Lookup for element in the extent. Returns identifier of element's record
   --  in the extent.

   ------------------
   -- All_Elements --
   ------------------

   function All_Elements
    (Self : AMF_Extent)
       return not null AMF.Internals.Collections.Elements.Shared_Element_Collection_Access
   is
      Current  : AMF.Internals.Tables.AMF_Tables.Extent_Element_Identifier
        := AMF.Internals.Tables.AMF_Tables.Extents.Table (Self).Head;
      Result   : constant not null AMF.Internals.Collections.Elements.Shared_Element_Collection_Access
        := new AMF.Internals.Collections.Elements.Containers.Shared_Element_Collection_Container;
      Elements : AMF.Internals.Collections.Elements.Containers.Vectors.Vector
        renames AMF.Internals.Collections.Elements.Containers.Shared_Element_Collection_Container (Result.all).Elements;

   begin
      while Current /= 0 loop
         Elements.Append
          (AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.AMF_Tables.Extent_Elements.Table (Current).Element));
         Current := AMF.Internals.Tables.AMF_Tables.Extent_Elements.Table (Current).Next;
      end loop;

      return Result;
   end All_Elements;

   ---------------------
   -- Allocate_Extent --
   ---------------------

   function Allocate_Extent
    (Context_URI : not null Matreshka.Internals.Strings.Shared_String_Access)
       return AMF_Extent is
   begin
      Matreshka.Internals.Strings.Reference (Context_URI);

      AMF.Internals.Tables.AMF_Tables.Extents.Increment_Last;
      AMF.Internals.Tables.AMF_Tables.Extents.Table
       (AMF.Internals.Tables.AMF_Tables.Extents.Last) :=
         (new AMF.Internals.AMF_URI_Extents.AMF_URI_Extent'
               (Id => AMF.Internals.Tables.AMF_Tables.Extents.Last),
          Context_URI,
          0,
          0);

      return AMF.Internals.Tables.AMF_Tables.Extents.Last;
   end Allocate_Extent;

   ------------------------
   -- Allocate_URI_Store --
   ------------------------

   function Allocate_URI_Store
    (Context_URI : not null Matreshka.Internals.Strings.Shared_String_Access)
       return not null AMF.URI_Stores.URI_Store_Access is
   begin
      Matreshka.Internals.Strings.Reference (Context_URI);

      AMF.Internals.Tables.AMF_Tables.Extents.Increment_Last;
      AMF.Internals.Tables.AMF_Tables.Extents.Table
       (AMF.Internals.Tables.AMF_Tables.Extents.Last) :=
         (new AMF.Internals.AMF_URI_Stores.AMF_URI_Store'
               (Id        => AMF.Internals.Tables.AMF_Tables.Extents.Last,
                Factories =>
                  AMF.Internals.AMF_URI_Stores.String_Factory_Maps.Empty_Map),
          Context_URI,
          0,
          0);

      AMF.Internals.Listener_Registry.Notify_Extent_Create
       (AMF.Extents.Extent_Access
         (AMF.Internals.Tables.AMF_Tables.Extents.Table
           (AMF.Internals.Tables.AMF_Tables.Extents.Last).Proxy));

      return
        AMF.URI_Stores.URI_Store_Access
         (AMF.Internals.Tables.AMF_Tables.Extents.Table
           (AMF.Internals.Tables.AMF_Tables.Extents.Last).Proxy);
   end Allocate_URI_Store;

   -------------
   -- Element --
   -------------

   function Element
    (Self : AMF_Extent;
     Name : League.Strings.Universal_String) return AMF_Element
   is
      use type League.Strings.Universal_String;

      Current : Tables.AMF_Tables.Extent_Element_Identifier
        := Tables.AMF_Tables.Extents.Table (Self).Head;

   begin
      while Current /= 0 loop
         if League.Strings.Internals.Create
             (Tables.AMF_Tables.Extent_Elements.Table (Current).Id) = Name
         then
            return Tables.AMF_Tables.Extent_Elements.Table (Current).Element;
         end if;

         Current := Tables.AMF_Tables.Extent_Elements.Table (Current).Next;
      end loop;

      return 0;
   end Element;

   ---------------------
   -- Internal_Append --
   ---------------------

   procedure Internal_Append (Extent : AMF_Extent; Element : AMF_Element) is
      Previous : constant Tables.AMF_Tables.Extent_Element_Identifier
        := Tables.AMF_Tables.Extents.Table (Extent).Tail;

   begin
      Tables.AMF_Tables.Extent_Elements.Increment_Last;

      --  Initialize table's element.

      Tables.AMF_Tables.Extent_Elements.Table
       (Tables.AMF_Tables.Extent_Elements.Last) :=
       (Id       => Matreshka.Internals.Strings.Shared_Empty'Access,
        Element  => Element,
        Previous => Previous,
        Next     => 0);

      --  Connect to the list.

      Tables.AMF_Tables.Extents.Table (Extent).Tail :=
        Tables.AMF_Tables.Extent_Elements.Last;

      if Tables.AMF_Tables.Extents.Table (Extent).Head = 0 then
         --  List is empty.

         Tables.AMF_Tables.Extents.Table (Extent).Head :=
           Tables.AMF_Tables.Extent_Elements.Last;

      else
         Tables.AMF_Tables.Extent_Elements.Table (Previous).Next :=
           Tables.AMF_Tables.Extent_Elements.Last;
      end if;

      --  Complete connection at module's side.

      AMF.Internals.Helpers.Connect_Extent (Element, Extent);
   end Internal_Append;

   ------------
   -- Get_Id --
   ------------

   function Get_Id
    (Extent  : AMF_Extent;
     Element : AMF_Element) return League.Strings.Universal_String
   is
      Current : constant Tables.AMF_Tables.Extent_Element_Identifier
        := Lookup (Extent, Element);

   begin
      if Current = 0 then
         return League.Strings.Empty_Universal_String;

      else
         return
           League.Strings.Internals.Create
            (Tables.AMF_Tables.Extent_Elements.Table (Current).Id);
      end if;
   end Get_Id;

   ------------
   -- Lookup --
   ------------

   function Lookup
    (Extent  : AMF_Extent;
     Element : AMF_Element) return Tables.AMF_Tables.Extent_Element_Identifier
   is
      Current : Tables.AMF_Tables.Extent_Element_Identifier
        := Tables.AMF_Tables.Extents.Table (Extent).Head;

   begin
      while Current /= 0 loop
         exit when
           Tables.AMF_Tables.Extent_Elements.Table (Current).Element = Element;

         Current := Tables.AMF_Tables.Extent_Elements.Table (Current).Next;
      end loop;

      return Current;
   end Lookup;

   -----------
   -- Proxy --
   -----------

   function Proxy
    (Extent : AMF_Extent) return not null AMF.Extents.Extent_Access is
   begin
      return
        AMF.Extents.Extent_Access
         (AMF.Internals.Tables.AMF_Tables.Extents.Table (Extent).Proxy);
   end Proxy;

   ------------
   -- Set_Id --
   ------------

   procedure Set_Id
    (Extent  : AMF_Extent;
     Element : AMF_Element;
     Id      : League.Strings.Universal_String)
   is
      Current : constant Tables.AMF_Tables.Extent_Element_Identifier
        := Lookup (Extent, Element);

   begin
      if Current /= 0 then
         Matreshka.Internals.Strings.Dereference
          (Tables.AMF_Tables.Extent_Elements.Table (Current).Id);
         Tables.AMF_Tables.Extent_Elements.Table (Current).Id :=
           League.Strings.Internals.Internal (Id);
         Matreshka.Internals.Strings.Reference
          (Tables.AMF_Tables.Extent_Elements.Table (Current).Id);
      end if;
   end Set_Id;

   ---------
   -- URI --
   ---------

   function URI
    (Extent  : AMF_Extent;
     Element : AMF_Element) return League.Strings.Universal_String
   is
      use type League.Strings.Universal_String;

      Current : constant Tables.AMF_Tables.Extent_Element_Identifier
        := Lookup (Extent, Element);
      Id      : League.Strings.Universal_String;

   begin
      if Current /= 0 then
         Id :=
           League.Strings.Internals.Create
            (Tables.AMF_Tables.Extent_Elements.Table (Current).Id);

         if Id.Is_Empty then
            Id :=
              League.Strings.To_Universal_String
               (Ada.Strings.Wide_Wide_Fixed.Trim
                 (AMF_Element'Wide_Wide_Image
                   (Tables.AMF_Tables.Extent_Elements.Table (Current).Element),
                  Ada.Strings.Both));
         end if;

         return
           League.Strings.Internals.Create
            (Tables.AMF_Tables.Extents.Table (Extent).Context_URI)
             & '#'
             & Id;

      else
         return League.Strings.Empty_Universal_String;
      end if;
   end URI;

end AMF.Internals.Extents;
