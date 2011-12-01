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
with Generator.Attribute_Mapping;
with Generator.Type_Mapping;
with Generator.Wide_Wide_Text_IO;

procedure Gen_API is

   use Ada.Strings.Wide_Wide_Fixed;
   use Ada.Wide_Wide_Text_IO;
   use AMF.CMOF;
   use Generator;
   use Generator.Attribute_Mapping;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;
   use League.Strings;
   use type AMF.CMOF.Types.CMOF_Type_Access;
   use type AMF.Optional_String;

   String_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("String");

   function Ada_API_Package_Name
    (Element : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return League.Strings.Universal_String;
   --  Returns name of interface package.

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

   procedure Generate_Attribute_Specification
    (Attribute       : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Class_Type_Name : League.Strings.Universal_String;
     Proxy           : Boolean);
   --  Generates getter/setter specifications for attribute.

   procedure Generate_Operation_Implementation
    (Operation       : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Class_Type_Name : League.Strings.Universal_String);
   --  Generate subprogram for the operation.

   procedure Generate_Operation_Specification
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

   procedure Generate_Attribute_Setter_Specification
    (Attribute       : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Class_Type_Name : League.Strings.Universal_String;
     Proxy           : Boolean);

   procedure Generate_Attribute_Getter_Specification
    (Attribute       : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Class_Type_Name : League.Strings.Universal_String;
     Proxy           : Boolean);

   --------------------------
   -- Ada_API_Package_Name --
   --------------------------

   function Ada_API_Package_Name
    (Element : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return League.Strings.Universal_String is
   begin
      return
        "AMF."
          & Owning_Metamodel_Name (Element)
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
        Owning_Metamodel_Name (Element)
          & "_"
          & To_Ada_Identifier (Element.Get_Name.Value);
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

   ---------------------------------------
   -- Generate_Attribute_Implementation --
   ---------------------------------------

   procedure Generate_Attribute_Implementation
    (Attribute       : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Class_Type_Name : League.Strings.Universal_String)
   is
      Attribute_Name : constant Wide_Wide_String
        := To_Ada_Identifier (Attribute.Get_Name.Value);
      Attribute_Type : constant AMF.CMOF.Types.CMOF_Type_Access
        := Attribute.Get_Type;

   begin
      Put_Header ("Get_" & Attribute_Name, 3);

      Generate_Attribute_Getter_Specification
       (Attribute, Class_Type_Name, True);

      Put_Line (" is");
      Put_Line ("   begin");

      if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
         case Representation (Attribute) is
            when Value | Holder =>
               Put_Line ("      return");
               Put_Line ("        " & Type_Mapping.Public_Ada_Type_Qualified_Name (Attribute_Type, Representation (Attribute)));
               Put_Line ("         (AMF.Internals.Helpers.To_Element");
               Put_Line ("           (AMF.Internals.Tables."
                   & Generator.Metamodel_Name
                   & "_Attributes.Internal_Get_"
                   & Attribute_Name);
               Put_Line ("             (Self.Id)));");

            when others =>
               Put_Line ("      return");
               Put_Line ("        " & Type_Mapping.Public_Ada_Package_Name (Attribute_Type, Representation (Attribute)) & ".Wrap");
               Put_Line ("         (AMF.Internals.Element_Collections.Wrap");
               Put_Line ("           (AMF.Internals.Tables."
                   & Generator.Metamodel_Name
                   & "_Attributes.Internal_Get_"
                   & Attribute_Name);
               Put_Line ("             (Self.Id)));");
         end case;

      elsif Attribute_Type.Get_Name = String_Name then
         case Representation (Attribute) is
            when Value =>
               Put_Line ("      null;");

            when Holder =>
               Put_Line ("      declare");
               Put_Line
                ("         use type"
                   & " Matreshka.Internals.Strings.Shared_String_Access;");
               New_Line;
               Put_Line
                ("         Aux : constant"
                   & " Matreshka.Internals.Strings.Shared_String_Access");
               Put_Line ("           := AMF.Internals.Tables."
                   & Generator.Metamodel_Name
                   & "_Attributes.Internal_Get_"
                   & Attribute_Name
                   & " (Self.Id);");
               New_Line;
               Put_Line ("      begin");
               Put_Line ("         if Aux = null then");
               Put_Line ("            return (Is_Empty => True);");
               New_Line;
               Put_Line ("         else");
               Put_Line
                ("            return"
                   & " (False, League.Strings.Internals.Create (Aux));");
               Put_Line ("         end if;");
               Put_Line ("      end;");

            when others =>
               Put_Line ("      null;");
         end case;

      else
         Put_Line
          ("      return");
         Put_Line
          ("        AMF.Internals.Tables."
             & Generator.Metamodel_Name
             & "_Attributes.Internal_Get_"
             & Attribute_Name);
         Put_Line ("         (Self.Id);");
      end if;

      Put_Line ("   end Get_" & Attribute_Name & ";");

      --  Generate setters for attributes which can be modified by application
      --  and which is not a collections (because changes of collection, which
      --  is returned by getter automatically applied to attribute's value.

      if Attribute.Get_Is_Read_Only or Attribute.Is_Multivalued then
         return;
      end if;

      Put_Header ("Set_" & Attribute_Name, 3);
      Generate_Attribute_Setter_Specification
       (Attribute, Class_Type_Name, True);

      Put_Line (" is");
      Put_Line ("   begin");

      if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
         case Representation (Attribute) is
            when Value | Holder =>
               Put_Line
                ("      AMF.Internals.Tables."
                   & Generator.Metamodel_Name
                   & "_Attributes.Internal_Set_"
                   & Attribute_Name);
               Put_Line ("       (Self.Id,");
               Put_Line ("        AMF.Internals.Helpers.To_Element");
               Put_Line ("         (AMF.Elements.Element_Access (To)));");

            when others =>
               null;
         end case;

      elsif Attribute_Type.Get_Name = String_Name then
         case Representation (Attribute) is
            when Value =>
               null;

            when Holder =>
               Put_Line ("      if To.Is_Empty then");
               Put_Line
                ("         AMF.Internals.Tables."
                   & Generator.Metamodel_Name
                   & "_Attributes.Internal_Set_"
                   & Attribute_Name);
               Put_Line ("          (Self.Id, null);");
               New_Line;
               Put_Line ("      else");
               Put_Line
                ("         AMF.Internals.Tables."
                   & Generator.Metamodel_Name
                   & "_Attributes.Internal_Set_"
                   & Attribute_Name);
               Put_Line ("          (Self.Id,");
               Put_Line
                ("           League.Strings.Internals.Internal (To.Value));");
               Put_Line ("      end if;");

            when others =>
               null;
         end case;

      else
         Put_Line
          ("      AMF.Internals.Tables."
             & Generator.Metamodel_Name
             & "_Attributes.Internal_Set_"
             & Attribute_Name);
         Put_Line ("       (Self.Id, To);");
      end if;

      Put_Line ("   end Set_" & Attribute_Name & ";");
   end Generate_Attribute_Implementation;

   --------------------------------------
   -- Generate_Attribute_Specification --
   --------------------------------------

   procedure Generate_Attribute_Specification
    (Attribute       : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Class_Type_Name : League.Strings.Universal_String;
     Proxy           : Boolean) is
   begin
      Generate_Attribute_Getter_Specification
       (Attribute, Class_Type_Name, Proxy);

      if Proxy then
         Put_Line (";");
         
      else
         Put_Line (" is abstract;");
      end if;

      --  Generate comment.

      declare
         Class          : constant AMF.CMOF.Classes.CMOF_Class_Access
           := Attribute.Get_Class;
         Owned_Comments : constant
           AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment
             := Attribute.Get_Owned_Comment;
         Lines          : League.String_Vectors.Universal_String_Vector;

      begin
         Put_Line
          ("   --  Getter of "
             & Class.Get_Name.Value
             & Attribute.Separator
             & Attribute.Get_Name.Value
             & ".");
         Put_Line ("   --");

         for J in 1 .. Owned_Comments.Length loop
            Lines :=
              Split_Text (Owned_Comments.Element (J).Get_Body.Value, 71);

            for J in 1 .. Lines.Length loop
               Put_Line ("   --  " & Lines.Element (J).To_Wide_Wide_String);
            end loop;
         end loop;
      end;

      --  Generate setters for attributes which can be modified by application
      --  and which is not a collections (because changes of collection, which
      --  is returned by getter automatically applied to attribute's value.

      if Attribute.Get_Is_Read_Only or Attribute.Is_Multivalued then
         return;
      end if;

      Generate_Attribute_Setter_Specification
       (Attribute, Class_Type_Name, Proxy);

      if Proxy then
         Put_Line (";");

      else
         Put_Line (" is abstract;");
      end if;

      --  Generate comment.

      declare
         Class          : constant AMF.CMOF.Classes.CMOF_Class_Access
           := Attribute.Get_Class;
         Owned_Comments : constant
           AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment
             := Attribute.Get_Owned_Comment;
         Lines          : League.String_Vectors.Universal_String_Vector;

      begin
         Put_Line
          ("   --  Setter of "
             & Class.Get_Name.Value
             & Attribute.Separator
             & Attribute.Get_Name.Value
             & ".");
         Put_Line ("   --");

         for J in 1 .. Owned_Comments.Length loop
            Lines :=
              Split_Text (Owned_Comments.Element (J).Get_Body.Value, 71);

            for J in 1 .. Lines.Length loop
               Put_Line ("   --  " & Lines.Element (J).To_Wide_Wide_String);
            end loop;
         end loop;
      end;
   end Generate_Attribute_Specification;

   ---------------------------------------------
   -- Generate_Attribute_Getter_Specification --
   ---------------------------------------------

   procedure Generate_Attribute_Getter_Specification
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
   end Generate_Attribute_Getter_Specification;

   ---------------------------------------------
   -- Generate_Attribute_Setter_Specification --
   ---------------------------------------------

   procedure Generate_Attribute_Setter_Specification
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
         Put_Line ("   overriding procedure Set_" & Attribute_Name);

      else
         Put_Line ("   not overriding procedure Set_" & Attribute_Name);
      end if;

      Put_Line
       ("    (Self : not null access " & Class_Type_Name & ";");
      Put ("     To   : " & Type_Qualified_Name & ")");
   end Generate_Attribute_Setter_Specification;

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

      Context.Instantiate (League.Strings.To_Universal_String (Package_Name));
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
         Generate_Attribute_Specification
          (Attributes.Element (J), Ada_API_Type_Name (Class), False);
      end loop;

      --  Generate operations.

      for J in 1 .. Operations.Length loop
         Generate_Operation_Specification
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

   ---------------------------------------
   -- Generate_Operation_Implementation --
   ---------------------------------------

   procedure Generate_Operation_Implementation
    (Operation       : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Class_Type_Name : League.Strings.Universal_String)
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

      Put_Header (To_Ada_Identifier (Name), 3);
      New_Line;
      Put ("   overriding ");

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
      end if;

      Put_Line (" is");
      Put_Line ("   begin");
      Put_Line ("      --  Generated stub: replace with real body!");
      Put_Line
       ("      pragma Compile_Time_Warning (Standard.True, """
          & To_Ada_Identifier (Name)
          & " unimplemented"");");
      Put_Line
       ("      raise Program_Error with ""Unimplemented procedure "
          & Class_Type_Name
          & "."
          & To_Ada_Identifier (Name)
          & """;");

      if Returns /= null then
         Put ("      return " & To_Ada_Identifier (Name) & " (Self");

         for J in 1 .. Parameters.Length loop
            if Parameters.Element (J).Get_Direction /= Return_Parameter then
               if Parameters.Element (J).Get_Direction /= In_Parameter then
                  raise Program_Error;
               end if;

               Put
                (", "
                   & To_Ada_Identifier
                      (Parameters.Element (J).Get_Name.Value));
            end if;
         end loop;

         Put_Line (");");
      end if;

      Put_Line ("   end " & To_Ada_Identifier (Name) & ";");
   end Generate_Operation_Implementation;

   --------------------------------------
   -- Generate_Operation_Specification --
   --------------------------------------

   procedure Generate_Operation_Specification
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

      declare
         Class          : constant AMF.CMOF.Classes.CMOF_Class_Access
           := Operation.Get_Class;
         Owned_Comments : constant
           AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment
             := Operation.Get_Owned_Comment;
         Lines          : League.String_Vectors.Universal_String_Vector;

      begin
         Put_Line
          ("   --  Operation "
             & Class.Get_Name.Value
             & Operation.Separator
             & Operation.Get_Name.Value
             & ".");
         Put_Line ("   --");

         for J in 1 .. Owned_Comments.Length loop
            Lines :=
              Split_Text (Owned_Comments.Element (J).Get_Body.Value, 71);

            for J in 1 .. Lines.Length loop
               Put_Line ("   --  " & Lines.Element (J).To_Wide_Wide_String);
            end loop;
         end loop;
      end;
   end Generate_Operation_Specification;

   -----------------------------------
   -- Generate_Proxy_Implementation --
   -----------------------------------

   procedure Generate_Proxy_Implementation
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
   is
      Package_Name         : constant League.Strings.Universal_String
        := "AMF.Internals."
             & Generator.Names.Owning_Metamodel_Name (Class)
             & "_"
             & Plural (To_Ada_Identifier (Class.Get_Name.Value));
      Type_Name            : constant League.Strings.Universal_String
        := Generator.Names.Owning_Metamodel_Name (Class)
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
                  Generate_Attribute_Implementation (Attribute, Type_Name);
               end if;

               Generated_Attributes.Insert
                (AMF.CMOF.Elements.CMOF_Element_Access (Attribute));
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
                  Generate_Operation_Implementation (Operation, Type_Name);
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

      Context.Add
       (League.Strings.To_Universal_String
         ("AMF.Internals.Element_Collections"));
      Context.Add
       (League.Strings.To_Universal_String
         ("Matreshka.Internals.Strings"));
      Context.Add
       (League.Strings.To_Universal_String
         ("League.Strings.Internals"));
      Context.Add
       (League.Strings.To_Universal_String ("AMF.Internals.Helpers"));
      Context.Add
       (League.Strings.To_Universal_String ("AMF.Elements"));
      Context.Add ("AMF.Internals.Tables." & Generator.Metamodel_Name & "_Attributes");

--      Compute_With_For_Attributes (Class);
--      Compute_With_For_Operations (Class);

      --  Generate package specification

      Put_Header (Year_2010 => False);
      Context.Instantiate (Package_Name);
      Context.Iterate (Generate_With_Clause'Access);
      New_Line;
      Put_Line ("package body " & Package_Name & " is");

      Generate_Attributes (Class);
      Generate_Operations (Class);

      New_Line;
      Put_Line ("end " & Package_Name & ";");
   end Generate_Proxy_Implementation;

   ----------------------------------
   -- Generate_Proxy_Specification --
   ----------------------------------

   procedure Generate_Proxy_Specification
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
   is
      Package_Name         : constant League.Strings.Universal_String
        := "AMF.Internals."
             & Generator.Names.Owning_Metamodel_Name (Class)
             & "_"
             & Plural (To_Ada_Identifier (Class.Get_Name.Value));
      Type_Name            : constant League.Strings.Universal_String
        := Generator.Names.Owning_Metamodel_Name (Class)
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
                  Generate_Attribute_Specification
                   (Attribute, Type_Name, True);
               end if;

               Generated_Attributes.Insert
                (AMF.CMOF.Elements.CMOF_Element_Access (Attribute));
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
                  Generate_Operation_Specification (Operation, Type_Name, True);
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

      Context.Add ("AMF.Internals." & Generator.Metamodel_Name & "_Elements");
      Context.Add
       ("AMF."
          & Generator.Metamodel_Name
          & "."
          & Plural (To_Ada_Identifier (Class.Get_Name.Value)));

      Compute_With_For_Attributes (Class);
      Compute_With_For_Operations (Class);

      --  Generate package specification

      Put_Header (Year_2010 => False);
      Context.Instantiate (Package_Name);
      Context.Iterate (Generate_With_Clause'Access);
      New_Line;
      Put_Line ("package " & Package_Name & " is");
      New_Line;
      Put_Line ("   type " & Type_Name & " is");
      Put_Line
       ("     limited new AMF.Internals."
          & Generator.Names.Owning_Metamodel_Name (Class)
          & "_Elements."
          & Generator.Names.Owning_Metamodel_Name (Class)
          & "_Element_Proxy");
      Put_Line
       ("       and "
          & Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
             (Class, Value)
          & " with null record;");

      Generate_Attributes (Class);
      Generate_Operations (Class);

      New_Line;
      Put_Line ("end " & Package_Name & ";");
   end Generate_Proxy_Specification;

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
   Elements : AMF.Elements.Collections.Set_Of_Element;

   Generate_Public_API : Boolean := True;
   Generate_API_Stubs  : Boolean := False;

begin
   AMF.Facility.Initialize;
   Generator.Metamodel_Name := League.Application.Arguments.Element (3);

   if League.Application.Arguments.Length = 4 then
      if League.Application.Arguments.Element (4).To_Wide_Wide_String
           = "--stubs"
      then
         Generate_Public_API := False;
         Generate_API_Stubs := True;
      
      else
         raise Program_Error;
      end if;
   end if;

   Extent :=
     XMI.Reader.Read_File
      (League.Application.Arguments.Element (1),
       League.Application.Arguments.Element (2));
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
            Generate_Proxy_Specification
             (AMF.CMOF.Classes.CMOF_Class_Access (Elements.Element (J)));
            Generate_Proxy_Implementation
             (AMF.CMOF.Classes.CMOF_Class_Access (Elements.Element (J)));
         end if;
      end if;
   end loop;
end Gen_API;
