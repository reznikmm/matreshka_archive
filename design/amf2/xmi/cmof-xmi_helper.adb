with CMOF.Collections;
with CMOF.Internals.Metamodel;
with CMOF.Named_Elements;
with CMOF.Packages;

package body CMOF.XMI_Helper is

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

end CMOF.XMI_Helper;
