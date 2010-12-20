--  XXX XMI handler can process only CMOF models for now.

with Ada.Wide_Wide_Text_IO;

with AMF.Values;
with CMOF.Associations;
with CMOF.Classes;
with CMOF.Collections;
with CMOF.Factory;
with CMOF.Multiplicity_Elements;
with CMOF.Named_Elements;
with CMOF.Properties;
with CMOF.Reflection;
with CMOF.Typed_Elements;
with CMOF.XMI_Helper;

package body XMI.Handlers is

   use Ada.Wide_Wide_Text_IO;
   use CMOF.Reflection;
   use CMOF.Typed_Elements;

   XMI_Namespace  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://schema.omg.org/spec/XMI/2.1");
   CMOF_Namespace : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://schema.omg.org/spec/MOF/2.0/cmof.xml");
   Tag_Class_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Tag");
   Type_Name      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("type");

   function Resolve_Owned_Attribute
    (Class : CMOF.CMOF_Class;
     Name  : League.Strings.Universal_String) return CMOF.CMOF_Property;
   --  Resolves class's owned attribute by its name.

   function Index
    (String    : League.Strings.Universal_String;
     Character : Wide_Wide_Character) return Natural;

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out XMI_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Self.Collect_Text then
         Self.Text.Append (Text);
      end if;
   end Characters;

--   overriding procedure End_Document
--    (Self    : in out XMI_Handler;
--     Success : in out Boolean) is null;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out XMI_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean)
   is
      use CMOF.Multiplicity_Elements;

   begin
      if not Self.Stack.Is_Empty then
         if Self.Collect_Text then
            Self.Collect_Text := False;

            if CMOF.XMI_Helper.Is_Data_Type (Get_Type (Self.Attribute)) then
               if not Is_Multivalued (Self.Attribute) then
                  Set
                   (Self.Current,
                    Self.Attribute,
                    CMOF.Factory.Create_From_String
                     (Get_Type (Self.Attribute), Self.Text));

               else
                  Put_Line ("Skip - multivalued");
               end if;

            else
               Put_Line ("Skip - not DataType");
            end if;

         else
            Self.Current := Self.Stack.Last_Element;
            Self.Stack.Delete_Last;
         end if;
      end if;
   end End_Element;

--   overriding procedure End_Prefix_Mapping
--    (Self    : in out XMI_Handler;
--     Prefix  : League.Strings.Universal_String;
--     Success : in out Boolean) is null;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : XMI_Handler) return League.Strings.Universal_String is
   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

--   overriding procedure Ignorable_Whitespace
--    (Self    : in out XMI_Handler;
--     Text    : League.Strings.Universal_String;
--     Success : in out Boolean) is null;

   -----------
   -- Index --
   -----------

   function Index
    (String    : League.Strings.Universal_String;
     Character : Wide_Wide_Character) return Natural is
   begin
      for J in 1 .. String.Length loop
         if String.Element (J) = Character then
            return J;
         end if;
      end loop;

      return 0;
   end Index;

--   overriding procedure Processing_Instruction
--    (Self    : in out XMI_Handler;
--     Target  : League.Strings.Universal_String;
--     Data    : League.Strings.Universal_String;
--     Success : in out Boolean) is null;

   -----------------------------
   -- Resolve_Owned_Attribute --
   -----------------------------

   function Resolve_Owned_Attribute
    (Class : CMOF.CMOF_Class;
     Name  : League.Strings.Universal_String) return CMOF.CMOF_Property
   is
      use CMOF;
      use CMOF.Classes;
      use CMOF.Collections;
      use CMOF.Named_Elements;
      use type League.Strings.Universal_String;

      Attributes    : constant Ordered_Set_Of_CMOF_Property
        := Get_Owned_Attribute (Class);
      Super_Classes : constant Set_Of_CMOF_Class := Get_Super_Class (Class);
      Aux           : CMOF_Property;

   begin
      --  Lookup in ownedAttribute set.

      for J in 1 .. Length (Attributes) loop
         Aux := Element (Attributes, J);

         if Get_Name (Aux) = Name then
            return Aux;
         end if;
      end loop;

      --  Lookup in superclasses.

      for J in 1 .. Length (Super_Classes) loop
         Aux := Resolve_Owned_Attribute (Element (Super_Classes, J), Name);

         if Aux /= Null_CMOF_Element then
            return Aux;
         end if;
      end loop;

      --  Lookup failed.

      return Null_CMOF_Element;
   end Resolve_Owned_Attribute;

