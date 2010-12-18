
package CMOF.Internals.Links is

   procedure Internal_Create_Link
    (Association     : CMOF_Association;
     First_Element   : CMOF_Element;
     First_Property  : CMOF_Property;
     Second_Element  : CMOF_Element;
     Second_Property : CMOF_Property);
   --  Creates link between two elements. It uses only Property::upper
   --  attribute and intended to be used to construct initial CMOF
   --  metametamodel only.

end CMOF.Internals.Links;
