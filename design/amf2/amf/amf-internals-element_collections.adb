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
with AMF.Internals.Collections;
with AMF.Internals.Element_Collections.Proxies;
with AMF.Internals.Links;
with AMF.Internals.Tables.AMF_Tables;
with AMF.Internals.Tables.CMOF_Attributes;

package body AMF.Internals.Element_Collections is

   use AMF.Internals.Tables;
   use type AMF.Internals.Tables.AMF_Tables.Collection_Element_Identifier;

   ---------
   -- Add --
   ---------

   procedure Add (Self : AMF_Collection_Of_Element; Item : AMF_Element) is
      Owner       : constant AMF_Element
        := AMF_Tables.Collections.Table (Self).Owner;
      Property    : constant CMOF_Element
        := AMF_Tables.Collections.Table (Self).Property;
      Association : constant CMOF_Element
        := AMF.Internals.Tables.CMOF_Attributes.Internal_Get_Association
            (Property);
      Member_End  : constant AMF_Collection_Of_Element
        := AMF.Internals.Tables.CMOF_Attributes.Internal_Get_Member_End
            (Association);

   begin
      if Element (Member_End, 1) = Property then
         AMF.Internals.Links.Internal_Create_Link
          (Association,
           Owner,
           Property,
           Item,
           Element (Member_End, 2));

      else
         AMF.Internals.Links.Internal_Create_Link
          (Association,
           Item,
           Element (Member_End, 1),
           Owner,
           Property);
      end if;
   end Add;

   --------------------------
   -- Allocate_Collections --
   --------------------------

   function Allocate_Collections
    (Count : Natural) return AMF.Internals.AMF_Collection_Of_Element
   is
      First : constant AMF_Collection_Of_Element
        := AMF_Tables.Collections.Last + 1;

   begin
      AMF_Tables.Collections.Set_Last
       (First + AMF_Collection_Of_Element (Count));

      return First;
   end Allocate_Collections;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : AMF_Collection_Of_Element;
     Index : Positive) return AMF_Element
   is
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

   ---------------------------------------
   -- Initialize_Ordered_Set_Collection --
   ---------------------------------------

   procedure Initialize_Ordered_Set_Collection
    (Element    : AMF_Element;
     Property   : CMOF_Element;
     Collection : AMF_Collection_Of_Element) is
   begin
      AMF_Tables.Collections.Table (Collection) :=
       (Kind     => AMF_Tables.C_Ordered_Set,
        Owner    => Element,
        Property => Property,
        Head     => 0,
        Tail     => 0);
   end Initialize_Ordered_Set_Collection;

   -------------------------------
   -- Initialize_Set_Collection --
   -------------------------------

   procedure Initialize_Set_Collection
    (Element    : AMF_Element;
     Property   : CMOF_Element;
     Collection : AMF_Collection_Of_Element) is
   begin
      AMF_Tables.Collections.Table (Collection) :=
       (Kind     => AMF_Tables.C_Set,
        Owner    => Element,
        Property => Property,
        Head     => 0,
        Tail     => 0);
   end Initialize_Set_Collection;

   ---------------------
   -- Internal_Append --
   ---------------------

   procedure Internal_Append
    (Collection : AMF_Collection_Of_Element;
     Element    : AMF_Element;
     Link       : AMF_Link)
   is
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

   function Length (Self : AMF_Collection_Of_Element) return Natural is
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

   ----------
   -- Wrap --
   ----------

   function Wrap
    (Collection : AMF_Collection_Of_Element)
       return AMF.Internals.Collections.Collection_Access is
   begin
      return
        new Proxies.Element_Collection_Proxy'
             (AMF.Internals.Collections.Abstract_Collection with
                Collection => Collection);
   end Wrap;

   ----------
   -- Wrap --
   ----------

   function Wrap
    (Collection : AMF_Collection_Of_Element)
       return AMF.Elements.Collections.Reflective_Collection is
   begin
      return
        AMF.Elements.Collections.Wrap
         (new Proxies.Element_Collection_Proxy'
               (AMF.Internals.Collections.Abstract_Collection with
                  Collection => Collection));
   end Wrap;

end AMF.Internals.Element_Collections;
