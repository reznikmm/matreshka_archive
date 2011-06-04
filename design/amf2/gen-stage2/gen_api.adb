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
with Ada.Containers.Ordered_Sets;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Wide_Wide_Text_IO;

with AMF.CMOF.Classes.Collections;
with AMF.CMOF.Comments.Collections;
with AMF.CMOF.Operations.Collections;
with AMF.CMOF.Parameters.Collections;
with AMF.CMOF.Properties.Collections;
with AMF.Elements.Collections;
with CMOF.Extents;
with CMOF.Named_Elements;
with CMOF.Typed_Elements;
with CMOF.XMI_Helper;
with League.Application;
with League.Characters;
with League.String_Vectors;
with League.Strings;
with XMI.Reader;

with Generator.Names;
with Generator.Wide_Wide_Text_IO;

procedure Gen_API is

   use Ada.Strings.Wide_Wide_Fixed;
   use Ada.Wide_Wide_Text_IO;
   use CMOF;
   use CMOF.Named_Elements;
   use CMOF.Typed_Elements;
   use CMOF.XMI_Helper;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;
   use League.Strings;

   function Ada_API_Package_Name
    (Element : CMOF_Class) return League.Strings.Universal_String;
   --  Returns name of interface package.

   function Ada_API_Collections_Package_Name
    (Element : CMOF_Class) return League.Strings.Universal_String;
   --  Returns name of collections package.

   function Ada_API_Type_Name
    (Element : CMOF_Class) return League.Strings.Universal_String;
   --  Returns name of the type.

   function Ada_Type_Qualified_Name
    (Is_Multivalued : Boolean;
     Lower          : Integer;
     The_Type       : CMOF_Element;
     Is_Ordered     : Boolean;
     Is_Unique      : Boolean)
       return Wide_Wide_String;
   --  Returns qualified name of Ada type.

   procedure Generate_Class
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);
   --  Generates specification of interface package.

   procedure Generate_Collections
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);
   --  Generates collections package.

   package Universal_String_Sets is
     new Ada.Containers.Ordered_Sets
          (League.Strings.Universal_String,
           League.Strings."<",
           League.Strings."=");

   function Split_Text
    (Text : Universal_String; Width : Positive)
       return League.String_Vectors.Universal_String_Vector;

   Model_Name : League.Strings.Universal_String
     := League.Application.Arguments.Element (2);

   --------------------------------------
   -- Ada_API_Collections_Package_Name --
   --------------------------------------

   function Ada_API_Collections_Package_Name
    (Element : CMOF_Class) return League.Strings.Universal_String is
   begin
      return
        "AMF."
          & Model_Name
          & "."
          & Plural (To_Ada_Identifier (Get_Name (Element)))
          & ".Collections";
   end Ada_API_Collections_Package_Name;

   --------------------------
   -- Ada_API_Package_Name --
   --------------------------

   function Ada_API_Package_Name
    (Element : CMOF_Class) return League.Strings.Universal_String is
   begin
      return
        "AMF."
          & Model_Name
          & "."
          & Plural (To_Ada_Identifier (Get_Name (Element)));
   end Ada_API_Package_Name;

   -----------------------
   -- Ada_API_Type_Name --
   -----------------------

   function Ada_API_Type_Name
    (Element : CMOF_Class) return League.Strings.Universal_String is
   begin
      return
        Model_Name & "_" & To_Ada_Identifier (Get_Name (Element));
   end Ada_API_Type_Name;

   -----------------------------
   -- Ada_Type_Qualified_Name --
   -----------------------------

   function Ada_Type_Qualified_Name
    (Is_Multivalued : Boolean;
     Lower          : Integer;
     The_Type       : CMOF_Element;
     Is_Ordered     : Boolean;
     Is_Unique      : Boolean)
       return Wide_Wide_String is
   begin
      if Is_Multivalued then
         if Is_Data_Type (The_Type) then
            if Get_Name (The_Type) = To_Universal_String ("Boolean") then
               if not Is_Ordered and Is_Unique then
                  return "Set_Of_Boolean";
               end if;

            elsif Get_Name (The_Type) = To_Universal_String ("String") then
               if Is_Ordered and Is_Unique then
                  return "Ordered_Set_Of_String";

               elsif Is_Ordered then
                  return "Sequence_Of_String";

               elsif Is_Unique then
                  return "Set_Of_String";
               end if;
            end if;

            Put_Line
             (Standard_Error,
              Get_Name (The_Type).To_Wide_Wide_String
                & " "
                & Boolean'Wide_Wide_Image (Is_Unique)
                & " "
                & Boolean'Wide_Wide_Image (Is_Ordered));

         else
            if Is_Ordered and Is_Unique then
               return
                 Ada_API_Package_Name (The_Type).To_Wide_Wide_String
                   & ".Collections.Ordered_Set_Of_"
                   & Ada_API_Type_Name (The_Type).To_Wide_Wide_String;

            elsif Is_Ordered then
               return
                 Ada_API_Package_Name (The_Type).To_Wide_Wide_String
                   & ".Collections.Sequence_Of_"
                   & Ada_API_Type_Name (The_Type).To_Wide_Wide_String;

            elsif Is_Unique then
               return
                 Ada_API_Package_Name (The_Type).To_Wide_Wide_String
                   & ".Collections.Set_Of_"
                   & Ada_API_Type_Name (The_Type).To_Wide_Wide_String;

            else
               return
                 Ada_API_Package_Name (The_Type).To_Wide_Wide_String
                   & ".Collections.Bag_Of_"
                   & Ada_API_Type_Name (The_Type).To_Wide_Wide_String;
            end if;
         end if;

      else
         if Is_Data_Type (The_Type) then
            if Get_Name (The_Type) = To_Universal_String ("Boolean") then
               if Lower = 0 then
                  return "Optional_Boolean";

               else
                  return "Boolean";
               end if;

            elsif Get_Name (The_Type) = To_Universal_String ("Integer") then
               if Lower = 0 then
                  return "Optional_Integer";

               else
                  return "Integer";
               end if;

            elsif Get_Name (The_Type)
                 = To_Universal_String ("UnlimitedNatural")
            then
               if Lower = 0 then
                  return "Optional_Unlimited_Natural";

               else
                  return "Unlimited_Natural";
               end if;

            elsif Get_Name (The_Type) = To_Universal_String ("String") then
               if Lower = 0 then
                  return "Optional_String";

               else
                  return "League.Strings.Universal_String";
               end if;

            elsif Get_Name (The_Type) = To_Universal_String ("Real") then
               if Lower = 0 then
                  return "Optional_Real";

               else
                  return "Real";
               end if;

            else
               if Lower = 0 then
                  return
                    "Optional_"
                      & Ada_API_Type_Name (The_Type).To_Wide_Wide_String;

               else
                  return
                    Ada_API_Type_Name (The_Type).To_Wide_Wide_String;
               end if;
            end if;

         else
            return
              Ada_API_Package_Name (The_Type).To_Wide_Wide_String
                & "."
                & Ada_API_Type_Name (The_Type).To_Wide_Wide_String
                & "_Access";
         end if;
      end if;
   end Ada_Type_Qualified_Name;

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
      Ordinary_With : Universal_String_Sets.Set;
      All_With      : Universal_String_Sets.Set;

      procedure Compute_With_For_Super_Classes;

      procedure Compute_With_For_Attributes;

      procedure Compute_With_For_Operations;

      procedure Generate_With_Clause (Position : Universal_String_Sets.Cursor);

      procedure Generate_Attribute
       (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access);

      procedure Generate_Operation
       (Operation : not null AMF.CMOF.Operations.CMOF_Operation_Access);
      --  Generate subprogram for the operation.

      ---------------------------------
      -- Compute_With_For_Attributes --
      ---------------------------------

      procedure Compute_With_For_Attributes is
         Attribute : AMF.CMOF.Properties.CMOF_Property_Access;
         The_Type  : CMOF_Classifier;
         Name      : League.Strings.Universal_String;

      begin
         for J in 1 .. Attributes.Length loop
            Attribute := Attributes.Element (J);
            The_Type := Get_Type (CMOF_Element_Of (Attribute));

            if not Is_Data_Type (The_Type)
              and (The_Type /= CMOF_Element_Of (Class)
                     or Attribute.Is_Multivalued)
            then
               if Attribute.Is_Multivalued then
                  Name := Ada_API_Package_Name (The_Type);

                  --  Remove with clause for interface package when it is not
                  --  withed by ordinary with clause.

                  if All_With.Contains (Name)
                    and not Ordinary_With.Contains (Name)
                  then
                     All_With.Delete (Name);
                  end if;

                  Name := Ada_API_Collections_Package_Name (The_Type);

               else
                  Name := Ada_API_Package_Name (The_Type);
               end if;

               if not All_With.Contains (Name) then
                  All_With.Insert (Name);
               end if;
            end if;
         end loop;
      end Compute_With_For_Attributes;

      ---------------------------------
      -- Compute_With_For_Operations --
      ---------------------------------

      procedure Compute_With_For_Operations is
         Parameters :
           AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter;
         Parameter  : AMF.CMOF.Parameters.CMOF_Parameter_Access;
         The_Type   : CMOF_Classifier;
         Name       : League.Strings.Universal_String;

      begin
         for J in 1 .. Operations.Length loop
            Parameters := Operations.Element (J).Get_Owned_Parameter;

            for J in 1 .. Parameters.Length loop
               Parameter := Parameters.Element (J);
               The_Type := Get_Type (CMOF_Element_Of (Parameter));

               if not Is_Data_Type (The_Type)
                 and (The_Type /= CMOF_Element_Of (Class)
                        or Parameter.Is_Multivalued)
               then
                  if Parameter.Is_Multivalued then
                     Name := Ada_API_Package_Name (The_Type);

                     --  Remove with clause for interface package when it is
                     --  not withed by ordinary with clause.

                     if All_With.Contains (Name)
                       and not Ordinary_With.Contains (Name)
                     then
                        All_With.Delete (Name);
                     end if;

                     Name := Ada_API_Collections_Package_Name (The_Type);

                  else
                     Name := Ada_API_Package_Name (The_Type);
                  end if;

                  if not All_With.Contains (Name) then
                     All_With.Insert (Name);
                  end if;
               end if;
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
            Name :=
              Ada_API_Package_Name
               (CMOF_Element_Of (Super_Classes.Element (J)));
            Ordinary_With.Insert (Name);
            All_With.Insert (Name);
         end loop;
      end Compute_With_For_Super_Classes;

      ------------------------
      -- Generate_Attribute --
      ------------------------

      procedure Generate_Attribute
       (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access)
      is
         Redefines       : constant
           AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
             := Attribute.Get_Redefined_Property;
         Class_Type_Name : constant Wide_Wide_String
           := Ada_API_Type_Name (CMOF_Element_Of (Class)).To_Wide_Wide_String;
         Attribute_Name  : constant Wide_Wide_String
           := To_Ada_Identifier (Get_Name (CMOF_Element_Of (Attribute)));
         Ada_Overriding  : Boolean := False;

         function Type_Qualified_Name return Wide_Wide_String is
         begin
            return
              Ada_Type_Qualified_Name
               (Attribute.Is_Multivalued,
                Attribute.Lower_Bound,
                Get_Type (CMOF_Element_Of (Attribute)),
                Attribute.Get_Is_Ordered,
                Attribute.Get_Is_Unique);
         end Type_Qualified_Name;

      begin
         for J in 1 .. Redefines.Length loop
            if Get_Name (CMOF_Element_Of (Redefines.Element (J)))
                 = Get_Name (CMOF_Element_Of (Attribute))
            then
               if Get_Type (CMOF_Element_Of (Redefines.Element (J)))
                    = Get_Type (CMOF_Element_Of (Attribute))
                 and then Redefines.Element (J).Lower_Bound
                            = Attribute.Lower_Bound
               then
                  Ada_Overriding := True;
               end if;

               exit;
            end if;
         end loop;

         New_Line;

         if Ada_Overriding then
            Put_Line ("   overriding function Get_" & Attribute_Name);

         else
            Put_Line ("   not overriding function Get_" & Attribute_Name);
         end if;

         Put_Line
          ("    (Self : not null access constant "
             & Class_Type_Name
             & ")");
         Put_Line ("       return " & Type_Qualified_Name & " is abstract;");

         --  Generate comment.

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

         --  Generate setters for attributes which can be modified by
         --  application and which is not a collections (because changes of
         --  collection, which is returned by getter automatically applied to
         --  attribute's value.

         if Attribute.Get_Is_Read_Only or Attribute.Is_Multivalued then
            return;
         end if;

         New_Line;

         if Ada_Overriding then
            Put_Line ("   overriding procedure Set_" & Attribute_Name);

         else
            Put_Line ("   not overriding procedure Set_" & Attribute_Name);
         end if;

         Put_Line
          ("    (Self : not null access " & Class_Type_Name & ";");
         Put_Line
          ("     To   : " & Type_Qualified_Name & ") is abstract;");
      end Generate_Attribute;

      ------------------------
      -- Generate_Operation --
      ------------------------

      procedure Generate_Operation
       (Operation : not null AMF.CMOF.Operations.CMOF_Operation_Access)
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

         begin
            for J in 1 .. Redefines.Length loop
               Parameters_2 := Redefines.Element (J).Get_Owned_Parameter;

               if Parameters.Length = Parameters_2.Length then
                  Result := True;

                  for J in 1 .. Parameters.Length loop
                     if Get_Type (CMOF_Element_Of (Parameters.Element (J)))
                          /= Get_Type
                              (CMOF_Element_Of (Parameters_2.Element (J)))
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
              Ada_Type_Qualified_Name
               (Parameter.Is_Multivalued,
                Parameter.Lower_Bound,
                Get_Type (CMOF_Element_Of (Parameter)),
                Parameter.Get_Is_Ordered,
                Parameter.Get_Is_Unique);
         end Type_Qualified_Name;

         Class_Type_Name : constant Wide_Wide_String
           := Ada_API_Type_Name
               (CMOF_Element_Of (Operation.Get_Class)).To_Wide_Wide_String;
         Parameters      : constant
           AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter
             := Operation.Get_Owned_Parameter;
         Returns         : AMF.CMOF.Parameters.CMOF_Parameter_Access;
         Name            : League.Strings.Universal_String;

      begin
         --  Look for 'return' parameter.

         for J in 1 .. Parameters.Length loop
            if Parameters.Element (J).Get_Direction = Return_Direction then
               Returns := Parameters.Element (J);
            end if;
         end loop;

         --  Compute name of the operation, XXX to rename 'type' operation.

         Name := Get_Name (CMOF_Element_Of (Operation));

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

         if Is_Overriding then
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
            if Parameters.Element (J).Get_Direction /= Return_Direction then
               if Parameters.Element (J).Get_Direction /= In_Direction then
                  raise Program_Error;
               end if;

               Put_Line (";");
               Put
                ("     "
                   & To_Ada_Identifier
                      (Get_Name (CMOF_Element_Of (Parameters.Element (J))))
                   & " : "
                   & Type_Qualified_Name (Parameters.Element (J)));
            end if;
         end loop;

         Put_Line (")");

         if Returns /= null then
            Put_Line
             ("       return "
                & Type_Qualified_Name (Returns)
                & " is abstract;");
         end if;

         --  Generate comment.

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
      end Generate_Operation;

      --------------------------
      -- Generate_With_Clause --
      --------------------------

      procedure Generate_With_Clause
       (Position : Universal_String_Sets.Cursor)
      is
         Name : constant Universal_String
           := Universal_String_Sets.Element (Position);

      begin
         if Ordinary_With.Contains (Name) then
            Put_Line ("with " & Name.To_Wide_Wide_String & ";");

         else
            Put_Line ("limited with " & Name.To_Wide_Wide_String & ";");
         end if;
      end Generate_With_Clause;

      Package_Name  : constant Wide_Wide_String
        := Ada_API_Package_Name (CMOF_Element_Of (Class)).To_Wide_Wide_String;
      Type_Name     : constant Wide_Wide_String
        := Ada_API_Type_Name (CMOF_Element_Of (Class)).To_Wide_Wide_String;

   begin
      Compute_With_For_Super_Classes;
      Compute_With_For_Attributes;
      Compute_With_For_Operations;

      Put_Line (Standard_Error, Class.Get_Name.Value.To_Wide_Wide_String);

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

      All_With.Iterate (Generate_With_Clause'Access);

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
                (CMOF_Element_Of
                  (Super_Classes.Element (J))).To_Wide_Wide_String
             & "."
             & Ada_API_Type_Name
                (CMOF_Element_Of
                  (Super_Classes.Element (J))).To_Wide_Wide_String);
      end loop;

      Put_Line (";");

      --  Generate access type.

      New_Line;
      Put_Line ("   type " & Type_Name & "_Access is");
      Put_Line ("     access all " & Type_Name & "'Class;");
      Put_Line ("   for " & Type_Name & "_Access'Storage_Size use 0;");

      --  Generate setters and getters.

      for J in 1 .. Attributes.Length loop
         Generate_Attribute (Attributes.Element (J));
      end loop;

      --  Generate operations.

      for J in 1 .. Operations.Length loop
         Generate_Operation (Operations.Element (J));
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
        := Ada_API_Package_Name (CMOF_Element_Of (Class)).To_Wide_Wide_String;
      Type_Name     : constant Wide_Wide_String
        := Ada_API_Type_Name (CMOF_Element_Of (Class)).To_Wide_Wide_String;

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

   Extent   : constant CMOF.CMOF_Extent
     := XMI.Reader (Ada.Command_Line.Argument (1));
   Elements : AMF.Elements.Collections.Reflective_Collection
     := CMOF.Extents.Elements (Extent);

begin
   for J in 1 .. Elements.Length loop
      if Elements.Element (J).all in AMF.CMOF.Classes.CMOF_Class'Class then
         Generate_Class
          (AMF.CMOF.Classes.CMOF_Class_Access (Elements.Element (J)));
         Generate_Collections
          (AMF.CMOF.Classes.CMOF_Class_Access (Elements.Element (J)));
      end if;
   end loop;
end Gen_API;
