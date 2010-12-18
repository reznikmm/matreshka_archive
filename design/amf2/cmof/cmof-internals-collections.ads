
package CMOF.Internals.Collections is

   function Length (Self : Collection_Of_CMOF_Element) return Natural;

   function Element
    (Self : Collection_Of_CMOF_Element; Index : Positive) return CMOF_Element;

   procedure Append
    (Collection : Collection_Of_CMOF_Element;
     Element    : CMOF_Element);
   --  Appends element to collection.

end CMOF.Internals.Collections;
