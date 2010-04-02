with Ada.Strings.Wide_Wide_Unbounded;

package Sax.Content_Handlers is

   type Sax_Content_Handler is limited interface;

   not overriding procedure Characters
    (Self : not null access Sax_Content_Handler;
     Text : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop : in out Boolean)
       is null;

   not overriding procedure End_Document
    (Self : not null access Sax_Content_Handler;
     Stop : in out Boolean)
       is null;

--   function End_Element
--    (Self          : not null access Sax_Content_Handler;
--     Namespace_URI : Ada.Strings.Unbounded;
--     Local_Name    : Ada.Strings.Unbounded;
--     Q_String      : Ada.Strings.Unbounded)
--       return Boolean
--         is abstract;
--
--   function End_Prefix_Mapping
--    (Self   : not null access Sax_Content_Handler;
--     Prefix : Ada.Strings.Unbounded)
--       return Boolean
--         is abstract;

   not overriding function Error_String
    (Self : not null access constant Sax_Content_Handler)
       return Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String
         is abstract;

   not overriding procedure Ignorable_Whitespace
    (Self : not null access Sax_Content_Handler;
     Text : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop : in out Boolean)
       is null;

   not overriding procedure Processing_Instruction
    (Self   : not null access Sax_Content_Handler;
     Target : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Data   : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop   : in out Boolean)
       is null;

----   function Set_Document_Locator (
----   virtual void setDocumentLocator ( QXmlLocator * locator ) = 0
--
--   function Skipped_Entity
--    (Self : not null access Sax_Content_Handler;
--     Name : Ada.Strings.Unbounded)
--       return Boolean
--         is abstract;

   not overriding procedure Start_Document
    (Self : not null access Sax_Content_Handler;
     Stop : in out Boolean)
       is null;

--   function Start_Element
--    (Self          : not null access Sax_Content_Handler;
--     Namespace_URI : Ada.Strings.Unbounded;
--     Local_Name    : Ada.Strings.Unbounded;
--     Q_Name        : Ada.Strings.Unbounded;
--     Attributes    : Sax_Attributes'Class)
--       return Boolean
--         is abstract;
--
--   function Start_Prefix_Mapping
--    (Self   : not null access Sax_Content_Handler;
--     Prefix : Ada.Strings.Unbounded;
--     Uri    : Ada.Strings.Unbounded)
--       return Boolean
--         is abstract;

end Sax.Content_Handlers;
