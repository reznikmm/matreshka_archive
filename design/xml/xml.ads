with Ada.Containers.Vectors;
with Ada.Strings.Unbounded;

package Xml is

   type XML_Element_Node is record
      Name : Ada.Strings.Unbounded.Unbounded_String;
   end record;

   type XML_Element_Node_Access is access all XML_Element_Node;

   package XML_Element_Node_Access_Vectors is
     new Ada.Containers.Vectors (Positive, XML_Element_Node_Access);

end Xml;
