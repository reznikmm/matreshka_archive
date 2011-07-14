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
--  Generates public API of the model.
with Ada.Command_Line;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Wide_Wide_Text_IO;

with AMF.CMOF.Classes.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Comments.Collections;
with AMF.CMOF.Elements;
with AMF.CMOF.Operations.Collections;
with AMF.CMOF.Parameters.Collections;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;
with AMF.Elements.Collections;
with AMF.Facility;
with AMF.URI_Stores;
with League.Application;
with League.Characters;
with League.String_Vectors;
with League.Strings;
with XMI.Reader;

with Generator.Contexts;
with Generator.Names;
with Generator.Type_Mapping;
with Generator.Wide_Wide_Text_IO;

procedure Gen_API is

   use Ada.Strings.Wide_Wide_Fixed;
   use Ada.Wide_Wide_Text_IO;
   use AMF.CMOF;
   use Generator;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;
   use League.Strings;
   use type AMF.CMOF.Types.CMOF_Type_Access;
   use type AMF.Optional_String;

   function Ada_API_Package_Name
    (Element : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return League.Strings.Universal_String;
   --  Returns name of interface package.

   function Ada_API_Collections_Package_Name
    (Element : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return League.Strings.Universal_String;
   --  Returns name of collections package.

   function Ada_API_Type_Name
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return League.Strings.Universal_String;
   --  Returns name of the type.

   procedure Generate_Class
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);
   --  Generates specification of interface package.

   procedure Generate_Collections
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);
   --  Generates collections package.

   procedure Generate_Attribute
    (Attribute       : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Class_Type_Name : League.Strings.Universal_String;
     Proxy           : Boolean);
   --  Generates getter/setter specifications for attribute.

   procedure Generate_Operation
    (Operation       : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Class_Type_Name : League.Strings.Universal_String;
     Proxy           : Boolean);
   --  Generate subprogram for the operation.

   procedure Generate_With_Clause
    (Unit       : League.Strings.Universal_String;
     Is_Limited : Boolean;
     Is_Private : Boolean);

   function Split_Text
    (Text : Universal_String; Width : Positive)
       return League.String_Vectors.Universal_String_Vector;

   Model_Name : League.Strings.Universal_String
     := League.Application.Arguments.Element (2);

   type Subprogram_Kinds is (Public, Internal, Proxy);

   procedure Compute_Ada_Context_For_Attribute
    (Context   : in out Generator.Contexts.Context;
     Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Mode      : Subprogram_Kinds);
   --  Computes context clauses for getter/setter of the specified
   --  attribute.

   procedure Compute_Ada_Context_For_Parameter
    (Context   : in out Generator.Contexts.Context;
     Parameter : not null AMF.CMOF.Parameters.CMOF_Parameter_Access;
     Mode      : Subprogram_Kinds);
   --  Computes context clauses for the specified parameter.

   function Is_Ada_Distinguishable
    (Operation_1 : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Operation_2 : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Mode        : Subprogram_Kinds) return Boolean;
   --  Returns True when specified operations is distingushable in Ada.

   function Is_Ada_Distinguishable
    (Attribute_1 : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Attribute_2 : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Mode        : Subprogram_Kinds) return Boolean;
   --  Returns True when getter/setter of specified attributes is
   --  distingushable in Ada.

   --------------------------------------
   -- Ada_API_Collections_Package_Name --
   --------------------------------------

   function Ada_API_Collections_Package_Name
    (Element : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return League.Strings.Universal_String is
   begin
      return
        "AMF."
          & Model_Name
          & "."
          & Plural (To_Ada_Identifier (Element.Get_Name.Value))
          & ".Collections";
   end Ada_API_Collections_Package_Name;

   --------------------------
   -- Ada_API_Package_Name --
   --------------------------

   function Ada_API_Package_Name
    (Element : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return League.Strings.Universal_String is
   begin
      return
        "AMF."
          & Model_Name
          & "."
          & Plural (To_Ada_Identifier (Element.Get_Name.Value));
   end Ada_API_Package_Name;

   -----------------------
   -- Ada_API_Type_Name --
   -----------------------

   function Ada_API_Type_Name
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return League.Strings.Universal_String is
   begin
      return
        Model_Name & "_" & To_Ada_Identifier (Element.Get_Name.Value);
   end Ada_API_Type_Name;

   ---------------------------------------
   -- Compute_Ada_Context_For_Attribute --
   ---------------------------------------

   procedure Compute_Ada_Context_For_Attribute
    (Context   : in out Generator.Contexts.Context;
     Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Mode      : Subprogram_Kinds)
   is
      Attribute_Type : constant AMF.CMOF.Types.CMOF_Type_Access
        := Attribute.Get_Type;

   begin
      case Mode is
         when Public | Proxy =>
            --  In Public mode for classes and collections of classes limited
            --  mode is used. In all other cases ordinary with clause is used.

            Context.Add
             (Generator.Type_Mapping.Public_Ada_Package_Name
               (Attribute_Type, Representation (Attribute)),
              Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class
                and Mode = Public);

         when Internal =>
            raise Program_Error;
--            Context.Add
--             (Generator.Type_Mapping.Internal_Ada_Package_Name
--               (Attribute_Type, Representation (Attribute)));
      end case;
   end Compute_Ada_Context_For_Attribute;

   ---------------------------------------
   -- Compute_Ada_Context_For_Parameter --
   ---------------------------------------

   procedure Compute_Ada_Context_For_Parameter
    (Context   : in out Generator.Contexts.Context;
     Parameter : not null AMF.CMOF.Parameters.CMOF_Parameter_Access;
     Mode      : Subprogram_Kinds)
   is
      Parameter_Type : constant AMF.CMOF.Types.CMOF_Type_Access
        := Parameter.Get_Type;

   begin
      case Mode is
         when Public | Proxy =>
            --  In Public mode for classes and collections of classes limited
            --  mode is used. In all other cases ordinary with clause is used.

            Context.Add
             (Generator.Type_Mapping.Public_Ada_Package_Name
               (Parameter_Type, Representation (Parameter)),
              Parameter_Type.all in AMF.CMOF.Classes.CMOF_Class'Class
                and Mode = Public);

         when Internal =>
            --  Representation of parameters for internals subprograms is
            --  undefined.

            raise Program_Error;
      end case;
   end Compute_Ada_Context_For_Parameter;

   ------------------------
   -- Generate_Attribute --
   ------------------------

   procedure Generate_Attribute
    (Attribute       : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Class_Type_Name : League.Strings.Universal_String;
     Proxy           : Boolean)
   is
      Redefines       : constant
        AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
          := Attribute.Get_Redefined_Property;
      Attribute_Name  : constant Wide_Wide_String
        := To_Ada_Identifier (Attribute.Get_Name.Value);
      Attribute_Type  : AMF.CMOF.Types.CMOF_Type_Access
        := Attribute.Get_Type;
      Ada_Overriding  : Boolean := False;
      Type_1          : AMF.CMOF.Types.CMOF_Type_Access;

      -------------------------
      -- Type_Qualified_Name --
      -------------------------

      function Type_Qualified_Name return Wide_Wide_String is
      begin
         return
           Type_Mapping.Public_Ada_Type_Qualified_Name
            (Attribute.Get_Type,
             Representation (Attribute)).To_Wide_Wide_String;
      end Type_Qualified_Name;

   begin
      for J in 1 .. Redefines.Length loop
         if Redefines.Element (J).Get_Name = Attribute.Get_Name then
            Type_1 := Redefines.Element (J).Get_Type;

            if Type_1 = Attribute_Type
              and then Redefines.Element (J).Lower_Bound
                         = Attribute.Lower_Bound
            then
               Ada_Overriding := True;
            end if;

            exit;
         end if;
      end loop;

      New_Line;

      if Ada_Overriding or Proxy then
         Put_Line ("   overriding function Get_" & Attribute_Name);

      else
         Put_Line ("   not overriding function Get_" & Attribute_Name);
      end if;

      Put_Line
       ("    (Self : not null access constant " & Class_Type_Name & ")");
      Put ("       return " & Type_Qualified_Name);
     
      if Proxy then
         Put_Line (";");
         
      else
         Put_Line (" is abstract;");
      end if;

      --  Generate comment.

      if not Proxy then
         declare
            Owned_Comments : constant
              AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment
                := Attribute.Get_Owned_Comment;
            Lines          : League.String_Vectors.Universal_String_Vector;

         begin
            for J in 1 .. Owned_Comments.Length loop
               Lines :=
                 Split_Text (Owned_Comments.Element (J).Get_Body.Value, 71);

               for J in 1 .. Lines.Length loop
                  Put_Line ("   --  " & Lines.Element (J).To_Wide_Wide_String);
               end loop;
            end loop;
         end;
      end if;

      --  Generate setters for attributes which can be modified by application
      --  and which is not a collections (because changes of collection, which
      --  is returned by getter automatically applied to attribute's value.

      if Attribute.Get_Is_Read_Only or Attribute.Is_Multivalued then
         return;
      end if;

      New_Line;

      if Ada_Overriding or Proxy then
         Put_Line ("   overriding procedure Set_" & Attribute_Name);

      else
         Put_Line ("   not overriding procedure Set_" & Attribute_Name);
      end if;

      Put_Line
       ("    (Self : not null access " & Class_Type_Name & ";");
      Put ("     To   : " & Type_Qualified_Name & ")");

      if Proxy then
         Put_Line (";");

      else
         Put_Line (" is abstract;");
      end if;
   end Generate_Attribute;

   --------------------
   -- Generate_Class --
   --------------------

   procedure Generate_Class
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
   is
      Super_Classes : constant AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
        := Class.Get_Super_Class;
      Attributes    : constant
        AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
          := Class.Get_Owned_Attribute;
      Operations    : constant
        AMF.CMOF.Operations.Collections.Ordered_Set_Of_CMOF_Operation
          := Class.Get_Owned_Operation;
      Context       : Contexts.Context;

      procedure Compute_With_For_Super_Classes;

      procedure Compute_With_For_Operations;

      ---------------------------------
      -- Compute_With_For_Operations --
      ---------------------------------

      procedure Compute_With_For_Operations is
         Parameters :
           AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter;

      begin
         for J in 1 .. Operations.Length loop
            Parameters := Operations.Element (J).Get_Owned_Parameter;

            for J in 1 .. Parameters.Length loop
               Compute_Ada_Context_For_Parameter
                (Context, Parameters.Element (J), Public);
            end loop;
         end loop;
      end Compute_With_For_Operations;

      ------------------------------------
      -- Compute_With_For_Super_Classes --
      ------------------------------------

      procedure Compute_With_For_Super_Classes is
         Name : League.Strings.Universal_String;

      begin
         for J in 1 .. Super_Classes.Length loop
            Name := Ada_API_Package_Name (Super_Classes.Element (J));
            Context.Add (Name);
         end loop;
      end Compute_With_For_Super_Classes;

      Package_Name  : constant Wide_Wide_String
        := Ada_API_Package_Name (Class).To_Wide_Wide_String;
      Type_Name     : constant Wide_Wide_String
        := Ada_API_Type_Name (Class).To_Wide_Wide_String;

   begin
      Compute_With_For_Super_Classes;

      for J in 1 .. Attributes.Length loop
         Compute_Ada_Context_For_Attribute
          (Context, Attributes.Element (J), Public);
      end loop;

      Compute_With_For_Operations;

      Put_Header (Year_2010 => False);

      --  Generate comment.

      declare
         Owned_Comments : constant
           AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment
             := Class.Get_Owned_Comment;
         Lines          : League.String_Vectors.Universal_String_Vector;

      begin
         for J in 1 .. Owned_Comments.Length loop
            Lines :=
              Split_Text (Owned_Comments.Element (J).Get_Body.Value, 74);

            for J in 1 .. Lines.Length loop
               Put_Line ("--  " & Lines.Element (J).To_Wide_Wide_String);
            end loop;
         end loop;

         Put_Line (78 * Wide_Wide_String'("-"));
      end;

      Context.Iterate (Generate_With_Clause'Access);

      New_Line;
      Put_Line ("package " & Package_Name & " is");
      New_Line;
      Put_Line ("   pragma Preelaborate;");
      New_Line;

      --  Generate interface type.

      Put ("   type " & Type_Name & " is limited interface");

      for J in 1 .. Super_Classes.Length loop
         New_Line;
         Put
          ("     and "
             & Ada_API_Package_Name
                (Super_Classes.Element (J)).To_Wide_Wide_String
             & "."
             & Ada_API_Type_Name
                (Super_Classes.Element (J)).To_Wide_Wide_String);
      end loop;

      Put_Line (";");

      --  Generate access type.

      New_Line;
      Put_Line ("   type " & Type_Name & "_Access is");
      Put_Line ("     access all " & Type_Name & "'Class;");
      Put_Line ("   for " & Type_Name & "_Access'Storage_Size use 0;");

      --  Generate setters and getters.

      for J in 1 .. Attributes.Length loop
         Generate_Attribute
          (Attributes.Element (J), Ada_API_Type_Name (Class), False);
      end loop;

      --  Generate operations.

      for J in 1 .. Operations.Length loop
         Generate_Operation
          (Operations.Element (J),
           Ada_API_Type_Name (Operations.Element (J).Get_Class),
           False);
      end loop;

      New_Line;
      Put_Line ("end " & Package_Name & ";");
   end Generate_Class;

   --------------------------
   -- Generate_Collections --
   --------------------------

   procedure Generate_Collections
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
   is
      Package_Name  : constant Wide_Wide_String
        := Ada_API_Package_Name (Class).To_Wide_Wide_String;
      Type_Name     : constant Wide_Wide_String
        := Ada_API_Type_Name (Class).To_Wide_Wide_String;

   begin
      Put_Header (Year_2010 => False);

      Put_Line ("with AMF.Generic_Collections;");
      New_Line;
      Put_Line ("package " & Package_Name & ".Collections is");
      New_Line;
      Put_Line ("   pragma Preelaborate;");
      New_Line;
      Put_Line ("   package " & Type_Name & "_Collections is");
      Put_Line ("     new AMF.Generic_Collections");
      Put_Line ("          (" & Type_Name & ",");
      Put_Line ("           " & Type_Name & "_Access);");
      New_Line;
      Put_Line ("   type Set_Of_" & Type_Name & " is");
      Put_Line
       ("     new " & Type_Name & "_Collections.Set with null record;");
      New_Line;
      Put_Line ("   type Ordered_Set_Of_" & Type_Name & " is");
      Put_Line
       ("     new " & Type_Name & "_Collections.Ordered_Set with null record;");
      New_Line;
      Put_Line ("   type Bag_Of_" & Type_Name & " is");
      Put_Line
       ("     new " & Type_Name & "_Collections.Bag with null record;");
      New_Line;
      Put_Line ("   type Sequence_Of_" & Type_Name & " is");
      Put_Line
       ("     new " & Type_Name & "_Collections.Sequence with null record;");
      New_Line;
      Put_Line ("end " & Package_Name & ".Collections;");
   end Generate_Collections;

   ------------------------
   -- Generate_Operation --
   ------------------------

   procedure Generate_Operation
    (Operation       : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Class_Type_Name : League.Strings.Universal_String;
     Proxy           : Boolean)
   is
      use type AMF.CMOF.Parameters.CMOF_Parameter_Access;

      function Type_Qualified_Name
       (Parameter : not null AMF.CMOF.Parameters.CMOF_Parameter_Access)
          return Wide_Wide_String;
      --  Returns full qualified name of the Ada type.

      function Is_Overriding return Boolean;
      --  Returns True when subprogram is overriding.

      -------------------
      -- Is_Overriding --
      -------------------

      function Is_Overriding return Boolean is
         Redefines    :
           AMF.CMOF.Operations.Collections.Set_Of_CMOF_Operation
             := Operation.Get_Redefined_Operation;
         Parameters   :
           AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter
             := Operation.Get_Owned_Parameter;
         Parameters_2 :
           AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter;
         Result       : Boolean := False;
         Type_1       : AMF.CMOF.Types.CMOF_Type_Access;
         Type_2       : AMF.CMOF.Types.CMOF_Type_Access;

      begin
         for J in 1 .. Redefines.Length loop
            Parameters_2 := Redefines.Element (J).Get_Owned_Parameter;

            if Parameters.Length = Parameters_2.Length then
               Result := True;

               for J in 1 .. Parameters.Length loop
                  Type_1 := Parameters.Element (J).Get_Type;
                  Type_2 := Parameters_2.Element (J).Get_Type;

                  if Type_1 /= Type_2
                    or Parameters.Element (J).Lower_Bound
                         /= Parameters_2.Element (J).Lower_Bound
                  then
                     Result := False;

                     exit;
                  end if;
               end loop;

               if Result then
                  return Result;
               end if;
            end if;
         end loop;

         return Result;
      end Is_Overriding;

      -------------------------
      -- Type_Qualified_Name --
      -------------------------

      function Type_Qualified_Name
       (Parameter : not null AMF.CMOF.Parameters.CMOF_Parameter_Access)
          return Wide_Wide_String is
      begin
         return
           Type_Mapping.Public_Ada_Type_Qualified_Name
            (Parameter.Get_Type,
             Representation (Parameter)).To_Wide_Wide_String;
      end Type_Qualified_Name;

      Parameters : constant
        AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter
          := Operation.Get_Owned_Parameter;
      Returns    : AMF.CMOF.Parameters.CMOF_Parameter_Access;
      Name       : League.Strings.Universal_String;

   begin
      --  Look for 'return' parameter.

      for J in 1 .. Parameters.Length loop
         if Parameters.Element (J).Get_Direction = Return_Parameter then
            Returns := Parameters.Element (J);
         end if;
      end loop;

      --  Compute name of the operation, XXX to rename 'type' operation.

      Name := Operation.Get_Name.Value;

      if Name = League.Strings.To_Universal_String ("type") then
         Name := League.Strings.To_Universal_String ("Types");

      elsif Name = League.Strings.To_Universal_String ("end") then
         --  UML:ConnectableElement:end

         Name := League.Strings.To_Universal_String ("Ends");

      elsif Name = League.Strings.To_Universal_String ("is") then
         --  UML:MultiplicityElement:is

         Name := League.Strings.To_Universal_String ("Iss");

      end if;

      New_Line;

      if Is_Overriding or Proxy then
         Put ("   overriding ");

      else
         Put ("   not overriding ");
      end if;

      if Returns /= null then
         Put_Line ("function " & To_Ada_Identifier (Name));

      else
         Put_Line ("procedure " & To_Ada_Identifier (Name));
      end if;

      if Operation.Get_Is_Query then
         Put ("    (Self : not null access constant " & Class_Type_Name);

      else
         Put ("    (Self : not null access " & Class_Type_Name);
      end if;

      for J in 1 .. Parameters.Length loop
         if Parameters.Element (J).Get_Direction /= Return_Parameter then
            if Parameters.Element (J).Get_Direction /= In_Parameter then
               raise Program_Error;
            end if;

            Put_Line (";");
            Put
             ("     "
                & To_Ada_Identifier (Parameters.Element (J).Get_Name.Value)
                & " : "
                & Type_Qualified_Name (Parameters.Element (J)));
         end if;
      end loop;

      Put_Line (")");

      if Returns /= null then
         Put ("       return " & Type_Qualified_Name (Returns));

         if Proxy then
            Put_Line (";");

         else
            Put_Line (" is abstract;");
         end if;
      end if;

      --  Generate comment.

      if not Proxy then
         declare
            Owned_Comments : constant
              AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment
                := Operation.Get_Owned_Comment;
            Lines          : League.String_Vectors.Universal_String_Vector;

         begin
            for J in 1 .. Owned_Comments.Length loop
               Lines :=
                 Split_Text (Owned_Comments.Element (J).Get_Body.Value, 71);

               for J in 1 .. Lines.Length loop
                  Put_Line ("   --  " & Lines.Element (J).To_Wide_Wide_String);
               end loop;
            end loop;
         end;
      end if;
   end Generate_Operation;

   --------------------
   -- Generate_Proxy --
   --------------------

   procedure Generate_Proxy
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
   is
      Package_Name         : constant League.Strings.Universal_String
        := "AMF.Internals."
             & Metamodel_Name
             & "_"
             & Plural (To_Ada_Identifier (Class.Get_Name.Value));
      Type_Name            : constant League.Strings.Universal_String
        := Metamodel_Name
             & "_"
             & To_Ada_Identifier (Class.Get_Name.Value)
             & "_Proxy";
      Context              : Contexts.Context;
      Generated_Attributes : CMOF_Element_Sets.Set;
      Generated_Operations : CMOF_Element_Sets.Set;

      procedure Generate_Attributes
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);

      procedure Generate_Operations
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);

      ---------------------------------
      -- Compute_With_For_Attributes --
      ---------------------------------

      procedure Compute_With_For_Attributes
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
      is
         Super      : constant AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
           := Class.Get_Super_Class;
         Attributes : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;

      begin
         for J in 1 .. Attributes.Length loop
            Compute_Ada_Context_For_Attribute
             (Context, Attributes.Element (J), Proxy);
         end loop;

         for J in 1 .. Super.Length loop
            Compute_With_For_Attributes (Super.Element (J));
         end loop;
      end Compute_With_For_Attributes;

      ---------------------------------
      -- Compute_With_For_Operations --
      ---------------------------------

      procedure Compute_With_For_Operations
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
      is
         Super      : constant AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
           := Class.Get_Super_Class;
         Operations : constant
           AMF.CMOF.Operations.Collections.Ordered_Set_Of_CMOF_Operation
             := Class.Get_Owned_Operation;
         Parameters :
           AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter;

      begin
         for J in 1 .. Operations.Length loop
            Parameters := Operations.Element (J).Get_Owned_Parameter;

            for J in 1 .. Parameters.Length loop
               Compute_Ada_Context_For_Parameter
                (Context, Parameters.Element (J), Proxy);
            end loop;
         end loop;

         for J in 1 .. Super.Length loop
            Compute_With_For_Operations (Super.Element (J));
         end loop;
      end Compute_With_For_Operations;

      -------------------------
      -- Generate_Attributes --
      -------------------------

      procedure Generate_Attributes
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
      is
         Super      : constant AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
           := Class.Get_Super_Class;
         Attributes : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Attribute  : AMF.CMOF.Properties.CMOF_Property_Access;
         Redefines  : AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;
         T1         : AMF.CMOF.Types.CMOF_Type_Access;
         T2         : AMF.CMOF.Types.CMOF_Type_Access;

         function Is_Generated return Boolean;

         ------------------
         -- Is_Generated --
         ------------------

         function Is_Generated return Boolean is

            procedure Check (Position : CMOF_Element_Sets.Cursor);

            Result : Boolean := False;

            -----------
            -- Check --
            -----------

            procedure Check (Position : CMOF_Element_Sets.Cursor) is
               Attribute_2 : constant AMF.CMOF.Properties.CMOF_Property_Access
                 := AMF.CMOF.Properties.CMOF_Property_Access
                     (CMOF_Element_Sets.Element (Position));

            begin
               if not Is_Ada_Distinguishable
                       (Attribute, Attribute_2, Proxy)
               then
                  Result := True;
               end if;
            end Check;

         begin
            Generated_Attributes.Iterate (Check'Access);

            return Result;
         end Is_Generated;

      begin
         for J in 1 .. Attributes.Length loop
            Attribute := Attributes.Element (J);
            Redefines := Attribute.Get_Redefined_Property;

            if not Generated_Attributes.Contains
                    (AMF.CMOF.Elements.CMOF_Element_Access (Attribute))
            then
               if not Is_Generated then
                  Generate_Attribute (Attribute, Type_Name, True);
               end if;

               Generated_Attributes.Insert
                (AMF.CMOF.Elements.CMOF_Element_Access (Attribute));

--               for J in 1 .. Redefines.Length loop
--                  T1 := Attribute.Get_Type;
--                  T2 := Redefines.Element (J).Get_Type;
--
--                  if Attribute.Get_Name = Redefines.Element (J).Get_Name
--                    and then T1 = T2
--                    and then Representation (Attribute)
--                               = Representation (Redefines.Element (J))
--                  then
--                     Generated_Attributes.Include
--                      (AMF.CMOF.Elements.CMOF_Element_Access
--                        (Redefines.Element (J)));
--                  end if;
--               end loop;
            end if;
         end loop;

         for J in 1 .. Super.Length loop
            Generate_Attributes (Super.Element (J));
         end loop;
      end Generate_Attributes;

      -------------------------
      -- Generate_Operations --
      -------------------------

      procedure Generate_Operations
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
      is
         Super      : constant AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
           := Class.Get_Super_Class;
         Operations : constant
           AMF.CMOF.Operations.Collections.Ordered_Set_Of_CMOF_Operation
             := Class.Get_Owned_Operation;
         Operation  : AMF.CMOF.Operations.CMOF_Operation_Access;

         function Is_Generated return Boolean;

         ------------------
         -- Is_Generated --
         ------------------

         function Is_Generated return Boolean is

            procedure Check (Position : CMOF_Element_Sets.Cursor);

            Result : Boolean := False;

            -----------
            -- Check --
            -----------

            procedure Check (Position : CMOF_Element_Sets.Cursor) is
               Operation_2 : constant AMF.CMOF.Operations.CMOF_Operation_Access
                 := AMF.CMOF.Operations.CMOF_Operation_Access
                     (CMOF_Element_Sets.Element (Position));

            begin
               if not Is_Ada_Distinguishable
                       (Operation, Operation_2, Proxy)
               then
                  Result := True;
               end if;
            end Check;

         begin
            Generated_Operations.Iterate (Check'Access);

            return Result;
         end Is_Generated;

      begin
         for J in 1 .. Operations.Length loop
            Operation := Operations.Element (J);

            if not Generated_Operations.Contains
                    (AMF.CMOF.Elements.CMOF_Element_Access (Operation))
            then
               if not Is_Generated then
                  Generate_Operation (Operation, Type_Name, True);
               end if;

               Generated_Operations.Insert
                (AMF.CMOF.Elements.CMOF_Element_Access (Operation));
            end if;
         end loop;

         for J in 1 .. Super.Length loop
            Generate_Operations (Super.Element (J));
         end loop;
      end Generate_Operations;

   begin
      if Class.Get_Is_Abstract then
         --  Stubs are generated for non-abstract classes only.

         return;
      end if;

      --  Compute with clauses

      Context.Add ("AMF.Internals." & Metamodel_Name & "_Elements");
      Context.Add
       ("AMF."
          & Metamodel_Name
          & "."
          & Plural (To_Ada_Identifier (Class.Get_Name.Value)));

      Compute_With_For_Attributes (Class);
      Compute_With_For_Operations (Class);

      --  Generate package specification

      Put_Header (Year_2010 => False);
      Context.Iterate (Generate_With_Clause'Access);
      New_Line;
      Put_Line ("package " & Package_Name & " is");
      New_Line;
      Put_Line ("   type " & Type_Name & " is");
      Put_Line
       ("     limited new AMF.Internals."
          & Metamodel_Name
          & "_Elements."
          & Metamodel_Name
          & "_Element_Proxy");
      Put_Line
       ("       and AMF."
          & Metamodel_Name
          & "."
          & Plural (To_Ada_Identifier (Class.Get_Name.Value))
          & "."
          & Metamodel_Name
          & "_"
          & To_Ada_Identifier (Class.Get_Name.Value)
          & " with null record;");

      Generate_Attributes (Class);
      Generate_Operations (Class);

      New_Line;
      Put_Line ("end " & Package_Name & ";");
   end Generate_Proxy;

   --------------------------
   -- Generate_With_Clause --
   --------------------------

   procedure Generate_With_Clause
    (Unit       : League.Strings.Universal_String;
     Is_Limited : Boolean;
     Is_Private : Boolean) is
   begin
      if Is_Limited then
         Put ("limited ");
      end if;

      Put_Line ("with " & Unit & ";");
   end Generate_With_Clause;

   ----------------------------
   -- Is_Ada_Distinguishable --
   ----------------------------

   function Is_Ada_Distinguishable
    (Operation_1 : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Operation_2 : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Mode        : Subprogram_Kinds) return Boolean
   is
      Parameters_1 : constant
        AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter
          := Operation_1.Get_Owned_Parameter;
      Parameters_2 : constant
        AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter
          := Operation_2.Get_Owned_Parameter;

   begin
      if Operation_1.Get_Name /= Operation_2.Get_Name then
         --  Two subprograms with different names is distinguishable in Ada.

         return True;
      end if;

      if Parameters_1.Length /= Parameters_2.Length then
         --  Number of parameters is different - subprograms is
         --  distinguishable.

         return True;
      end if;

      --  Check Ada type for each parameters pair.

      for J in 1 .. Parameters_1.Length loop
         case Mode is
            when Public | Proxy =>
               if Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                   (Parameters_1.Element (J).Get_Type,
                    Representation (Parameters_1.Element (J)))
                    /= Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                        (Parameters_2.Element (J).Get_Type,
                         Representation (Parameters_2.Element (J)))
               then
                  return True;
               end if;

            when Internal =>
               raise Program_Error;
         end case;
      end loop;

      return False;
   end Is_Ada_Distinguishable;

   ----------------------------
   -- Is_Ada_Distinguishable --
   ----------------------------

   function Is_Ada_Distinguishable
    (Attribute_1 : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Attribute_2 : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Mode        : Subprogram_Kinds) return Boolean is
   begin
      if Attribute_1.Get_Name /= Attribute_2.Get_Name then
         --  Two subprograms with different names is distinguishable in Ada.

         return True;
      end if;

      case Mode is
         when Public | Proxy =>
            return
              Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
               (Attribute_1.Get_Type, Representation (Attribute_1))
                /= Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                    (Attribute_2.Get_Type, Representation (Attribute_2));

         when Internal =>
            raise Program_Error;
      end case;
   end Is_Ada_Distinguishable;

   ----------------
   -- Split_Text --
   ----------------

   function Split_Text
    (Text : Universal_String; Width : Positive)
       return League.String_Vectors.Universal_String_Vector
   is
      use type League.Characters.Universal_Character;

      --  XXX It would be interesting to use line break iterator here to
      --  look for places of potencial line breaks.

      Result : League.String_Vectors.Universal_String_Vector;
      First  : Positive := 1;
      Last   : Natural  := 0;

   begin
      while First <= Text.Length loop
         Last := Integer'Min (First + Width, Text.Length);

         if Last /= Text.Length then
            while Text.Element (Last) /= ' ' loop
               Last := Last - 1;
            end loop;
         end if;

         Result.Append (Text.Slice (First, Last));
         First := Last + 1;
      end loop;

      return Result;
   end Split_Text;

   Extent   : AMF.URI_Stores.URI_Store_Access;
   Elements : AMF.Elements.Collections.Reflective_Collection;

   Generate_Public_API : Boolean := True;
   Generate_API_Stubs  : Boolean := False;

begin
   AMF.Facility.Initialize;
   Generator.Metamodel_Name := League.Application.Arguments.Element (2);

   if League.Application.Arguments.Length = 3 then
      if League.Application.Arguments.Element (3).To_Wide_Wide_String
           = "--stubs"
      then
         Generate_Public_API := False;
         Generate_API_Stubs := True;
      
      else
         raise Program_Error;
      end if;
   end if;

   Extent := XMI.Reader (Ada.Command_Line.Argument (1));
   Elements := Extent.Elements;

   Generator.Type_Mapping.Load_Mapping;

   for J in 1 .. Elements.Length loop
      if Elements.Element (J).all in AMF.CMOF.Classes.CMOF_Class'Class then
         if Generate_Public_API then
            Generate_Class
             (AMF.CMOF.Classes.CMOF_Class_Access (Elements.Element (J)));
            Generate_Collections
             (AMF.CMOF.Classes.CMOF_Class_Access (Elements.Element (J)));
         end if;

         if Generate_API_Stubs then
            Generate_Proxy
             (AMF.CMOF.Classes.CMOF_Class_Access (Elements.Element (J)));
         end if;
      end if;
   end loop;
end Gen_API;
