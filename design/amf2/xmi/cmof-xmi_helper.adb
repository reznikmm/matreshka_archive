with CMOF.Classes;
with CMOF.Collections;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Subclassing;
with CMOF.Named_Elements;
with CMOF.Packages;

package body CMOF.XMI_Helper is

   ------------------
   -- Is_Data_Type --
   ------------------

   function Is_Data_Type (Element : CMOF_Element) return Boolean is
   begin
      return CMOF.Internals.Subclassing.Is_Data_Type (Element);
   end Is_Data_Type;

   -------------
   -- Resolve --
   -------------

   function Resolve
    (Name : League.Strings.Universal_String) return CMOF_Element
   is
      use type League.Strings.Universal_String;

      use CMOF.Collections;
      use CMOF.Named_Elements;
      use CMOF.Packages;

      E : constant Set_Of_CMOF_Packageable_Element
        := Get_Packaged_Element (CMOF.Internals.Metamodel.MM_CMOF);

   begin
      for J in 1 .. Length (E) loop
         if Get_Name (Element (E, J)) = Name then
            return Element (E, J);
         end if;
      end loop;

      raise Program_Error with "Unknown CMOF class";
   end Resolve;

   -----------------------
   -- Resolve_Attribute --
   -----------------------

   function Resolve_Attribute
    (Class : CMOF_Class;
     Name  : League.Strings.Universal_String) return CMOF_Element
   is
      use type League.Strings.Universal_String;

      use CMOF.Classes;
      use CMOF.Collections;
      use CMOF.Named_Elements;

      E : constant Ordered_Set_Of_CMOF_Property := Get_Owned_Attribute (Class);
      S : constant Set_Of_CMOF_Class            := Get_Super_Class (Class);
      A : CMOF_Element;

   begin
      for J in 1 .. Length (E) loop
         if Get_Name (Element (E, J)) = Name then
            return Element (E, J);
         end if;
      end loop;

      for J in 1 .. Length (S) loop
         A := Resolve_Attribute (Element (S, J), Name);

         if A /= Null_CMOF_Element then
            return A;
         end if;
      end loop;

      return Null_CMOF_Element;
   end Resolve_Attribute;

end CMOF.XMI_Helper;
