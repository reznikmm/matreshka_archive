with CMOF.Internals.Tables;

package body CMOF.Internals.Collections is

   use CMOF.Internals.Tables;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : Collection_Of_CMOF_Element;
     Index : Positive) return CMOF_Element
   is
      Current : Collection_Element_Identifier
        := Tables.Collections.Table (Self).Head;

   begin
      for J in 2 .. Index loop
         exit when Current = 0;

         Current := Collection_Elements.Table (Current).Next;
      end loop;

      if Current = 0 then
         raise Constraint_Error;

      else
         return Collection_Elements.Table (Current).Element;
      end if;
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
