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
with Ada.Containers.Ordered_Maps;

with Generator.Names;
with Generator.Type_Mapping;
with Generator.Units;

package body Generator.Visitors is

   procedure Generate_Visitors_Package
    (Info : not null Metamodel_Information_Access);
   --  Generates visitor interface package

   procedure Generate_Iterators_Package
    (Info : not null Metamodel_Information_Access);
   --  Generates iterator interface package

   package CMOF_Class_Ordered_Sets is
     new Ada.Containers.Ordered_Sets
          (AMF.CMOF.Classes.CMOF_Class_Access, Less, AMF.CMOF.Classes."=");

   function To_Ordered_Set
    (Elements : CMOF_Element_Sets.Set) return CMOF_Class_Ordered_Sets.Set;

   --------------------------------
   -- Generate_Iterators_Package --
   --------------------------------

   procedure Generate_Iterators_Package
    (Info : not null Metamodel_Information_Access)
   is
      Package_Name : constant League.Strings.Universal_String
        := "AMF.Visitors." & Info.Ada_Name & "_Visitors";
      Classes      : constant CMOF_Class_Ordered_Sets.Set
        := To_Ordered_Set (Info.Classes);
      Position     : CMOF_Class_Ordered_Sets.Cursor := Classes.First;
      Unit         : Generator.Units.Unit;
      Class        : AMF.CMOF.Classes.CMOF_Class_Access;

   begin
      if Classes.Is_Empty then
         --  Don't generate visitors package when there are no classes in
         --  metamodel.

         return;
      end if;

      Unit.Add_Unit_Header (2012, 2012);

      Unit.Add_Line;
      Unit.Add_Line ("package " & Package_Name & " is");
      Unit.Add_Line;
      Unit.Add_Line (+"   pragma Preelaborate;");
      Unit.Add_Line;
      Unit.Add_Line
       ("   type "
          & Info.Ada_Name
          & "_Visitor is limited interface and AMF.Visitors.Abstract_Visitor;");

      while CMOF_Class_Ordered_Sets.Has_Element (Position) loop
         Class := CMOF_Class_Ordered_Sets.Element (Position);

         if not Class.Get_Is_Abstract then
            Unit.Add_Line;
            Unit.Add_Line
             (+"   not overriding procedure Enter_"
                 & Generator.Names.To_Ada_Identifier (Class.Get_Name.Value));
            Unit.Add_Line
             ("    (Self    : in out " & Info.Ada_Name & "_Visitor;");
            Unit.Context.Add
             (Generator.Type_Mapping.Public_Ada_Package_Name (Class, Value));
            Unit.Add_Line
             ("     Element : not null "
                & Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                   (Class, Value)
                & ";");
            Unit.Add_Line
             (+"     Control : in out AMF.Visitors.Traverse_Control) is null;");
            Unit.Add_Line;
            Unit.Add_Line
             (+"   not overriding procedure Leave_"
                 & Generator.Names.To_Ada_Identifier (Class.Get_Name.Value));
            Unit.Add_Line
             ("    (Self    : in out " & Info.Ada_Name & "_Visitor;");
            Unit.Context.Add
             (Generator.Type_Mapping.Public_Ada_Package_Name (Class, Value));
            Unit.Add_Line
             ("     Element : not null "
                & Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                   (Class, Value)
                & ";");
            Unit.Add_Line
             (+"     Control : in out AMF.Visitors.Traverse_Control) is null;");
         end if;

         CMOF_Class_Ordered_Sets.Next (Position);
      end loop;

      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ";");

      Unit.Put;
   end Generate_Iterators_Package;

   ---------------------------------
   -- Generate_Iterators_Packages --
   ---------------------------------

   procedure Generate_Iterators_Packages is
   begin
      for J in 1 .. Natural (Module_Info.Extents.Length) loop
         Generate_Iterators_Package
          (Metamodel_Infos.Element (Module_Info.Extents.Element (J)));
      end loop;
   end Generate_Iterators_Packages;

   -------------------------------
   -- Generate_Visitors_Package --
   -------------------------------

   procedure Generate_Visitors_Package
    (Info : not null Metamodel_Information_Access)
   is
      Package_Name : constant League.Strings.Universal_String
        := "AMF.Visitors." & Info.Ada_Name & "_Iterators";
      Classes      : constant CMOF_Class_Ordered_Sets.Set
        := To_Ordered_Set (Info.Classes);
      Position     : CMOF_Class_Ordered_Sets.Cursor := Classes.First;
      Unit         : Generator.Units.Unit;
      Class        : AMF.CMOF.Classes.CMOF_Class_Access;

   begin
      if Classes.Is_Empty then
         --  Don't generate visitors package when there are no classes in
         --  metamodel.

         return;
      end if;

      Unit.Add_Unit_Header (2012, 2012);

      Unit.Add_Line;
      Unit.Add_Line ("package " & Package_Name & " is");
      Unit.Add_Line;
      Unit.Add_Line (+"   pragma Preelaborate;");
      Unit.Add_Line;
      Unit.Add_Line
       ("   type "
          & Info.Ada_Name
          & "_Iterator is limited interface"
          & " and AMF.Visitors.Abstract_Iterator;");

      while CMOF_Class_Ordered_Sets.Has_Element (Position) loop
         Class := CMOF_Class_Ordered_Sets.Element (Position);

         if not Class.Get_Is_Abstract then
            Unit.Add_Line;
            Unit.Add_Line
             (+"   not overriding procedure Visit_"
                 & Generator.Names.To_Ada_Identifier (Class.Get_Name.Value));
            Unit.Add_Line
             ("    (Self    : in out " & Info.Ada_Name & "_Iterator;");
            Unit.Add_Line
             (+"     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;");
            Unit.Context.Add
             (Generator.Type_Mapping.Public_Ada_Package_Name (Class, Value));
            Unit.Add_Line
             ("     Element : not null "
                & Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                   (Class, Value)
                & ";");
            Unit.Add_Line
             (+"     Control : in out AMF.Visitors.Traverse_Control) is null;");
         end if;

         CMOF_Class_Ordered_Sets.Next (Position);
      end loop;

      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ";");

      Unit.Put;
   end Generate_Visitors_Package;

   --------------------------------
   -- Generate_Visitors_Packages --
   --------------------------------

   procedure Generate_Visitors_Packages is
   begin
      for J in 1 .. Natural (Module_Info.Extents.Length) loop
         Generate_Visitors_Package
          (Metamodel_Infos.Element (Module_Info.Extents.Element (J)));
      end loop;
   end Generate_Visitors_Packages;

   --------------------
   -- To_Ordered_Set --
   --------------------

   function To_Ordered_Set
    (Elements : CMOF_Element_Sets.Set) return CMOF_Class_Ordered_Sets.Set
   is
      Position : CMOF_Element_Sets.Cursor := Elements.First;

   begin
      return Result : CMOF_Class_Ordered_Sets.Set do
         while CMOF_Element_Sets.Has_Element (Position) loop
            Result.Insert
             (AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Element_Sets.Element (Position)));
            CMOF_Element_Sets.Next (Position);
         end loop;
      end return;
   end To_Ordered_Set;

end Generator.Visitors;
