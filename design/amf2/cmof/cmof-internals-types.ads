--  Datatypes to use in internal representation of the models.

package CMOF.Internals.Types is

   pragma Pure;

   --  Node kinds enumeration is constructed on the base of Class_Kinds by
   --  excluding all abstract classes and adding N_None.

   type Element_Kinds is
     (E_None,
      E_Association,
      E_Class,
      E_Comment,
      E_Constraint,
      E_Data_Type,
      E_Element_Import,
      E_Enumeration,
      E_Enumeration_Literal,
      E_Expression,
      E_Opaque_Expression,
      E_Operation,
      E_Package,
      E_Package_Import,
      E_Package_Merge,
      E_Parameter,
      E_Primitive_Type,
      E_Property);

   subtype Class_Element_Kinds is Element_Kinds
     range E_Association .. E_Property;

   type Collection_Index is new Interfaces.Integer_8;
   type Member_Index is new Interfaces.Integer_8;

end CMOF.Internals.Types;
