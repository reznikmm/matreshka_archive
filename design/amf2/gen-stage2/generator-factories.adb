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
with AMF.CMOF.Enumerations;
with AMF.CMOF.Enumeration_Literals.Collections;

with Generator.Names;
with Generator.Type_Mapping;
with Generator.Units;

package body Generator.Factories is

   use Generator.Names;
   use Generator.Type_Mapping;

   procedure Generate_Factory_Interface
    (Metamodel_Info : Metamodel_Information);
   --  Generates factory interface package specification.

   procedure Generate_Factory_Specification
    (Metamodel_Info : Metamodel_Information);
   --  Generates factory implementation package specification.

   procedure Generate_Factory_Implementation
    (Metamodel_Info : Metamodel_Information);
   --  Generates factory implementation package specification.

   -------------------------------------
   -- Generate_Factory_Implementation --
   -------------------------------------

   procedure Generate_Factory_Implementation is
      Position : Extent_Vectors.Cursor := Module_Info.Extents.First;

   begin
      while Extent_Vectors.Has_Element (Position) loop
         Generate_Factory_Specification
          (Metamodel_Infos.Element (Extent_Vectors.Element (Position)).all);
         Generate_Factory_Implementation
          (Metamodel_Infos.Element (Extent_Vectors.Element (Position)).all);
         Extent_Vectors.Next (Position);
      end loop;
   end Generate_Factory_Implementation;

   -------------------------------------
   -- Generate_Factory_Implementation --
   -------------------------------------

   procedure Generate_Factory_Implementation
    (Metamodel_Info : Metamodel_Information)
   is
      Package_Name : constant League.Strings.Universal_String
        := "AMF.Internals.Factories." & Metamodel_Info.Ada_Name & "_Factories";
      Type_Name    : constant League.Strings.Universal_String
        := Metamodel_Info.Ada_Name & "_Factory";
      Unit         : Generator.Units.Unit;
      Data_Types   : CMOF_Data_Type_Ordered_Sets.Set;

   begin
      --  Prepare ordered set of data types.

      declare
         Position : CMOF_Element_Sets.Cursor
           := Metamodel_Info.Data_Types.First;

      begin
         while CMOF_Element_Sets.Has_Element (Position) loop
            Data_Types.Insert
             (AMF.CMOF.Data_Types.CMOF_Data_Type_Access
               (CMOF_Element_Sets.Element (Position)));
            CMOF_Element_Sets.Next (Position);
         end loop;
      end;

      --  Generate factory implementation package specification.

      Unit.Add_Unit_Header (2012, 2012);

      Unit.Add_Line;
      Unit.Add_Line ("package body " & Package_Name & " is");

      --  Generate constants for string representation of names of enumeration
      --  literals.

      declare
         Position      : CMOF_Data_Type_Ordered_Sets.Cursor
           := Data_Types.First;
         The_Data_Type : AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
         Literals      :
           AMF.CMOF.Enumeration_Literals.Collections.Ordered_Set_Of_CMOF_Enumeration_Literal;
         Name          : League.Strings.Universal_String;

      begin
         while CMOF_Data_Type_Ordered_Sets.Has_Element (Position) loop
            The_Data_Type := CMOF_Data_Type_Ordered_Sets.Element (Position);

            if The_Data_Type.all
                 in AMF.CMOF.Enumerations.CMOF_Enumeration'Class
            then
               --  Data type is an enumeration type. Generate string constants
               --  for its enumeration literals.

               Unit.Add_Line;

               Literals :=
                 AMF.CMOF.Enumerations.CMOF_Enumeration'Class
                  (The_Data_Type.all).Get_Owned_Literal;

               for J in 1 .. Literals.Length loop
                  Name := Literals.Element (J).Get_Name.Value;

                  Unit.Add_Line
                   (+"   "
                       & To_Ada_Identifier (Name)
                       & "_Image : constant League.Strings.Universal_String");
                  Unit.Add_Line
                   ("     := League.Strings.To_Universal_String ("""
                      & Name
                      & """);");
               end loop;
            end if;

            CMOF_Data_Type_Ordered_Sets.Next (Position);
         end loop;
      end;

      --  Generate specifications for user defined conversion subprograms.

      declare
         Position      : CMOF_Data_Type_Ordered_Sets.Cursor
           := Data_Types.First;
         The_Data_Type : AMF.CMOF.Data_Types.CMOF_Data_Type_Access;

      begin
         while CMOF_Data_Type_Ordered_Sets.Has_Element (Position) loop
            The_Data_Type := CMOF_Data_Type_Ordered_Sets.Element (Position);

            if The_Data_Type.all
                 not in AMF.CMOF.Enumerations.CMOF_Enumeration'Class
            then
               --  Data type is not an enumeration, user must provide own
               --  implementation of String<->Holder conversion operation in
               --  separate compilation units.

               Unit.Add_Line;
               Unit.Add_Line
                (+"   function Convert_"
                    & To_Ada_Identifier (The_Data_Type.Get_Name.Value)
                    & "_To_String");
               Unit.Add_Line
                (+"    (Value : League.Holders.Holder)"
                    & " return League.Strings.Universal_String");
               Unit.Add_Line (+"       is separate;");
               Unit.Add_Line;
               Unit.Add_Line
                (+"   function Create_"
                    & To_Ada_Identifier (The_Data_Type.Get_Name.Value)
                    & "_From_String");
               Unit.Add_Line
                (+"    (Image : League.Strings.Universal_String)"
                    & " return League.Holders.Holder");
               Unit.Add_Line (+"       is separate;");
            end if;

            CMOF_Data_Type_Ordered_Sets.Next (Position);
         end loop;
      end;

      --  Generate implementation of Convert_To_String.

      Unit.Add_Header (+"Convert_To_String", 3);
      Unit.Add_Line;
      Unit.Add_Line (+"   overriding function Convert_To_String");
      Unit.Add_Line ("    (Self      : not null access " & Type_Name & ";");
      Unit.Add_Line
       (+"     Data_Type : not null access"
           & " AMF.CMOF.Data_Types.CMOF_Data_Type'Class;");
      Unit.Add
       (+"     Value     : League.Holders.Holder)"
           & " return League.Strings.Universal_String");

      if Data_Types.Is_Empty then
         Unit.Add_Line (+" is");
         Unit.Add_Line (+"   begin");
         Unit.Add_Line (+"      raise Program_Error;");
         Unit.Add_Line
          (+"      return League.Strings.Empty_Universal_String;");

      else
         Unit.Add_Line;
         Unit.Add_Line (+"   is");
         Unit.Add_Line (+"      pragma Unreferenced (Self);");
         Unit.Add_Line;
         Unit.Context.Add (+"AMF.Internals.Elements");
         Unit.Add_Line
          (+"      DT : constant AMF.Internals.CMOF_Element");
         Unit.Add_Line
          (+"        := AMF.Internals.Elements.Element_Base'Class"
              & " (Data_Type.all).Element;");
         Unit.Add_Line;
         Unit.Add_Line (+"   begin");

         declare
            Position      : CMOF_Data_Type_Ordered_Sets.Cursor
              := Data_Types.First;
            The_Data_Type : AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
            Literals      :
              AMF.CMOF.Enumeration_Literals.Collections.Ordered_Set_Of_CMOF_Enumeration_Literal;
            First         : Boolean := True;
            First_Literal : Boolean := True;

         begin
            while CMOF_Data_Type_Ordered_Sets.Has_Element (Position) loop
               The_Data_Type := CMOF_Data_Type_Ordered_Sets.Element (Position);

               if First then
                  First := False;
                  Unit.Add (+"      if");

               else
                  Unit.Add_Line;
                  Unit.Add (+"      elsif");
               end if;

               Unit.Context.Add
                (Element_Constant_Package_Name
                  (AMF.CMOF.Elements.CMOF_Element_Access (The_Data_Type)));
               Unit.Add_Line
                (" DT = "
                   & Element_Constant_Qualified_Name
                      (AMF.CMOF.Elements.CMOF_Element_Access (The_Data_Type))
                   & " then");

               if The_Data_Type.all
                    in AMF.CMOF.Enumerations.CMOF_Enumeration'Class
               then
                  Unit.Add_Line (+"         declare");
                  Unit.Add_Line
                   ("            Item : constant "
                      & Public_Ada_Type_Qualified_Name (The_Data_Type, Value));
                  Unit.Context.Add
                   ("AMF."
                      & Module_Info.Ada_Name
                      & ".Holders."
                      & Plural
                         (To_Ada_Identifier (The_Data_Type.Get_Name.Value)));
                  Unit.Add_Line
                   ("              := AMF."
                      & Module_Info.Ada_Name
                      & ".Holders."
                      & Plural
                         (To_Ada_Identifier (The_Data_Type.Get_Name.Value))
                      & ".Element (Value);");
                  Unit.Add_Line;
                  Unit.Add_Line (+"         begin");

                  Literals :=
                    AMF.CMOF.Enumerations.CMOF_Enumeration'Class
                     (The_Data_Type.all).Get_Owned_Literal;
                  Unit.Add_Line (+"            case Item is");
                  First_Literal := True;

                  for J in 1 .. Literals.Length loop
                     if First_Literal then
                        First_Literal := False;

                     else
                        Unit.Add_Line;
                     end if;

                     Unit.Add_Line
                      ("               when "
                         & Ada_Enumeration_Literal_Qualified_Name
                            (Literals.Element (J))
                         & " =>");
                     Unit.Add_Line
                      (+"                  return "
                          & To_Ada_Identifier
                             (Literals.Element (J).Get_Name.Value)
                          & "_Image;");
                  end loop;

                  Unit.Add_Line (+"            end case;");
                  Unit.Add_Line (+"         end;");

               else
                  --  Data type is not an enumeration, user must provide own
                  --  implementation of Convert_<Data_Type>_To_String operation
                  --  in separate compilation unit.

                  Unit.Add_Line
                   (+"         return Convert_"
                       & To_Ada_Identifier (The_Data_Type.Get_Name.Value)
                       & "_To_String (Value);");
               end if;

               CMOF_Data_Type_Ordered_Sets.Next (Position);
            end loop;

            Unit.Add_Line;
            Unit.Add_Line (+"      else");
            Unit.Add_Line (+"         raise Program_Error;");
            Unit.Add_Line (+"      end if;");
         end;
      end if;

      Unit.Add_Line (+"   end Convert_To_String;");

      --  Generate implementation of Create.

      Unit.Add_Header (+"Create", 3);
      Unit.Add_Line;
      Unit.Add_Line (+"   overriding function Create");
      Unit.Add_Line ("    (Self       : not null access " & Type_Name & ";");
      Unit.Add_Line
       (+"     Meta_Class : not null access"
           & " AMF.CMOF.Classes.CMOF_Class'Class)");
      Unit.Add
       (+"       return not null AMF.Elements.Element_Access");

      if Metamodel_Info.Non_Abstract_Classes.Is_Empty then
         Unit.Add_Line (+" is");
         Unit.Add_Line (+"   begin");
         Unit.Add_Line (+"      raise Program_Error;");
         Unit.Add_Line (+"      return null;");

      else
         Unit.Add_Line;
         Unit.Add_Line (+"   is");
         Unit.Add_Line (+"      pragma Unreferenced (Self);");
         Unit.Add_Line;
         Unit.Add_Line (+"      MC : constant AMF.Internals.CMOF_Element");
         Unit.Context.Add (+"AMF.Internals.Elements");
         Unit.Add_Line
          (+"        := AMF.Internals.Elements.Element_Base'Class"
              & " (Meta_Class.all).Element;");
         Unit.Add_Line;
         Unit.Add_Line (+"   begin");

         declare
            Position  : CMOF_Class_Ordered_Sets.Cursor
              := Metamodel_Info.Non_Abstract_Classes.First;
            The_Class : AMF.CMOF.Classes.CMOF_Class_Access;
            First     : Boolean := True;

         begin
            while CMOF_Class_Ordered_Sets.Has_Element (Position) loop
               The_Class := CMOF_Class_Ordered_Sets.Element (Position);

               if First then
                  First := False;
                  Unit.Add (+"      if");

               else
                  Unit.Add_Line;
                  Unit.Add (+"      elsif");
               end if;

               Unit.Context.Add
                (Element_Constant_Package_Name
                  (AMF.CMOF.Elements.CMOF_Element_Access (The_Class)));
               Unit.Add_Line
                (" MC = "
                   & Element_Constant_Qualified_Name
                      (AMF.CMOF.Elements.CMOF_Element_Access (The_Class))
                   & " then");
               Unit.Context.Add (+"AMF.Internals.Helpers");
               Unit.Add_Line (+"         return");
               Unit.Add_Line (+"           AMF.Internals.Helpers.To_Element");
               Unit.Context.Add
                ("AMF.Internals.Tables."
                   & Module_Info.Ada_Name
                   & "_Constructors");
               Unit.Add_Line
                ("            (AMF.Internals.Tables."
                   & Module_Info.Ada_Name
                   & "_Constructors.Create_"
                   & Owning_Metamodel_Ada_Name (The_Class)
                   & "_"
                   & To_Ada_Identifier (The_Class.Get_Name.Value)
                   & ");");

               CMOF_Class_Ordered_Sets.Next (Position);
            end loop;

            Unit.Add_Line;
            Unit.Add_Line (+"      else");
            Unit.Add_Line (+"         raise Program_Error;");
            Unit.Add_Line (+"      end if;");
         end;
      end if;

      Unit.Add_Line (+"   end Create;");

      --  Generate implementation of Create_From_String.

      Unit.Add_Header (+"Create_From_String", 3);
      Unit.Add_Line;
      Unit.Add_Line (+"   overriding function Create_From_String");
      Unit.Add_Line ("    (Self      : not null access " & Type_Name & ";");
      Unit.Add_Line
       (+"     Data_Type : not null access"
           & " AMF.CMOF.Data_Types.CMOF_Data_Type'Class;");
      Unit.Add
       (+"     Image     : League.Strings.Universal_String)"
           & " return League.Holders.Holder");

      if Data_Types.Is_Empty then
         Unit.Add_Line (+" is");
         Unit.Add_Line (+"   begin");
         Unit.Add_Line (+"      raise Program_Error;");
         Unit.Add_Line (+"      return League.Holders.Empty_Holder;");

      else
         Unit.Add_Line;
         Unit.Add_Line (+"   is");
         Unit.Add_Line (+"      pragma Unreferenced (Self);");
         Unit.Add_Line;
         Unit.Add_Line (+"      use type League.Strings.Universal_String;");
         Unit.Add_Line;
         Unit.Context.Add (+"AMF.Internals.Elements");
         Unit.Add_Line
          (+"      DT : constant AMF.Internals.CMOF_Element");
         Unit.Add_Line
          (+"        := AMF.Internals.Elements.Element_Base'Class"
              & " (Data_Type.all).Element;");
         Unit.Add_Line;
         Unit.Add_Line (+"   begin");

         declare
            Position      : CMOF_Data_Type_Ordered_Sets.Cursor
              := Data_Types.First;
            The_Data_Type : AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
            Literals      :
              AMF.CMOF.Enumeration_Literals.Collections.Ordered_Set_Of_CMOF_Enumeration_Literal;
            First         : Boolean := True;
            First_Literal : Boolean := True;

         begin
            while CMOF_Data_Type_Ordered_Sets.Has_Element (Position) loop
               The_Data_Type := CMOF_Data_Type_Ordered_Sets.Element (Position);

               if First then
                  First := False;
                  Unit.Add (+"      if");

               else
                  Unit.Add_Line;
                  Unit.Add (+"      elsif");
               end if;

               Unit.Context.Add
                (Element_Constant_Package_Name
                  (AMF.CMOF.Elements.CMOF_Element_Access (The_Data_Type)));
               Unit.Add_Line
                (" DT = "
                   & Element_Constant_Qualified_Name
                      (AMF.CMOF.Elements.CMOF_Element_Access (The_Data_Type))
                   & " then");

               if The_Data_Type.all
                    in AMF.CMOF.Enumerations.CMOF_Enumeration'Class
               then
                  Literals :=
                    AMF.CMOF.Enumerations.CMOF_Enumeration'Class
                     (The_Data_Type.all).Get_Owned_Literal;
                  First_Literal := True;

                  for J in 1 .. Literals.Length loop
                     if First_Literal then
                        First_Literal := False;
                        Unit.Add (+"         if");

                     else
                        Unit.Add_Line;
                        Unit.Add (+"         elsif");
                     end if;

                     Unit.Add_Line
                      (+" Image = "
                          & To_Ada_Identifier
                             (Literals.Element (J).Get_Name.Value)
                          & "_Image then");
                     Unit.Context.Add
                      ("AMF."
                         & Module_Info.Ada_Name
                         & ".Holders."
                         & Plural
                            (To_Ada_Identifier
                              (The_Data_Type.Get_Name.Value)));
                     Unit.Add_Line
                      (+"            return");
                     Unit.Add_Line
                      ("              AMF."
                         & Module_Info.Ada_Name
                         & ".Holders."
                         & Plural
                            (To_Ada_Identifier (The_Data_Type.Get_Name.Value))
                         & ".To_Holder");
                     Unit.Add_Line
                      ("               ("
                         & Ada_Enumeration_Literal_Qualified_Name
                            (Literals.Element (J))
                         & ");");
                  end loop;

                  Unit.Add_Line;
                  Unit.Add_Line (+"         else");
                  Unit.Add_Line (+"            raise Constraint_Error;");
                  Unit.Add_Line (+"         end if;");

               else
                  --  Data type is not an enumeration, user must provide own
                  --  implementation of Create_<Data_Type>_From_String
                  --  operation in separate compilation unit.

                  Unit.Add_Line
                   (+"         return Create_"
                       & To_Ada_Identifier (The_Data_Type.Get_Name.Value)
                       & "_From_String (Image);");
               end if;

               CMOF_Data_Type_Ordered_Sets.Next (Position);
            end loop;

            Unit.Add_Line;
            Unit.Add_Line (+"      else");
            Unit.Add_Line (+"         raise Program_Error;");
            Unit.Add_Line (+"      end if;");
         end;
      end if;

      Unit.Add_Line (+"   end Create_From_String;");

      --  Generate implementation of Get_Package.

      Unit.Add_Header (+"Get_Package", 3);
      Unit.Add_Line;
      Unit.Add_Line (+"   overriding function Get_Package");
      Unit.Add_Line
       ("    (Self : not null access constant " & Type_Name & ")");
      Unit.Add_Line
       (+"       return not null AMF.CMOF.Packages.CMOF_Package_Access");
      Unit.Add_Line (+"   is");
      Unit.Add_Line (+"      pragma Unreferenced (Self);");
      Unit.Add_Line;
      Unit.Add_Line (+"   begin");
      Unit.Add_Line (+"      return");
      Unit.Add_Line (+"        AMF.CMOF.Packages.CMOF_Package_Access");
      Unit.Context.Add (+"AMF.Internals.Helpers");
      Unit.Context.Add
       (Element_Constant_Package_Name
         (AMF.CMOF.Elements.CMOF_Element_Access
           (Metamodel_Info.Root_Package)));
      Unit.Add_Line
       (+"         (AMF.Internals.Helpers.To_Element");
      Unit.Add_Line
       (+"           ("
           & Element_Constant_Qualified_Name
              (AMF.CMOF.Elements.CMOF_Element_Access
                (Metamodel_Info.Root_Package))
           & "));");
      Unit.Add_Line (+"   end Get_Package;");

      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ';');

      Unit.Context.Instantiate (Package_Name);
      Unit.Put;
   end Generate_Factory_Implementation;

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
      Unit         : Generator.Units.Unit;

   begin
      --  Generate factory interface package specification.

      Unit.Add_Unit_Header (2012, 2012);

      Unit.Add_Line;
      Unit.Add_Line ("package " & Package_Name & " is");
      Unit.Add_Line;
      Unit.Add_Line (+"   pragma Preelaborate;");
      Unit.Add_Line;
      Unit.Add_Line ("   type " & Type_Name & " is limited interface;");

      declare
         Position : CMOF_Class_Ordered_Sets.Cursor
           := Metamodel_Info.Non_Abstract_Classes.First;

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

   ------------------------------------
   -- Generate_Factory_Specification --
   ------------------------------------

   procedure Generate_Factory_Specification
    (Metamodel_Info : Metamodel_Information)
   is
      Package_Name : constant League.Strings.Universal_String
        := "AMF.Internals.Factories." & Metamodel_Info.Ada_Name & "_Factories";
      Type_Name    : constant League.Strings.Universal_String
        := Metamodel_Info.Ada_Name & "_Factory";
      Unit         : Generator.Units.Unit;

   begin
      --  Generate factory implementation package specification.

      Unit.Add_Unit_Header (2012, 2012);

      Unit.Add_Line;
      Unit.Add_Line ("package " & Package_Name & " is");
--      Unit.Add_Line;
--      Unit.Add_Line (+"   pragma Preelaborate;");
      Unit.Add_Line;
      Unit.Add_Line ("   type " & Type_Name & " is");
      Unit.Add_Line
       (+"     limited new AMF.Internals.Factories.Abstract_Metamodel_Factory"
           & " with null record;");

      --  Common subprograms of factory.

      Unit.Add_Line;
      Unit.Add_Line (+"   overriding function Convert_To_String");
      Unit.Add_Line ("    (Self      : not null access " & Type_Name & ";");
      Unit.Add_Line
       (+"     Data_Type : not null access"
           & " AMF.CMOF.Data_Types.CMOF_Data_Type'Class;");
      Unit.Add_Line
       (+"     Value     : League.Holders.Holder)"
           & " return League.Strings.Universal_String;");
      Unit.Add_Line;
      Unit.Add_Line (+"   overriding function Create");
      Unit.Add_Line ("    (Self       : not null access " & Type_Name & ";");
      Unit.Add_Line
       (+"     Meta_Class : not null access"
           & " AMF.CMOF.Classes.CMOF_Class'Class)");
      Unit.Add_Line
       (+"       return not null AMF.Elements.Element_Access;");
      Unit.Add_Line;
      Unit.Add_Line (+"   overriding function Create_From_String");
      Unit.Add_Line ("    (Self      : not null access " & Type_Name & ";");
      Unit.Add_Line
       (+"     Data_Type : not null access"
           & " AMF.CMOF.Data_Types.CMOF_Data_Type'Class;");
      Unit.Add_Line
       (+"     Image     : League.Strings.Universal_String)"
           & " return League.Holders.Holder;");
      Unit.Add_Line;
      Unit.Add_Line (+"   overriding function Get_Package");
      Unit.Add_Line
       ("    (Self : not null access constant " & Type_Name & ")");
      Unit.Add_Line
       (+"       return not null AMF.CMOF.Packages.CMOF_Package_Access;");

      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ';');

      Unit.Context.Instantiate (Package_Name);
      Unit.Put;
   end Generate_Factory_Specification;

end Generator.Factories;
