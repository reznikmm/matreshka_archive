with CMOF.Internals.Metamodel;
with CMOF.Internals.Tables;
with CMOF.Internals.Types;

package body CMOF.Internals.Reflection is

   use CMOF.Internals.Metamodel;
   use CMOF.Internals.Tables;
   use CMOF.Internals.Types;

   --------------------
   -- Get_Meta_Class --
   --------------------

   function Get_Meta_Class (Self : CMOF_Element) return CMOF_Class is
   begin
      case Elements.Table (Self).Kind is
         when E_None =>
            return Null_CMOF_Element;

         when E_Association =>
            return MC_CMOF_Association;

         when E_Class =>
            return MC_CMOF_Class;

         when E_Comment =>
            return MC_CMOF_Comment;

         when E_Constraint =>
            return MC_CMOF_Constraint;

         when E_Data_Type =>
            return MC_CMOF_Data_Type;

         when E_Element_Import =>
            return MC_CMOF_Element_Import;

         when E_Enumeration =>
            return MC_CMOF_Enumeration;

         when E_Enumeration_Literal =>
            return MC_CMOF_Enumeration_Literal;

         when E_Expression =>
            return MC_CMOF_Expression;

         when E_Opaque_Expression =>
            return MC_CMOF_Opaque_Expression;

         when E_Operation =>
            return MC_CMOF_Operation;

         when E_Package =>
            return MC_CMOF_Package;

         when E_Package_Import =>
            return MC_CMOF_Package_Import;

         when E_Package_Merge =>
            return MC_CMOF_Package_Merge;

         when E_Parameter =>
            return MC_CMOF_Parameter;

         when E_Primitive_Type =>
            return MC_CMOF_Primitive_Type;

         when E_Property =>
            return MC_CMOF_Property;
      end case;
   end Get_Meta_Class;

--   function Get
--    (Self     : CMOF_Element;
--     Property : CMOF_Property) return Collection_Of_CMOF_Element;

end CMOF.Internals.Reflection;
