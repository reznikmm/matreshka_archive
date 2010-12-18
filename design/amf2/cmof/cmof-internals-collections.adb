with CMOF.Internals.Tables;

package body CMOF.Internals.Collections is

   use CMOF.Internals.Tables;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : Collection_Of_CMOF_Element;
     Index : Positive) return CMOF_Element is
   begin
      return 0;
   end Element;

   ------------
   -- Length --
   ------------

   function Length (Self : Collection_Of_CMOF_Element) return Natural is
      Current : Collection_Element_Identifier
        := Tables.Collections.Table (Self).Head;
      Aux     : Natural := 0;

   begin
      while Current /= 0 loop
         Aux     := Aux + 1;
         Current := Collection_Elements.Table (Current).Next;
      end loop;

      return Aux;
   end Length;

end CMOF.Internals.Collections;
