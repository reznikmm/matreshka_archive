------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
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
with Ada.Containers.Hashed_Maps;
with Ada.Containers.Ordered_Maps;
with Ada.Containers.Ordered_Sets;

with AMF.CMOF.Classes;
with AMF.CMOF.Properties;
with CMOF.Extents;

package Generator is

   use CMOF;

   function "<"
    (Left  : CMOF.CMOF_Named_Element;
     Right : CMOF.CMOF_Named_Element) return Boolean;

   package CMOF_Named_Element_Ordered_Sets is
     new Ada.Containers.Ordered_Sets (CMOF.CMOF_Named_Element);

   package CMOF_Element_Number_Maps is
     new Ada.Containers.Hashed_Maps
          (CMOF.CMOF_Element, Positive, CMOF.Extents.Hash, "=");

   function Sort
    (Set : CMOF.Extents.CMOF_Element_Sets.Set)
       return CMOF_Named_Element_Ordered_Sets.Set;

   -------------------------------------------
   --  Second generation of internal data.  --
   -------------------------------------------

--   function Hash
--    (Item : not null access AMF.CMOF.Elements.CMOF_Element'Class)
--       return Ada.Containers.Hash_Type;

--   function Hash
--    (Item : not null AMF.CMOF.Classes.CMOF_Class_Access)
--       return Ada.Containers.Hash_Type;

   function Less
    (Left  : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Right : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean;
   --  Returns True when name of Left is less than name of Right, if they are
   --  equal returns True when internal identifier of Left is less than
   --  internals identifier of Right.

   function Less
    (Left  : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Right : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return Boolean;
   --  Returns True when name of Left is less than name of Right.

   package CMOF_Property_Sets is
     new Ada.Containers.Ordered_Sets
          (AMF.CMOF.Properties.CMOF_Property_Access,
           Less,
           AMF.CMOF.Properties."=");

   type Class_Information is record
      Class          : AMF.CMOF.Classes.CMOF_Class_Access;
      All_Attributes : CMOF_Property_Sets.Set;
      --  Set of all attributes of the class.
   end record;
   --  Class information record contains extracted information for each class.

   type Class_Information_Access is access all Class_Information;

   package Class_Information_Maps is
     new Ada.Containers.Ordered_Maps
          (AMF.CMOF.Classes.CMOF_Class_Access,
           Class_Information_Access,
           Less);
--           Hash,
--           AMF.CMOF.Classes."=");

   Class_Info : Class_Information_Maps.Map;
   --  Mapping from CMOF::Class to class information.

end Generator;
