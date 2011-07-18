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
--  Tables of AMF internals data structures.
------------------------------------------------------------------------------
with GNAT.Table;

with Matreshka.Internals.Strings;

package AMF.Internals.Tables.AMF_Tables is

   -------------
   -- Extents --
   -------------

   type Extent_Element_Identifier is new Natural;

   type Extent_Record is record
      Head : Extent_Element_Identifier;
      Tail : Extent_Element_Identifier;
   end record;

   type Extent_Element_Record is record
      Id       : Matreshka.Internals.Strings.Shared_String_Access;
      Element  : AMF_Element;
      Previous : Extent_Element_Identifier;
      Next     : Extent_Element_Identifier;
   end record;

   package Extents is
     new GNAT.Table (Extent_Record, AMF_Extent, 1, 10, 100);

   package Extent_Elements is
     new GNAT.Table
          (Extent_Element_Record, Extent_Element_Identifier, 1, 10_000, 100);

   -----------
   -- Links --
   -----------

   --  Link can connect:
   --   - single slot to single slot
   --   - collection slot to single slot
   --   - single slot to connetion slot
   --   - connection slot to connection slot
   --   - ? element and collection?

   type Link_Kinds is
    (L_None,
     L_Single_Single,
     L_Single_Multiple,
     L_Multiple_Single,
     L_Multiple_Multiple);

   type Link_Record (Kind : Link_Kinds := L_None) is record
      case Kind is
         when L_None =>
            null;

         when L_Single_Single
           | L_Single_Multiple
           | L_Multiple_Single
           | L_Multiple_Multiple
         =>
            Association    : CMOF_Element;
            First_Element  : AMF_Element;
            Second_Element : AMF_Element;
      end case;
   end record;

--   type Link_Kinds is (L_None, L_Slot_Slot, L_Slot_Collection, L_Collection_Slot, L_Collection_Collection);
--
--   type Link_Record (Kind : Link_Kinds := L_None) is record
--      First_Element     : Cmof_Element;
--      First_Property    : Cmof_Element;
----      First_Collection  : Collection_Of_CMOF_Element;
--      Second_Element    : Cmof_Element;
--      Second_Property   : Cmof_Element;
----      Second_Collection : Collection_Of_CMOF_Element;
--
--      case Kind is
--         when L_None =>
--            null;
--
--         when L_Slot_Slot | L_Slot_Collection =>
--            null;
--
--         when L_Collection_Slot | L_Collection_Collection =>
--            null;
----  First_Collection_Element  : Collection_Element_Identifier;
----  Second_Collection_Element : Collection_Element_Identifier;
--      end case;
--   end record;

   package Links is new GNAT.Table (Link_Record, AMF_Link, 1, 20_000, 100);

   -----------------------------
   -- Collections of Elements --
   -----------------------------

   type Collection_Element_Identifier is new Natural;

   type Collection_Kinds is (C_None, C_Set, C_Ordered_Set, C_Bag, C_Sequence);

   type Collection_Record (Kind : Collection_Kinds := C_None) is record
      Owner     : AMF_Element;
      --  Owner of the collection.
      Property  : CMOF_Element;
      --  Property represented by collection.

--      Read_Only : Boolean;
      Head      : Collection_Element_Identifier;
      Tail      : Collection_Element_Identifier;
      --  First and Last elements in the collection.
--      Size      : Natural;
   end record;

--   type Collection_Element_Kinds is (CE_None, 

   type Collection_Element_Record is record
--      Collection : Collection_Of_Cmof_Element;
      Element    : AMF_Element;
      Link       : AMF_Link;
      Previous   : Collection_Element_Identifier;
      Next       : Collection_Element_Identifier;
   end record;

   package Collections is
     new GNAT.Table
          (Collection_Record,
           AMF_Collection_Of_Element,
           1,
           50_000,
           100);

   package Collection_Elements is
     new GNAT.Table
          (Collection_Element_Record,
           Collection_Element_Identifier,
           1,
           20_000,
           100);

end AMF.Internals.Tables.AMF_Tables;