--   overriding procedure Set_Document_Locator
--    (Self    : in out XMI_Handler;
--     Locator : XML.SAX.Locators.SAX_Locator) is null;
--
--   overriding procedure Skipped_Entity
--    (Self    : in out XMI_Handler;
--     Name    : League.Strings.Universal_String;
--     Success : in out Boolean) is null;
--
--   overriding procedure Start_Document
--    (Self    : in out XMI_Handler;
--     Success : in out Boolean) is null;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out XMI_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean)
   is
      use type League.Strings.Universal_String;

      use CMOF;
      use CMOF.Associations;
      use CMOF.Classes;
      use CMOF.Collections;
      use CMOF.Named_Elements;
      use CMOF.Properties;

      Name        : League.Strings.Universal_String;
      Meta        : CMOF.CMOF_Element;
      New_Element : CMOF_Element;
      Property    : CMOF_Property;
      Association : CMOF_Association;

      procedure Dump (Class : CMOF_Class);

      procedure Set_Attribute
       (Property : CMOF_Property; Value : League.Strings.Universal_String);

      procedure Dump (Class : CMOF_Class) is
         P : constant Ordered_Set_Of_CMOF_Property
           := Get_Owned_Attribute (Class);
         S : constant Set_Of_CMOF_Class := Get_Super_Class (Class);

      begin
         Put_Line ("  " & Get_Name (Class).To_Wide_Wide_String);

         for J in 1 .. Length (P) loop
            Put_Line ("    " & Get_Name (Element (P, J)).To_Wide_Wide_String);
         end loop;

         for J in 1 .. Length (S) loop
            Dump (Element (S, J));
         end loop;
      end Dump;

      -------------------
      -- Set_Attribute --
      -------------------

      procedure Set_Attribute
       (Property : CMOF_Property; Value : League.Strings.Universal_String) is
      begin
         if Property = Null_CMOF_Element then
            raise Program_Error with "Unknown attribute";
         end if;

         if Get_Type (Property) = Null_CMOF_Element then
            raise Program_Error with "Type not specified";
         end if;

         if CMOF.XMI_Helper.Is_Data_Type (Get_Type (Property)) then
            Set
             (Self.Current,
              Property,
              CMOF.Factory.Create_From_String (Get_Type (Property), Value));
--         else
--            Put_Line ("not supported");
         end if;
      end Set_Attribute;

   begin
      if Namespace_URI.Is_Empty then
         Put_Line (Qualified_Name.To_Wide_Wide_String);

--         Dump (Get_Meta_Class (Self.Current));

         Property :=
           Resolve_Owned_Attribute
            (Get_Meta_Class (Self.Current), Qualified_Name);

         if Property = Null_CMOF_Element then
            raise Program_Error;
         end if;

         Association := Get_Association (Property);

         if Association /= Null_CMOF_Element then
            if Attributes.Index (XMI_Namespace, Type_Name) /= 0 then
               Name := Attributes.Value (XMI_Namespace, Type_Name);
               Meta :=
                 CMOF.XMI_Helper.Resolve
                  (Name.Slice (Index (Name, ':') + 1, Name.Length));

               if Meta = Null_CMOF_Element then
                  raise Program_Error;
               end if;

            else
               raise Program_Error;
            end if;

            New_Element := CMOF.Factory.Create (Meta);

            if Element (Get_Member_End (Association), 1) = Property then
               CMOF.Factory.Create_Link (Association, Self.Current, New_Element);

            else
               CMOF.Factory.Create_Link (Association, New_Element, Self.Current);
            end if;

            Self.Stack.Append (Self.Current);
            Self.Current := New_Element;

            for J in 1 .. Attributes.Length loop
               if Attributes.Namespace_URI (J).Is_Empty then
                  if Attributes.Qualified_Name (J) /= League.Strings.To_Universal_String ("href") then
                  Put_Line
                   ("  "
                      & Attributes.Qualified_Name (J).To_Wide_Wide_String
                      & "  "
                      & Attributes.Value (J).To_Wide_Wide_String);
--                  Dump (Get_Meta_Class (Self.Current));
                  Set_Attribute
                   (CMOF.XMI_Helper.Resolve_Attribute
                     (Meta, Attributes.Qualified_Name (J)),
                    Attributes.Value (J));
                  end if;

               elsif Attributes.Namespace_URI (J) = XMI_Namespace then
                  null;

               else
                  Put_Line
                   ("  "
                      & Attributes.Namespace_URI (J).To_Wide_Wide_String
                      & "  "
                      & Attributes.Local_Name (J).To_Wide_Wide_String
                      & "  "
                      & Attributes.Value (J).To_Wide_Wide_String);
               end if;
            end loop;
         else
            Self.Attribute := Property;
            Self.Collect_Text := True;
            Self.Text.Clear;
         end if;

      elsif Namespace_URI = CMOF_Namespace then
         --  XXX Only root element is processed now; tags are ignored,
         --  not more than one root element is tested now. All these
         --  limitations must be removed.

         if Local_Name = Tag_Class_Name then
--            Put_Line (Namespace_URI.To_Wide_Wide_String);
--            Put_Line (Local_Name.To_Wide_Wide_String);

            return;
         end if;

         Meta         := CMOF.XMI_Helper.Resolve (Local_Name);
         Self.Current := CMOF.Factory.Create (Meta);
      end if;
   end Start_Element;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding procedure Start_Prefix_Mapping
    (Self          : in out XMI_Handler;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean) is
   begin
      Put_Line ("'" & Prefix.To_Wide_Wide_String & "' is mapped to " & Namespace_URI.To_Wide_Wide_String);
   end Start_Prefix_Mapping;

end XMI.Handlers;
