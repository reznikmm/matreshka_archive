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
with AMF.CMOF.Associations;
with AMF.CMOF.Properties.Collections;

with Generator.Names;
with Generator.Units;

package body Generator.Link_Sets is

   use Generator.Names;

   ------------------------------
   -- Generate_Construct_Union --
   ------------------------------

   procedure Generate_Construct_Union is
      Package_Name    : constant League.Strings.Universal_String
        := "AMF.Internals.Factories."
             & Module_Info.Ada_Name
             & "_Module_Factory";
      First_Class     : Boolean := True;
      First_Attribute : Boolean;
      Unit            : Generator.Units.Unit;
      Position        : CMOF_Class_Sets.Cursor := Module_Info.Classes.First;
      The_Class       : AMF.CMOF.Classes.CMOF_Class_Access;

   begin
      Unit.Add_Unit_Header (2012, 2012);
      Unit.Add_Line;
      Unit.Add_Line ("separate (" & Package_Name & ")");
      Unit.Add_Line (+"procedure Construct_Union");
      Unit.Add_Line (+" (Element  : AMF.Internals.AMF_Element;");
      Unit.Add_Line (+"  Property : AMF.Internals.CMOF_Element;");
      Unit.Add_Line (+"  Link     : AMF.Internals.AMF_Link)");
      Unit.Add_Line (+"is");
      Unit.Context.Add
       ("AMF.Internals.Tables." & Module_Info.Ada_Name & "_Types");
      Unit.Add_Line
       ("   Element_Kind : constant AMF.Internals.Tables."
          & Module_Info.Ada_Name
          & "_Types.Element_Kinds");
      Unit.Context.Add
       ("AMF.Internals.Tables." & Module_Info.Ada_Name & "_Element_Table");
      Unit.Add_Line
       ("     := AMF.Internals.Tables."
          & Module_Info.Ada_Name
          & "_Element_Table.Table (Element).Kind;");
      Unit.Context.Add (+"AMF.Internals.Links");
      Unit.Add_Line
       (+"   Opposite     : constant AMF.Internals.AMF_Element");
      Unit.Add_Line
       (+"     := AMF.Internals.Links.Opposite_Element (Link, Element);");

      Unit.Add_Line;
      Unit.Add_Line (+"begin");
      Unit.Add_Line (+"   case Element_Kind is");

      --  Go through all non-abstract classes of the module.

      while CMOF_Class_Sets.Has_Element (Position) loop
         The_Class := CMOF_Class_Sets.Element (Position);

         if not The_Class.Get_Is_Abstract then
            declare
               use type AMF.CMOF.Properties.CMOF_Property_Access;

               Class_Info     : constant Class_Information_Access
                 := Generator.Class_Info.Element (The_Class);
               Position       : CMOF_Property_Sets.Cursor
                 := Class_Info.All_Attributes.First;
               The_Property   : AMF.CMOF.Properties.CMOF_Property_Access;
               Subsetted      :
                 AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;
               Union_Property : AMF.CMOF.Properties.CMOF_Property_Access;
               Association    : AMF.CMOF.Associations.CMOF_Association_Access;
               Member_Ends    :
                 AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property;

            begin
               First_Attribute := True;

               while CMOF_Property_Sets.Has_Element (Position) loop
                  The_Property := CMOF_Property_Sets.Element (Position);
                  Subsetted := The_Property.Get_Subsetted_Property;

                  for J in 1 .. Subsetted.Length loop
                     Union_Property := Subsetted.Element (J);

                     if Union_Property.Get_Is_Derived_Union then
                        Association := Union_Property.Get_Association;
                        Member_Ends := Association.Get_Member_End;

                        Unit.Context.Add
                         (Property_Constant_Package_Name (The_Property));

                        if First_Attribute then
                           First_Attribute := False;

                           if First_Class then
                              First_Class := False;

                           else
                              Unit.Add_Line;
                           end if;

                           Unit.Add_Line
                            ("      when AMF.Internals.Tables."
                               & Module_Info.Ada_Name
                               & "_Types.E_"
                               & Owning_Metamodel_Ada_Name (Class_Info.Class)
                               & '_'
                               & To_Ada_Identifier
                                  (Class_Info.Class.Get_Name.Value)
                               & " =>");

                           Unit.Add_Line
                            ("         if Property = "
                               & Property_Constant_Qualified_Name
                                  (The_Property)
                               & " then");

                        else
                           Unit.Add_Line;
                           Unit.Add_Line
                            ("         elsif Property = "
                               & Property_Constant_Qualified_Name
                                  (The_Property)
                               & " then");
                        end if;

                        Unit.Add_Line
                         (+"            AMF.Internals.Links.Create_Link");
                        Unit.Context.Add
                         (Association_Constant_Package_Name (Association));
                        Unit.Add_Line
                         ("             ("
                            & Association_Constant_Qualified_Name (Association)
                            & ",");

                        if Member_Ends.Element (1) = Union_Property then
                           Unit.Add_Line (+"              Element,");
                           Unit.Add_Line (+"              Opposite,");

                        elsif Member_Ends.Element (2) = Union_Property then
                           Unit.Add_Line (+"              Opposite,");
                           Unit.Add_Line (+"              Element,");

                        else
                           raise Program_Error;
                        end if;

                        Unit.Add_Line (+"              Link);");
                     end if;
                  end loop;

                  CMOF_Property_Sets.Next (Position);
               end loop;

               if not First_Attribute then
                  Unit.Add_Line (+"         end if;");
               end if;
            end;
         end if;

         CMOF_Class_Sets.Next (Position);
      end loop;

      Unit.Add_Line;
      Unit.Add_Line (+"      when others =>");
      Unit.Add_Line (+"         null;");
      Unit.Add_Line (+"   end case;");

      Unit.Add_Line (+"end Construct_Union;");
      Unit.Put;
   end Generate_Construct_Union;

end Generator.Link_Sets;
