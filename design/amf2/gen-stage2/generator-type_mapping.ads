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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package provides capability to specify mapping of model's data types
--  into Ada one.
------------------------------------------------------------------------------
private with Ada.Containers.Hashed_Maps;
private with AMF.CMOF.Elements.Hash;
with AMF.CMOF.Types;

package Generator.Type_Mapping is

   procedure Load_Mapping;
   --  Loads mapping data.

   function Public_Ada_Type_Qualified_Name
    (The_Type       : not null access AMF.CMOF.Types.CMOF_Type'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String;
   --  Returns fully qualified name of Ada type which is used to represent
   --  value of the specified type in public API.

   function Internal_Ada_Type_Qualified_Name
    (The_Type       : not null access AMF.CMOF.Types.CMOF_Type'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String;
   --  Returns fully qualified name of Ada type which is used to represent
   --  value of the specified type in the internal data structures.

   function Member_Name
    (Element        : not null access AMF.CMOF.Elements.CMOF_Element'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String;

private

   type Representation_Mapping is record
      Ada_Package : League.Strings.Universal_String;
      Ada_Type    : League.Strings.Universal_String;
      Member_Name : League.Strings.Universal_String;
   end record;

   type Representation_Mapping_Access is access all Representation_Mapping;

   type Representation_Mappings is
     array (Representation_Kinds) of Representation_Mapping_Access;

   type Type_Mapping is record
      Mapping : Representation_Mappings;
   end record;

   type Type_Mapping_Access is access all Type_Mapping;

   package Mapping_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.CMOF.Elements.CMOF_Element_Access,
           Type_Mapping_Access,
           AMF.CMOF.Elements.Hash,
           AMF.CMOF.Elements."=");

   Mapping : Mapping_Maps.Map;

end Generator.Type_Mapping;
