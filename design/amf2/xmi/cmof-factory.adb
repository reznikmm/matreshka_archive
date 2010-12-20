with CMOF.Internals.Attributes;
with CMOF.Internals.Collections;
with CMOF.Internals.Constructors;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Links;

package body CMOF.Factory is

   use CMOF.Internals.Metamodel;

   ------------
   -- Create --
   ------------

   function Create (Meta_Class : CMOF_Class) return CMOF_Element is
   begin
      if Meta_Class = MC_CMOF_Association then
         return CMOF.Internals.Constructors.Create_Association;

      elsif Meta_Class = MC_CMOF_Class then
         return CMOF.Internals.Constructors.Create_Class;

      elsif Meta_Class = MC_CMOF_Comment then
         return CMOF.Internals.Constructors.Create_Comment;

      elsif Meta_Class = MC_CMOF_Constraint then
         return CMOF.Internals.Constructors.Create_Constraint;

      elsif Meta_Class = MC_CMOF_Data_Type then
         return CMOF.Internals.Constructors.Create_Data_Type;

      elsif Meta_Class = MC_CMOF_Element_Import then
         return CMOF.Internals.Constructors.Create_Element_Import;

      elsif Meta_Class = MC_CMOF_Enumeration then
         return CMOF.Internals.Constructors.Create_Enumeration;

      elsif Meta_Class = MC_CMOF_Enumeration_Literal then
         return CMOF.Internals.Constructors.Create_Enumeration_Literal;

      elsif Meta_Class = MC_CMOF_Expression then
         return CMOF.Internals.Constructors.Create_Expression;

      elsif Meta_Class = MC_CMOF_Opaque_Expression then
         return CMOF.Internals.Constructors.Create_Opaque_Expression;

      elsif Meta_Class = MC_CMOF_Operation then
         return CMOF.Internals.Constructors.Create_Operation;

      elsif Meta_Class = MC_CMOF_Package then
         return CMOF.Internals.Constructors.Create_Package;

      elsif Meta_Class = MC_CMOF_Package_Import then
         return CMOF.Internals.Constructors.Create_Package_Import;

      elsif Meta_Class = MC_CMOF_Package_Merge then
         return CMOF.Internals.Constructors.Create_Package_Merge;

      elsif Meta_Class = MC_CMOF_Parameter then
         return CMOF.Internals.Constructors.Create_Parameter;

      elsif Meta_Class = MC_CMOF_Primitive_Type then
         return CMOF.Internals.Constructors.Create_Primitive_Type;

      elsif Meta_Class = MC_CMOF_Property then
         return CMOF.Internals.Constructors.Create_Property;
      end if;

      raise Program_Error with "Unknown CMOF class";
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   function Create_From_String
    (Data_Type : CMOF_Data_Type;
     Image     : League.Strings.Universal_String) return AMF.Values.Value
   is
      use type League.Strings.Universal_String;

   begin
      if Data_Type = MC_CMOF_Boolean then
         return
          (AMF.Values.Value_Boolean,
           Boolean'Wide_Wide_Value (Image.To_Wide_Wide_String));

      elsif Data_Type = MC_CMOF_Integer then
         return
          (AMF.Values.Value_Integer,
           Integer'Wide_Wide_Value (Image.To_Wide_Wide_String));

      elsif Data_Type = MC_CMOF_Unlimited_Natural then
         if Image = League.Strings.To_Universal_String ("*") then
            return (AMF.Values.Value_Unlimited_Natural, (Unlimited => True));

         else
            return
             (AMF.Values.Value_Unlimited_Natural,
              (False, Natural'Wide_Wide_Value (Image.To_Wide_Wide_String)));
         end if;

      elsif Data_Type = MC_CMOF_String then
         return (AMF.Values.Value_String, Image);

      elsif Data_Type = MC_CMOF_Parameter_Direction_Kind then
         if Image = League.Strings.To_Universal_String ("in") then
            return
             (AMF.Values.Value_CMOF_Parameter_Direction_Kind,
              CMOF.In_Direction);

         elsif Image = League.Strings.To_Universal_String ("inout") then
            return
             (AMF.Values.Value_CMOF_Parameter_Direction_Kind,
              CMOF.In_Out_Direction);

         elsif Image = League.Strings.To_Universal_String ("out") then
            return
             (AMF.Values.Value_CMOF_Parameter_Direction_Kind,
              CMOF.Out_Direction);

         elsif Image = League.Strings.To_Universal_String ("return") then
            return
             (AMF.Values.Value_CMOF_Parameter_Direction_Kind,
              CMOF.Return_Direction);

         else
            raise Constraint_Error;
         end if;

      elsif Data_Type = MC_CMOF_Visibility_Kind then
         if Image = League.Strings.To_Universal_String ("public") then
            return
             (AMF.Values.Value_CMOF_Visibility_Kind,
              CMOF.Public_Visibility);

         elsif Image = League.Strings.To_Universal_String ("private") then
            return
             (AMF.Values.Value_CMOF_Visibility_Kind,
              CMOF.Private_Visibility);

         elsif Image = League.Strings.To_Universal_String ("protected") then
            return
             (AMF.Values.Value_CMOF_Visibility_Kind,
              CMOF.Protected_Visibility);

         elsif Image = League.Strings.To_Universal_String ("package") then
            return
             (AMF.Values.Value_CMOF_Visibility_Kind,
              CMOF.Package_Visibility);

         else
            raise Constraint_Error;
         end if;

      else
         raise Program_Error with "Unknown CMOF data type";
      end if;
   end Create_From_String;

   -----------------
   -- Create_Link --
   -----------------

   procedure Create_Link
    (Association    : CMOF_Association;
     First_Element  : CMOF_Element;
     Second_Element : CMOF_Element)
   is
      Member_End      : constant Ordered_Set_Of_CMOF_Property
        := CMOF.Internals.Attributes.Internal_Get_Member_End (Association);

   begin
      CMOF.Internals.Links.Internal_Create_Link
       (Association,
        First_Element,
        CMOF.Internals.Collections.Element (Member_End, 1),
        Second_Element,
        CMOF.Internals.Collections.Element (Member_End, 2));
   end Create_Link;

   -----------------------
   -- Convert_To_String --
   -----------------------

   function Convert_To_String
    (Data_Type : CMOF_Data_Type;
     Value     : AMF.Values.Value) return League.Strings.Universal_String is
   begin
      if Data_Type = MC_CMOF_String then
         return Value.String_Value;

      else
         return League.Strings.To_Universal_String ("Value must be here");
      end if;
   end Convert_To_String;

end CMOF.Factory;
