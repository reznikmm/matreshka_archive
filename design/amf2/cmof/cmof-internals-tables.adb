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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with CMOF.Internals.Attribute_Mappings;
with CMOF.Internals.Collections;
with CMOF.Internals.Metamodel;
with CMOF.Multiplicity_Elements;

package body CMOF.Internals.Tables is

   use CMOF.Internals.Metamodel;
   use CMOF.Internals.Types;

   -----------------------------------------------
   -- Allocate_Collection_Of_Cmof_Element_Slots --
   -----------------------------------------------

   procedure Allocate_Collection_Of_Cmof_Element_Slots
    (Element : Cmof_Element;
     Count   : Natural)
   is
      First : constant Collection_Of_CMOF_Element
        := Collections.Last + 1;

   begin
      Collections.Set_Last (First + Collection_Of_CMOF_Element (Count));
      Elements.Table (Element).Member (0) := (M_Collection_Of_Element, First);
   end Allocate_Collection_Of_Cmof_Element_Slots;

   -------------
   -- Is_Null --
   -------------

   function Is_Null (Self : Cmof_Element) return Boolean is
   begin
      return Self = Null_Cmof_Element;
   end Is_Null;

   --------------
   -- Is_Valid --
   --------------

   function Is_Valid (Self : Cmof_Element) return Boolean is
   begin
      return Is_Null (Self)
        or else (Self in Elements.First .. Elements.Last
                   and then Elements.Table (Self).Kind /= E_None);
   end Is_Valid;

   ---------------------------------------
   -- Initialize_Ordered_Set_Collection --
   ---------------------------------------

   procedure Initialize_Ordered_Set_Collection
--    (Class      : CMOF_Class;
--     Property   : CMOF_Property;
    (Collection : Collection_Of_CMOF_Element) is
   begin
      Collections.Table (Collection) :=
       (Kind     => C_Ordered_Set,
        Owner    => 0,
        Property => 0,
        Head     => 0,
        Tail     => 0);
   end Initialize_Ordered_Set_Collection;

   ---------------------------------------
   -- Initialize_Ordered_Set_Collection --
   ---------------------------------------

   procedure Initialize_Ordered_Set_Collection
    (Element    : CMOF_Element;
     Property   : CMOF_Property;
     Collection : Collection_Of_CMOF_Element) is
   begin
      Collections.Table (Collection) :=
       (Kind     => C_Ordered_Set,
        Owner    => Element,
        Property => Property,
        Head     => 0,
        Tail     => 0);
   end Initialize_Ordered_Set_Collection;

   -------------------------------
   -- Initialize_Set_Collection --
   -------------------------------

   procedure Initialize_Set_Collection
--    (Class      : CMOF_Class;
--     Property   : CMOF_Property;
    (Collection : Collection_Of_CMOF_Element) is
   begin
      Collections.Table (Collection) :=
       (Kind     => C_Set,
        Owner    => 0,
        Property => 0,
        Head     => 0,
        Tail     => 0);
   end Initialize_Set_Collection;

   -------------------------------
   -- Initialize_Set_Collection --
   -------------------------------

   procedure Initialize_Set_Collection
    (Element    : CMOF_Element;
     Property   : CMOF_Property;
     Collection : Collection_Of_CMOF_Element) is
   begin
      Collections.Table (Collection) :=
       (Kind     => C_Set,
        Owner    => Element,
        Property => Property,
        Head     => 0,
        Tail     => 0);
   end Initialize_Set_Collection;

end CMOF.Internals.Tables;
