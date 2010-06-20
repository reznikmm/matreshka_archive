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

   -------------
   -- End_DTD --
   -------------

   overriding function End_DTD
    (Self : not null access Demo_Handler)
       return Boolean is
   begin
      return True;
   end End_DTD;

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

   -----------------
   -- Start_CDATA --
   -----------------

   overriding function Start_CDATA
    (Self : not null access Demo_Handler)
       return Boolean is
   begin
      return True;
   end Start_CDATA;

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
