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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Generator.Names;
with Generator.Type_Mapping;
with Generator.Units;

package body Generator.Factories is

   use Generator.Names;
   use Generator.Type_Mapping;

   procedure Generate_Factory_Interface
    (Metamodel_Info : Metamodel_Information);

   --------------------------------
   -- Generate_Factory_Interface --
   --------------------------------

   procedure Generate_Factory_Interface
    (Metamodel_Info : Metamodel_Information)
   is
      Package_Name : constant League.Strings.Universal_String
        := "AMF.Factories." & Metamodel_Info.Ada_Name & "_Factories";
      Type_Name    : constant League.Strings.Universal_String
        := Metamodel_Info.Ada_Name & "_Factory";
      The_Class    : AMF.CMOF.Classes.CMOF_Class_Access;
      Classes      : CMOF_Class_Ordered_Sets.Set;
      Unit         : Generator.Units.Unit;

   begin
      --  Collect non-abstract classes and sort then alphabetically.

      declare
         Position : CMOF_Element_Sets.Cursor
           := Metamodel_Info.Classes.First;

      begin
         while CMOF_Element_Sets.Has_Element (Position) loop
            The_Class :=
              AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Element_Sets.Element (Position));

            if not The_Class.Get_Is_Abstract then
               Classes.Insert (The_Class);
            end if;

            CMOF_Element_Sets.Next (Position);
         end loop;
      end;

      --  Generate factory interface package specification.

      Unit.Add_Unit_Header (2012, 2012);

      Unit.Add_Line;
      Unit.Add_Line ("package " & Package_Name & " is");
      Unit.Add_Line;
      Unit.Add_Line (+"   pragma Preelaborate;");
      Unit.Add_Line;
      Unit.Add_Line ("   type " & Type_Name & " is limited interface;");

      declare
         Position : CMOF_Class_Ordered_Sets.Cursor := Classes.First;

      begin
         while CMOF_Class_Ordered_Sets.Has_Element (Position) loop
            The_Class := CMOF_Class_Ordered_Sets.Element (Position);

            Unit.Add_Line;
            Unit.Add_Line
             (+"   not overriding function Create_"
                 & To_Ada_Identifier (The_Class.Get_Name.Value));
            Unit.Add_Line
             ("    (Self : not null access " & Type_Name & ')');
            Unit.Context.Add (Public_Ada_Package_Name (The_Class, Value));
            Unit.Add_Line
             ("       return "
                & Public_Ada_Type_Qualified_Name (The_Class, Value)
                & " is abstract;");

            CMOF_Class_Ordered_Sets.Next (Position);
         end loop;
      end;

      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ';');

      Unit.Context.Instantiate (Package_Name);
      Unit.Put;
   end Generate_Factory_Interface;

   --------------------------------
   -- Generate_Factory_Interface --
   --------------------------------

   procedure Generate_Factory_Interface is
      Position : Extent_Vectors.Cursor := Module_Info.Extents.First;

   begin
      while Extent_Vectors.Has_Element (Position) loop
         Generate_Factory_Interface
          (Metamodel_Infos.Element (Extent_Vectors.Element (Position)).all);
         Extent_Vectors.Next (Position);
      end loop;
   end Generate_Factory_Interface;

end Generator.Factories;
