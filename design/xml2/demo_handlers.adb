with Ada.Characters.Conversions;

with Put_Line;
with Read_File;

package body Demo_Handlers is

   use type League.Strings.Universal_String;

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out Demo_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Put_Line (">>> (Characters): '" & Text & "'");
   end Characters;

   -------------
   -- Comment --
   -------------

   overriding procedure Comment
    (Self    : in out Demo_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Put_Line (">>> (Comment): '" & Text & "'");
   end Comment;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out Demo_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean) is
   begin
      Put_Line
       (">>> (End_Element): '"
          & Namespace_URI & "' '" & Local_Name & "' '" & Qualified_Name & "'");
   end End_Element;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Demo_Handler)
       return League.Strings.Universal_String is
   begin
      return X : League.Strings.Universal_String;
   end Error_String;

   --------------------------
   -- External_Entity_Decl --
   --------------------------

   overriding procedure External_Entity_Decl
    (Self      : in out Demo_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean) is
   begin
      Put_Line
       (">>> (External_Entity_Decl): '"
          & Name & "' => '" & Public_Id & "' '" & System_Id & "'");
   end External_Entity_Decl;

   --------------------------
   -- Ignorable_Whitespace --
   --------------------------

   overriding procedure Ignorable_Whitespace
    (Self    : in out Demo_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Put_Line (">>> (Ignorable_Whitespace): '" & Text & "'");
   end Ignorable_Whitespace;

   --------------------------
   -- Internal_Entity_Decl --
   --------------------------

   overriding procedure Internal_Entity_Decl
    (Self    : in out Demo_Handler;
     Name    : League.Strings.Universal_String;
     Value   : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Put_Line
       (">>> (Internal_Entity_Decl): '" & Name & "' => '" & Value & "'");
   end Internal_Entity_Decl;

   ----------------------------
   -- Processing_Instruction --
   ----------------------------

   overriding procedure Processing_Instruction
    (Self    : in out Demo_Handler;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Put_Line
       (">>> (Processing_Instruction): '" & Target & "' '" & Data & "'");
   end Processing_Instruction;

   --------------------
   -- Resolve_Entity --
   --------------------

   overriding procedure Resolve_Entity
    (Self      : in out Demo_Handler;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Text      : out League.Strings.Universal_String;
     Success   : in out Boolean) is
   begin
      Text :=
        Read_File
         (Ada.Characters.Conversions.To_String
           (System_Id.To_Wide_Wide_String));
--      Put_Line (Text);
   end Resolve_Entity;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Demo_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : Matreshka.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
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
   end Start_Element;

   --------------------------
   -- Unparsed_Entity_Decl --
   --------------------------

   overriding procedure Unparsed_Entity_Decl
    (Self          : in out Demo_Handler;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String;
     Success       : in out Boolean) is
   begin
      Put_Line
       (">>> (Unparsed_Entity_Decl): '"
          & Name & "' => '" & Public_Id & "' '" & System_Id & "' '"
          & Notation_Name & "'");
   end Unparsed_Entity_Decl;

end Demo_Handlers;
