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

   ---------------------
   -- Internal_Append --
   ---------------------

   procedure Internal_Append
    (Collection : Collection_Of_CMOF_Element;
     Element    : CMOF_Element)
   is
      Head        : Collection_Element_Identifier
        := Tables.Collections.Table (Collection).Head;
      Tail        : Collection_Element_Identifier
        := Tables.Collections.Table (Collection).Tail;
      Previous    : Collection_Element_Identifier
        := Tables.Collections.Table (Collection).Tail;
      Next        : Collection_Element_Identifier := 0;
      New_Element : Collection_Element_Identifier;

   begin
      Collection_Elements.Increment_Last;
      New_Element := Collection_Elements.Last;

      if Head = 0 then
         --  List is empty.

         Head := New_Element;
         Tail := New_Element;

         Tables.Collections.Table (Collection).Head := Head;
         Tables.Collections.Table (Collection).Tail := Tail;

      else
         Tail := New_Element;

         Tables.Collections.Table (Collection).Tail := Tail;
         Collection_Elements.Table (Previous).Next := New_Element;
      end if;

      Collection_Elements.Table (New_Element) := (Element, Previous, Next);
   end Internal_Append;

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
