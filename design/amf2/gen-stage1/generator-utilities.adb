
package body Generator.Utilities is

   use Ada.Strings.Unbounded;

   --------------------------------
   -- Constant_Name_In_Metamodel --
   --------------------------------

   function Constant_Name_In_Metamodel
    (Element : not null Association_Access) return String
   is
      First_End   : constant Property_Access :=
        Property_Access (To_Element (Element.First_End));
      Second_End  : constant Property_Access :=
        Property_Access (To_Element (Element.Second_End));
      First_Name  : constant String :=
        To_Ada_Identifier (To_Element (Element.First_End).Name);
      Second_Name : constant String :=
        To_Ada_Identifier (To_Element (Element.Second_End).Name);
      Ada_Name    : Unbounded_String;

   begin
      if First_Name'Length = 0 then
         Ada_Name :=
           To_Unbounded_String
             (To_Ada_Identifier (Get_Type (First_End).Name));

      else
         Ada_Name := To_Unbounded_String (First_Name);
      end if;

      Append (Ada_Name, '_');

      if Second_Name'Length = 0 then
         Append
           (Ada_Name,
            To_Ada_Identifier (Get_Type (Second_End).Name));

      else
         Append (Ada_Name, Second_Name);
      end if;

      return "MA_Cmof_" & To_String (Ada_Name);
   end Constant_Name_In_Metamodel;

   --------------------------------
   -- Constant_Name_In_Metamodel --
   --------------------------------

   function Constant_Name_In_Metamodel
    (Element : not null Class_Access) return String is
   begin
      return "MC_Cmof_" & To_Ada_Identifier (Element.Name);
   end Constant_Name_In_Metamodel;

   --------------------------------
   -- Constant_Name_In_Metamodel --
   --------------------------------

   function Constant_Name_In_Metamodel
    (Element : not null Property_Access) return String
   is
      Ada_Name   : Unbounded_String;

   begin
      if Element.Owned_Association /= null then
         declare
            First_End  : constant Property_Access :=
              Property_Access
               (To_Element (Element.Owned_Association.First_End));
            Second_End : constant Property_Access :=
              Property_Access
               (To_Element (Element.Owned_Association.Second_End));

         begin
            if Length (First_End.Name) = 0 then
               Append
                 (Ada_Name, To_Ada_Identifier (Get_Type (First_End).Name));

            else
              Append (Ada_Name, To_Ada_Identifier (First_End.Name));
            end if;

            Append (Ada_Name, '_');

            if Length (Second_End.Name) = 0 then
               Append
                 (Ada_Name, To_Ada_Identifier (Get_Type (Second_End).Name));

            else
               Append
                 (Ada_Name, To_Ada_Identifier (Second_End.Name));
            end if;
         end;

      else
         Ada_Name :=
           To_Unbounded_String
            (To_Ada_Identifier (Element.Owned_Class.Name)
               & '_'
               & To_Ada_Identifier (Element.Name));
      end if;

      return "MP_Cmof_" & To_String (Ada_Name);
   end Constant_Name_In_Metamodel;

   ----------------------
   -- Has_Boolean_Type --
   ----------------------

   function Has_Boolean_Type
    (Property : not null Property_Access) return Boolean is
   begin
      return Property.Type_Id = "Core-PrimitiveTypes-Boolean";
   end Has_Boolean_Type;

   ----------------------
   -- Has_Integer_Type --
   ----------------------

   function Has_Integer_Type
    (Property : not null Property_Access) return Boolean is
   begin
      return Property.Type_Id = "Core-PrimitiveTypes-Integer";
   end Has_Integer_Type;

   --------------------------------
   -- Has_Unlimited_Natural_Type --
   --------------------------------

   function Has_Unlimited_Natural_Type
    (Property : not null Property_Access) return Boolean is
   begin
      return Property.Type_Id = "Core-PrimitiveTypes-UnlimitedNatural";
   end Has_Unlimited_Natural_Type;

   ---------------------
   -- Has_String_Type --
   ---------------------

   function Has_String_Type
    (Property : not null Property_Access) return Boolean is
   begin
      return Property.Type_Id = "Core-PrimitiveTypes-String";
   end Has_String_Type;

end Generator.Utilities;
