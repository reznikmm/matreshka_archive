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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Internals.CMOF_Elements;
with AMF.Internals.Tables.AMF_Tables;
with CMOF.Internals.Attributes;
with CMOF.Internals.Links;
with CMOF.Internals.Tables;

package body CMOF.Internals.Collections is

   use AMF.Internals.Tables;
   use CMOF.Internals.Attributes;
   use CMOF.Internals.Tables;

   ---------
   -- Add --
   ---------

   overriding procedure Add
    (Self : not null access CMOF_Collection;
     Item : AMF.Elements.Element_Access)
   is
      Owner       : constant CMOF_Element
        := AMF_Tables.Collections.Table (Self.Collection).Owner;
      Property    : constant CMOF_Property
        := AMF_Tables.Collections.Table (Self.Collection).Property;
      Association : constant CMOF_Association
        := Internal_Get_Association (Property);
      Element     : constant CMOF_Element
        := AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (Item.all).Id;
      Member_End : constant Ordered_Set_Of_CMOF_Property
        := CMOF.Internals.Attributes.Internal_Get_Member_End (Association);

--      Member_End : constant Ordered_Set_Of_CMOF_Property
--        := CMOF.Internals.Attributes.Internal_Get_Member_End (A);
--
--   begin
--      --  XXX This implementation is limit links to connect elements from the
--      --  same metamodel.
--
--      CMOF.Internals.Links.Internal_Create_Link
--       (A,
--        AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class
--         (First_Element.all).Id,
--        CMOF.Internals.Collections.Element (Member_End, 1),
--        AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class
--         (Second_Element.all).Id,
--        CMOF.Internals.Collections.Element (Member_End, 2));
   begin
      if CMOF.Internals.Collections.Element (Member_End, 1) = Property then
         CMOF.Internals.Links.Internal_Create_Link
          (Association,
           Owner,
           Property,
           Element,
           CMOF.Internals.Collections.Element (Member_End, 2));

      else
         CMOF.Internals.Links.Internal_Create_Link
          (Association,
           Element,
           CMOF.Internals.Collections.Element (Member_End, 1),
           Owner,
           Property);
      end if;
   end Add;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : Collection_Of_CMOF_Element;
     Index : Positive) return CMOF_Element
   is
      use type AMF_Tables.Collection_Element_Identifier;

      Current : AMF_Tables.Collection_Element_Identifier
        := AMF_Tables.Collections.Table (Self).Head;

   begin
      for J in 2 .. Index loop
         exit when Current = 0;

         Current := AMF_Tables.Collection_Elements.Table (Current).Next;
      end loop;

      if Current = 0 then
         raise Constraint_Error;

      else
         return AMF_Tables.Collection_Elements.Table (Current).Element;
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : not null access constant CMOF_Collection;
     Index : Positive) return not null AMF.Elements.Element_Access is
   begin
      return Elements.Table (Element (Self.Collection, Index)).Proxy;
   end Element;

   ---------------------
   -- Internal_Append --
   ---------------------

   procedure Internal_Append
    (Collection : Collection_Of_CMOF_Element;
     Element    : CMOF_Element;
     Link       : AMF.Internals.AMF_Link)
   is
      use type AMF_Tables.Collection_Element_Identifier;

      Head        : AMF_Tables.Collection_Element_Identifier
        := AMF_Tables.Collections.Table (Collection).Head;
      Tail        : AMF_Tables.Collection_Element_Identifier
        := AMF_Tables.Collections.Table (Collection).Tail;
      Previous    : AMF_Tables.Collection_Element_Identifier
        := AMF_Tables.Collections.Table (Collection).Tail;
      Next        : AMF_Tables.Collection_Element_Identifier := 0;
      New_Element : AMF_Tables.Collection_Element_Identifier;

   begin
      AMF_Tables.Collection_Elements.Increment_Last;
      New_Element := AMF_Tables.Collection_Elements.Last;

      if Head = 0 then
         --  List is empty.

         Head := New_Element;
         Tail := New_Element;

         AMF_Tables.Collections.Table (Collection).Head := Head;
         AMF_Tables.Collections.Table (Collection).Tail := Tail;

      else
         Tail := New_Element;

         AMF_Tables.Collections.Table (Collection).Tail := Tail;
         AMF_Tables.Collection_Elements.Table (Previous).Next := New_Element;
      end if;

      AMF_Tables.Collection_Elements.Table (New_Element) :=
       (Element, Link, Previous, Next);
   end Internal_Append;

   ------------
   -- Length --
   ------------

   function Length (Self : Collection_Of_CMOF_Element) return Natural is
      use type AMF_Tables.Collection_Element_Identifier;

      Current : AMF_Tables.Collection_Element_Identifier
        := AMF_Tables.Collections.Table (Self).Head;
      Aux     : Natural := 0;

   begin
      while Current /= 0 loop
         Aux     := Aux + 1;
         Current := AMF_Tables.Collection_Elements.Table (Current).Next;
      end loop;

      return Aux;
   end Length;

   ------------
   -- Length --
   ------------

   function Length
    (Self : not null access constant CMOF_Collection) return Natural is
   begin
      return Length (Self.Collection);
   end Length;

   ----------
   -- Wrap --
   ----------

   function Wrap
    (Collection : Collection_Of_CMOF_Element)
       return AMF.Elements.Collections.Reflective_Collection is
   begin
      return
        AMF.Elements.Collections.Wrap
         (new CMOF_Collection'
               (AMF.Internals.Collections.Abstract_Collection with
                  Collection => Collection));
   end Wrap;

end CMOF.Internals.Collections;
