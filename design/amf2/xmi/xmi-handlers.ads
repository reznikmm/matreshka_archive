private with Ada.Containers.Vectors;

private with League.Strings;
private with XML.SAX.Attributes;
with XML.SAX.Content_Handlers;

private with CMOF;

package XMI.Handlers is

   type XMI_Handler is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler with private;

private

   package Element_Vectors is
     new Ada.Containers.Vectors (Positive, CMOF.CMOF_Element, CMOF."=");

   type XMI_Handler is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler with record
      Current      : CMOF.CMOF_Element := CMOF.Null_CMOF_Element;
      Stack        : Element_Vectors.Vector;
      Attribute    : CMOF.CMOF_Property := CMOF.Null_CMOF_Element;
      Text         : League.Strings.Universal_String;
      Collect_Text : Boolean := False;
   end record;

   overriding procedure Characters
    (Self    : in out XMI_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

--   overriding procedure End_Document
--    (Self    : in out XMI_Handler;
--     Success : in out Boolean) is null;

   overriding procedure End_Element
    (Self           : in out XMI_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

--   overriding procedure End_Prefix_Mapping
--    (Self    : in out XMI_Handler;
--     Prefix  : League.Strings.Universal_String;
--     Success : in out Boolean) is null;

   overriding function Error_String
    (Self : XMI_Handler) return League.Strings.Universal_String;

--   overriding procedure Ignorable_Whitespace
--    (Self    : in out XMI_Handler;
--     Text    : League.Strings.Universal_String;
--     Success : in out Boolean) is null;
--
--   overriding procedure Processing_Instruction
--    (Self    : in out XMI_Handler;
--     Target  : League.Strings.Universal_String;
--     Data    : League.Strings.Universal_String;
--     Success : in out Boolean) is null;
--
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

   overriding procedure Start_Element
    (Self           : in out XMI_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

   overriding procedure Start_Prefix_Mapping
    (Self          : in out XMI_Handler;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean);

end XMI.Handlers;
