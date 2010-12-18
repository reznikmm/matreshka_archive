
package CMOF.Collections is

   function Length (Self : Collection_Of_CMOF_Element) return Natural;

   function Element
    (Self : Collection_Of_CMOF_Element; Index : Positive) return CMOF_Element;

end CMOF.Collections;
