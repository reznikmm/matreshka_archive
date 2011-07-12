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
with League.Strings;

with AMF.CMOF.Associations;
with AMF.CMOF.Packages;
with AMF.CMOF.Properties;
with AMF.CMOF.Types;

package Generator.Names is

   function To_Ada_Identifier
    (Name : Wide_Wide_String) return Wide_Wide_String;

   function To_Ada_Identifier
    (Name : League.Strings.Universal_String) return Wide_Wide_String;

   function Association_Constant_Name
    (Association : not null AMF.CMOF.Associations.CMOF_Association_Access)
       return Wide_Wide_String;

   function Association_Constant_Qualified_Name
    (Association : not null AMF.CMOF.Associations.CMOF_Association_Access)
       return Wide_Wide_String;

   function Type_Constant_Name
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return League.Strings.Universal_String;

   function Type_Constant_Qualified_Name
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return League.Strings.Universal_String;

   function Package_Constant_Name
    (Element : not null AMF.CMOF.Packages.CMOF_Package_Access)
       return League.Strings.Universal_String;

   function Package_Constant_Qualified_Name
    (Element : not null AMF.CMOF.Packages.CMOF_Package_Access)
       return League.Strings.Universal_String;

   function Property_Constant_Name
    (Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Wide_Wide_String;

   function Property_Constant_Qualified_Name
    (Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Wide_Wide_String;

   function Element_Constant_Qualified_Name
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access)
       return League.Strings.Universal_String;

   function Plural (Name : Wide_Wide_String) return Wide_Wide_String;

end Generator.Names;
