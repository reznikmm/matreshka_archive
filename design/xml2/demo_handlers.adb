with Ada.Characters.Conversions;

with Put_Line;
with Read_File;

package body Demo_Handlers is

   use type League.Strings.Universal_String;

   --------------------
   -- Attribute_Decl --
   --------------------

   overriding function Attribute_Decl
    (Self          : not null access Demo_Handler;
     E_Name        : League.Strings.Universal_String;
     A_Name        : League.Strings.Universal_String;
     A_Type        : League.Strings.Universal_String;
     Value_Default : League.Strings.Universal_String;
     Value         : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Attribute_Decl;

   ----------------
   -- Characters --
   ----------------

   overriding function Characters
    (Self : not null access Demo_Handler;
     Text : League.Strings.Universal_String)
       return Boolean is
   begin
      Put_Line (">>> (Characters): '" & Text & "'");

      return True;
   end Characters;

   -------------
   -- Comment --
   -------------

   overriding function Comment
    (Self : not null access Demo_Handler;
     Text : League.Strings.Universal_String)
       return Boolean is
   begin
      Put_Line (">>> (Comment): '" & Text & "'");

      return True;
   end Comment;

   ---------------
   -- End_CDATA --
   ---------------

   overriding function End_CDATA
    (Self : not null access Demo_Handler)
       return Boolean is
   begin
      return True;
   end End_CDATA;

   ------------------
   -- End_Document --
   ------------------

   overriding function End_Document
    (Self : not null access Demo_Handler)
       return Boolean is
   begin
      return True;
   end End_Document;

   -------------
   -- End_DTD --
   -------------

   overriding function End_DTD
    (Self : not null access Demo_Handler)
       return Boolean is
   begin
      return True;
   end End_DTD;

   -----------------
   -- End_Element --
   -----------------

   overriding function End_Element
    (Self           : not null access Demo_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
       return Boolean is
   begin
      Put_Line
       (">>> (End_Element): '"
          & Namespace_URI & "' '" & Local_Name & "' '" & Qualified_Name & "'");

      return True;
   end End_Element;

   ----------------
   -- End_Entity --
   ----------------

   overriding function End_Entity
    (Self : not null access Demo_Handler;
     Name : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end End_Entity;

   ------------------------
   -- End_Prefix_Mapping --
   ------------------------

   overriding function End_Prefix_Mapping
    (Self   : not null access Demo_Handler;
     Prefix : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end End_Prefix_Mapping;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : not null access Demo_Handler)
       return League.Strings.Universal_String is
   begin
      return X : League.Strings.Universal_String;
   end Error_String;

   --------------------------
   -- External_Entity_Decl --
   --------------------------

   overriding function External_Entity_Decl
    (Self      : not null access Demo_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String)
       return Boolean is
   begin
      Put_Line
       (">>> (External_Entity_Decl): '"
          & Name & "' => '" & Public_Id & "' '" & System_Id & "'");

      return True;
   end External_Entity_Decl;

   --------------------------
   -- Ignorable_Whitespace --
   --------------------------

   overriding function Ignorable_Whitespace
    (Self : not null access Demo_Handler;
     Text : League.Strings.Universal_String)
       return Boolean is
   begin
      Put_Line (">>> (Ignorable_Whitespace): '" & Text & "'");

      return True;
   end Ignorable_Whitespace;

   --------------------------
   -- Internal_Entity_Decl --
   --------------------------

   overriding function Internal_Entity_Decl
    (Self  : not null access Demo_Handler;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String)
       return Boolean is
   begin
      Put_Line
       (">>> (Internal_Entity_Decl): '" & Name & "' => '" & Value & "'");

      return True;
   end Internal_Entity_Decl;

   -------------------
   -- Notation_Decl --
   -------------------

   overriding function Notation_Decl
    (Self          : not null access Demo_Handler;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Notation_Decl;

   ----------------------------
   -- Processing_Instruction --
   ----------------------------

   overriding function Processing_Instruction
    (Self   : not null access Demo_Handler;
     Target : League.Strings.Universal_String;
     Data   : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Processing_Instruction;

   --------------------
   -- Resolve_Entity --
   --------------------

   overriding procedure Resolve_Entity
    (Self      : not null access Demo_Handler;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Text      : out League.Strings.Universal_String;
     Success   : in out Boolean) is
   begin
      Text :=
        Read_File
         (Ada.Characters.Conversions.To_String
           (System_Id.To_Wide_Wide_String));
      Put_Line (Text);
   end Resolve_Entity;

   --------------------
   -- Skipped_Entity --
   --------------------

   overriding function Skipped_Entity
    (Self : not null access Demo_Handler;
     Name : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Skipped_Entity;

   -----------------
   -- Start_CDATA --
   -----------------

   overriding function Start_CDATA
    (Self : not null access Demo_Handler)
       return Boolean is
   begin
      return True;
   end Start_CDATA;

   --------------------
   -- Start_Document --
   --------------------

   overriding function Start_Document
    (Self : not null access Demo_Handler)
       return Boolean is
   begin
      return True;
   end Start_Document;

   ---------------
   -- Start_DTD --
   ---------------

   overriding function Start_DTD
    (Self      : not null access Demo_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Start_DTD;

   -------------------
   -- Start_Element --
   -------------------

   overriding function Start_Element
    (Self           : not null access Demo_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : Matreshka.SAX.Attributes.SAX_Attributes)
       return Boolean is
   begin
      Put_Line
       (">>> (Start_Element): '"
          & Namespace_URI & "' '" & Local_Name & "' '" & Qualified_Name & "'");

      for J in 1 .. Attributes.Length loop
         Put_Line
          ("                    '" & Attributes.Namespace_URI (J)
             & "' '" & Attributes.Local_Name (J)
             & "' '" & Attributes.Qualified_Name (J)
             & "' '" & Attributes.Value (J) & "'");
      end loop;

      return True;
   end Start_Element;

   ------------------
   -- Start_Entity --
   ------------------

   overriding function Start_Entity
    (Self : not null access Demo_Handler;
     Name : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Start_Entity;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding function Start_Prefix_Mapping
    (Self   : not null access Demo_Handler;
     Prefix : League.Strings.Universal_String;
     URI    : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Start_Prefix_Mapping;

   --------------------------
   -- Unparsed_Entity_Decl --
   --------------------------

   overriding function Unparsed_Entity_Decl
    (Self          : not null access Demo_Handler;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String)
       return Boolean is
   begin
      Put_Line
       (">>> (Unparsed_Entity_Decl): '"
          & Name & "' => '" & Public_Id & "' '" & System_Id & "' '"
          & Notation_Name & "'");
      return True;
   end Unparsed_Entity_Decl;

end Demo_Handlers;
