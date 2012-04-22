------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
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
with AMF.Internals.Element_Collections;
with AMF.Internals.Links;
with AMF.Internals.Tables.CMOF_Attribute_Mappings;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Tables.CMOF_Metamodel;
with AMF.Internals.Tables.CMOF_Types;

package body AMF.Internals.Factories.CMOF_Module_Factory is

   use AMF.Internals.Tables;

   procedure Construct_Union
    (Element  : AMF.Internals.AMF_Element;
     Property : AMF.Internals.CMOF_Element;
     Link     : AMF.Internals.AMF_Link);

   --------------------
   -- Connect_Extent --
   --------------------

   overriding procedure Connect_Extent
    (Self    : not null access constant CMOF_Module_Factory;
     Element : AMF.Internals.AMF_Element;
     Extent  : AMF.Internals.AMF_Extent)
   is
      pragma Unreferenced (Self);

   begin
      AMF.Internals.Tables.CMOF_Element_Table.Table (Element).Extent := Extent;
   end Connect_Extent;

   ----------------------
   -- Connect_Link_End --
   ----------------------

   overriding procedure Connect_Link_End
    (Self     : not null access constant CMOF_Module_Factory;
     Element  : AMF.Internals.AMF_Element;
     Property : AMF.Internals.CMOF_Element;
     Link     : AMF.Internals.AMF_Link;
     Other    : AMF.Internals.AMF_Element)
   is
      pragma Unreferenced (Self);

      use AMF.Internals.Tables.CMOF_Attribute_Mappings;

   begin
      if AMF.Internals.Tables.CMOF_Attributes.Internal_Get_Upper
          (Property).Value > 1
      then
         if Property in CMOF_Collection_Offset'Range (2) then
            AMF.Internals.Element_Collections.Internal_Append
             (CMOF_Element_Table.Table (Element).Member (0).Collection
                + CMOF_Collection_Offset
                   (CMOF_Element_Table.Table (Element).Kind, Property),
              Other,
              Link);

         else
            AMF.Internals.Element_Collections.Internal_Append
             (CMOF_Element_Table.Table (Element).Member (0).Collection,
              Other,
              Link);
         end if;

      else
         if Property in CMOF_Member_Offset'Range (2) then
            CMOF_Element_Table.Table (Element).Member
             (CMOF_Member_Offset
               (CMOF_Element_Table.Table (Element).Kind,
                Property)).Link := Link;

         else
            AMF.Internals.Element_Collections.Internal_Append
             (CMOF_Element_Table.Table (Element).Member (0).Collection,
              Other,
              Link);
         end if;
      end if;
   end Connect_Link_End;

   ---------------------
   -- Construct_Union --
   ---------------------

   procedure Construct_Union
    (Element  : AMF.Internals.AMF_Element;
     Property : AMF.Internals.CMOF_Element;
     Link     : AMF.Internals.AMF_Link) is separate;

   --------------------------
   -- Synchronize_Link_Set --
   --------------------------

   overriding procedure Synchronize_Link_Set
    (Self     : not null access constant CMOF_Module_Factory;
     Element  : AMF.Internals.AMF_Element;
     Property : AMF.Internals.CMOF_Element;
     Link     : AMF.Internals.AMF_Link)
   is
      pragma Unreferenced (Self);

      use AMF.Internals.Tables.CMOF_Metamodel;
      use AMF.Internals.Tables.CMOF_Types;

      Element_Kind  : constant CMOF_Types.Element_Kinds
        := CMOF_Element_Table.Table (Element).Kind;
      Opposite      : constant AMF_Element
        := AMF.Internals.Links.Opposite_Element (Link, Element);
      Opposite_Kind : constant CMOF_Types.Element_Kinds
        := CMOF_Element_Table.Table (Opposite).Kind;

   begin
      --  XXX Experimental code: when element is added to
      --  CMOF::Package::packagedElement attribute and element is subclass of
      --  CMOF::Type when add it to CMOF::Package::ownedType attribute also.

      if Element_Kind = E_CMOF_Package
        and then Property = MP_CMOF_Package_Packaged_Element
        and then (Opposite_Kind = E_CMOF_Class
                    or Opposite_Kind = E_CMOF_Enumeration
                    or Opposite_Kind = E_CMOF_Data_Type
                    or Opposite_Kind = E_CMOF_Primitive_Type)
      then
         AMF.Internals.Links.Create_Link
          (MA_CMOF_Type_Owned_Type_Package,
           Element,
           Opposite,
           Link);
      end if;

      --  Construct derived unions.

      Construct_Union (Element, Property, Link);
   end Synchronize_Link_Set;

   ----------------
   -- To_Element --
   ----------------

   overriding function To_Element
    (Self     : not null access constant CMOF_Module_Factory;
     Element  : AMF.Internals.AMF_Element)
       return AMF.Elements.Element_Access
   is
      pragma Unreferenced (Self);

   begin
      return AMF.Internals.Tables.CMOF_Element_Table.Table (Element).Proxy;
   end To_Element;

end AMF.Internals.Factories.CMOF_Module_Factory;
