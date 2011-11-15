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
with Ada.Wide_Wide_Text_IO;

with League.Application;

with AMF.Elements.Collections;
with AMF.Facility;
with AMF.URI_Stores;
with XMI.Reader;

with Generator.Analyzer;
with Generator.Attributes;
with Generator.Constructors;
with Generator.Metamodel;
with Generator.Reflection;
with Generator.Type_Mapping;

procedure Gen2 is

   use Ada.Wide_Wide_Text_IO;

   Extent   : AMF.URI_Stores.URI_Store_Access;
   Elements : AMF.Elements.Collections.Set_Of_Element;

begin
   Generator.Metamodel_Name := League.Application.Arguments.Element (3);

   AMF.Facility.Initialize;
   Extent :=
     XMI.Reader.Read_File
      (League.Application.Arguments.Element (1),
       League.Application.Arguments.Element (2));
   Elements := Extent.Elements;

   Generator.Type_Mapping.Load_Mapping;

   Put_Line (Standard_Error, "Analyzing...");
   Generator.Analyzer.Analyze_Model (Extent);
   Generator.Metamodel.Assign_Numbers (Extent);

   if Generator.Generate_Attributes then
      Put_Line (Standard_Error, "Generating attributes...");
      Generator.Attributes.Generate_Attributes_Mapping_Specification;
      Generator.Attributes.Generate_Attributes_Specification;
      Generator.Attributes.Generate_Attributes_Implementation;
   end if;

   if Generator.Generate_Constructors then
      Put_Line (Standard_Error, "Generating constructors...");
      Generator.Constructors.Generate_Constructors_Specification;
      Generator.Constructors.Generate_Constructors_Implementation;
   end if;

   Put_Line (Standard_Error, "Generating metamodel initialization...");
   Generator.Metamodel.Generate_Metamodel_String_Data;
   Generator.Metamodel.Generate_Metamodel_Specification;
   Generator.Metamodel.Generate_Metamodel_Implementation;

   if Generator.Generate_Reflection then
      Put_Line (Standard_Error, "Generating relfection...");
      Generator.Reflection.Generate_Reflection_Implementation;
   end if;
end Gen2;
