with CMOF.Internals.Collections;

package body CMOF.Collections is

   -------------
   -- Element --
   -------------

   function Element
    (Self : Collection_Of_CMOF_Element; Index : Positive) return CMOF_Element is
   begin
      return CMOF.Internals.Collections.Element (Self, Index);
   end Element;

   ------------
   -- Length --
   ------------

   function Length (Self : Collection_Of_CMOF_Element) return Natural is
   begin
      return CMOF.Internals.Collections.Length (Self);
   end Length;

end CMOF.Collections;
