with Ada.Characters.Conversions;

with CMOF.Internals.Attributes;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Tables;
with CMOF.Internals.Types;

package body CMOF.Internals.Reflection is

   use CMOF.Internals.Metamodel;
   use CMOF.Internals.Tables;
   use CMOF.Internals.Types;

--   function Get
--    (Self     : CMOF_Element;
--     Property : CMOF_Property) return Collection_Of_CMOF_Element;

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

   ---------
   -- Set --
   ---------

   procedure Set
    (Self     : CMOF_Element;
     Property : CMOF_Property;
     Value    : AMF.Values.Value)
   is
      use CMOF.Internals.Attributes;

      procedure Set_CMOF_Class;

      procedure Set_CMOF_Package;

      procedure Set_CMOF_Primitive_Type;

      --------------------------
      -- Set_CMOF_Association --
      --------------------------

      procedure Set_CMOF_Association is
      begin
         if Property = MP_Cmof_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_Cmof_Association_Is_Derived then
            Internal_Set_Is_Derived (Self, CMOF_Boolean (Value.Boolean_Value));

         else
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
         end if;
      end Set_CMOF_Association;

      --------------------
      -- Set_CMOF_Class --
      --------------------

      procedure Set_CMOF_Class is
      begin
         if Property = MP_Cmof_Class_Is_Abstract then
            Internal_Set_Is_Abstract (Self, CMOF_Boolean (Value.Boolean_Value));

         elsif Property = MP_Cmof_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         else
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
         end if;
      end Set_CMOF_Class;

      ----------------------
      -- Set_CMOF_Comment --
      ----------------------

      procedure Set_CMOF_Comment is
      begin
         if Property = MP_Cmof_Comment_Body then
            Internal_Set_Body (Self, Value.String_Value);

         else
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
         end if;
      end Set_CMOF_Comment;

      -------------------------
      -- Set_CMOF_Constraint --
      -------------------------

      procedure Set_CMOF_Constraint is
      begin
         if Property = MP_Cmof_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         else
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
         end if;
      end Set_CMOF_Constraint;

      --------------------------
      -- Set_CMOF_Enumeration --
      --------------------------

      procedure Set_CMOF_Enumeration is
      begin
         if Property = MP_Cmof_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         else
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
         end if;
      end Set_CMOF_Enumeration;

      ----------------------------------
      -- Set_CMOF_Enumeration_Literal --
      ----------------------------------

      procedure Set_CMOF_Enumeration_Literal is
      begin
         if Property = MP_Cmof_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         else
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
         end if;
      end Set_CMOF_Enumeration_Literal;

      ------------------------
      -- Set_CMOF_Operation --
      ------------------------

      procedure Set_CMOF_Operation is
      begin
         if Property = MP_Cmof_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_Cmof_Operation_Is_Query then
            Internal_Set_Is_Query (Self, CMOF_Boolean (Value.Boolean_Value));

         else
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
         end if;
      end Set_CMOF_Operation;

      ----------------------
      -- Set_CMOF_Package --
      ----------------------

      procedure Set_CMOF_Package is
      begin
         if Property = MP_Cmof_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         else
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
         end if;
      end Set_CMOF_Package;

      ------------------------
      -- Set_CMOF_Parameter --
      ------------------------

      procedure Set_CMOF_Parameter is
      begin
         if Property = MP_Cmof_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_Cmof_Parameter_Direction then
            null;
            --  XXX Not supported by code generator.

         elsif Property = MP_Cmof_Multiplicity_Element_Upper then
            if Value.Unlimited_Natural_Value.Unlimited then
               Internal_Set_Upper (Self, CMOF_Unlimited_Natural'Last);

            else
               Internal_Set_Upper (Self, CMOF_Unlimited_Natural (Value.Unlimited_Natural_Value.Value));
            end if;

         elsif Property = MP_Cmof_Multiplicity_Element_Lower then
            Internal_Set_Lower (Self, CMOF_Integer (Value.Integer_Value));

         elsif Property = MP_Cmof_Multiplicity_Element_Is_Ordered then
            Internal_Set_Is_Ordered (Self, CMOF_Boolean (Value.Boolean_Value));

         else
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
         end if;
      end Set_CMOF_Parameter;

      -----------------------------
      -- Set_CMOF_Primitive_Type --
      -----------------------------

      procedure Set_CMOF_Primitive_Type is
      begin
         if Property = MP_Cmof_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         else
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
         end if;
      end Set_CMOF_Primitive_Type;

      -----------------------
      -- Set_CMOF_Property --
      -----------------------

      procedure Set_CMOF_Property is
      begin
         if Property = MP_Cmof_Named_Element_Name then
            Internal_Set_Name (Self, Value.String_Value);

         elsif Property = MP_Cmof_Multiplicity_Element_Upper then
            if Value.Unlimited_Natural_Value.Unlimited then
               Internal_Set_Upper (Self, CMOF_Unlimited_Natural'Last);

            else
               Internal_Set_Upper (Self, CMOF_Unlimited_Natural (Value.Unlimited_Natural_Value.Value));
            end if;

         elsif Property = MP_Cmof_Multiplicity_Element_Lower then
            Internal_Set_Lower (Self, CMOF_Integer (Value.Integer_Value));

         elsif Property = MP_Cmof_Property_Is_Read_Only then
            Internal_Set_Is_Read_Only (Self, CMOF_Boolean (Value.Boolean_Value));

         elsif Property = MP_Cmof_Property_Is_Derived then
            Internal_Set_Is_Derived (Self, CMOF_Boolean (Value.Boolean_Value));

         elsif Property = MP_Cmof_Property_Is_Derived_Union then
            Internal_Set_Is_Derived_Union (Self, CMOF_Boolean (Value.Boolean_Value));

         elsif Property = MP_Cmof_Property_Default then
            Internal_Set_Default (Self, Value.String_Value);

         elsif Property = MP_Cmof_Property_Is_Composite then
            Internal_Set_Is_Composite (Self, CMOF_Boolean (Value.Boolean_Value));

         elsif Property = MP_Cmof_Multiplicity_Element_Is_Ordered then
            Internal_Set_Is_Ordered (Self, CMOF_Boolean (Value.Boolean_Value));

         elsif Property = MP_Cmof_Multiplicity_Element_Is_Unique then
            Internal_Set_Is_Unique (Self, CMOF_Boolean (Value.Boolean_Value));

         elsif Property = MP_Cmof_Named_Element_Visibility then
            null;
            --  XXX Not supported by code generator.

         else
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
         end if;
      end Set_CMOF_Property;

   begin
      case Elements.Table (Self).Kind is
         when E_None =>
            null;

         when E_Association =>
            Set_CMOF_Association;

         when E_Class =>
            Set_CMOF_Class;

         when E_Comment =>
            Set_CMOF_Comment;

         when E_Constraint =>
            Set_CMOF_Constraint;

--         when E_Data_Type =>
--            return MC_CMOF_Data_Type;
--
--         when E_Element_Import =>
--            return MC_CMOF_Element_Import;

         when E_Enumeration =>
            Set_CMOF_Enumeration;

         when E_Enumeration_Literal =>
            Set_CMOF_Enumeration_Literal;

--         when E_Expression =>
--            return MC_CMOF_Expression;
--
--         when E_Opaque_Expression =>
--            return MC_CMOF_Opaque_Expression;

         when E_Operation =>
            Set_CMOF_Operation;

         when E_Package =>
            Set_CMOF_Package;

--         when E_Package_Import =>
--            return MC_CMOF_Package_Import;
--
--         when E_Package_Merge =>
--            return MC_CMOF_Package_Merge;

         when E_Parameter =>
            Set_CMOF_Parameter;

         when E_Primitive_Type =>
            Set_CMOF_Primitive_Type;

         when E_Property =>
            Set_CMOF_Property;

         when others =>
            raise Program_Error
              with
                Ada.Characters.Conversions.To_String (Internal_Get_Name (Get_Meta_Class (Self)).To_Wide_Wide_String)
                  & "::"
                  & Ada.Characters.Conversions.To_String (Internal_Get_Name (Property).To_Wide_Wide_String);
      end case;
   end Set;

end CMOF.Internals.Reflection;
