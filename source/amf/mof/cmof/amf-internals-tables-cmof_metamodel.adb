------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.CMOF;
with AMF.Internals.Extents;
with AMF.Internals.Links;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Constructors;
with AMF.Internals.Tables.CMOF_String_Data_00;
with AMF.Internals.Tables.CMOF_String_Data_01;
with AMF.Internals.Tables.CMOF_String_Data_02;

package body AMF.Internals.Tables.CMOF_Metamodel is

   Base : AMF.Internals.CMOF_Element := 0;

   ------------------
   -- MM_CMOF_CMOF --
   ------------------

   function MM_CMOF_CMOF return AMF.Internals.CMOF_Element is
   begin
      return Base + 189;
   end MM_CMOF_CMOF;

   ---------------------
   -- MC_CMOF_Boolean --
   ---------------------

   function MC_CMOF_Boolean return AMF.Internals.CMOF_Element is
   begin
      return Base + 192;
   end MC_CMOF_Boolean;

   ---------------------
   -- MC_CMOF_Integer --
   ---------------------

   function MC_CMOF_Integer return AMF.Internals.CMOF_Element is
   begin
      return Base + 190;
   end MC_CMOF_Integer;

   --------------------------------------
   -- MC_CMOF_Parameter_Direction_Kind --
   --------------------------------------

   function MC_CMOF_Parameter_Direction_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 737;
   end MC_CMOF_Parameter_Direction_Kind;

   --------------------
   -- MC_CMOF_String --
   --------------------

   function MC_CMOF_String return AMF.Internals.CMOF_Element is
   begin
      return Base + 194;
   end MC_CMOF_String;

   -------------------------------
   -- MC_CMOF_Unlimited_Natural --
   -------------------------------

   function MC_CMOF_Unlimited_Natural return AMF.Internals.CMOF_Element is
   begin
      return Base + 196;
   end MC_CMOF_Unlimited_Natural;

   -----------------------------
   -- MC_CMOF_Visibility_Kind --
   -----------------------------

   function MC_CMOF_Visibility_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 747;
   end MC_CMOF_Visibility_Kind;

   -------------------------
   -- MC_CMOF_Association --
   -------------------------

   function MC_CMOF_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MC_CMOF_Association;

   --------------------------------
   -- MC_CMOF_Behavioral_Feature --
   --------------------------------

   function MC_CMOF_Behavioral_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 2;
   end MC_CMOF_Behavioral_Feature;

   -------------------
   -- MC_CMOF_Class --
   -------------------

   function MC_CMOF_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 3;
   end MC_CMOF_Class;

   ------------------------
   -- MC_CMOF_Classifier --
   ------------------------

   function MC_CMOF_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 4;
   end MC_CMOF_Classifier;

   ---------------------
   -- MC_CMOF_Comment --
   ---------------------

   function MC_CMOF_Comment return AMF.Internals.CMOF_Element is
   begin
      return Base + 5;
   end MC_CMOF_Comment;

   ------------------------
   -- MC_CMOF_Constraint --
   ------------------------

   function MC_CMOF_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 6;
   end MC_CMOF_Constraint;

   -----------------------
   -- MC_CMOF_Data_Type --
   -----------------------

   function MC_CMOF_Data_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 7;
   end MC_CMOF_Data_Type;

   -----------------------------------
   -- MC_CMOF_Directed_Relationship --
   -----------------------------------

   function MC_CMOF_Directed_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 8;
   end MC_CMOF_Directed_Relationship;

   ---------------------
   -- MC_CMOF_Element --
   ---------------------

   function MC_CMOF_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 9;
   end MC_CMOF_Element;

   ----------------------------
   -- MC_CMOF_Element_Import --
   ----------------------------

   function MC_CMOF_Element_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 10;
   end MC_CMOF_Element_Import;

   -------------------------
   -- MC_CMOF_Enumeration --
   -------------------------

   function MC_CMOF_Enumeration return AMF.Internals.CMOF_Element is
   begin
      return Base + 11;
   end MC_CMOF_Enumeration;

   ---------------------------------
   -- MC_CMOF_Enumeration_Literal --
   ---------------------------------

   function MC_CMOF_Enumeration_Literal return AMF.Internals.CMOF_Element is
   begin
      return Base + 12;
   end MC_CMOF_Enumeration_Literal;

   ------------------------
   -- MC_CMOF_Expression --
   ------------------------

   function MC_CMOF_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 13;
   end MC_CMOF_Expression;

   ---------------------
   -- MC_CMOF_Feature --
   ---------------------

   function MC_CMOF_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 14;
   end MC_CMOF_Feature;

   ----------------------------------
   -- MC_CMOF_Multiplicity_Element --
   ----------------------------------

   function MC_CMOF_Multiplicity_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 15;
   end MC_CMOF_Multiplicity_Element;

   ---------------------------
   -- MC_CMOF_Named_Element --
   ---------------------------

   function MC_CMOF_Named_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 16;
   end MC_CMOF_Named_Element;

   -----------------------
   -- MC_CMOF_Namespace --
   -----------------------

   function MC_CMOF_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 17;
   end MC_CMOF_Namespace;

   -------------------------------
   -- MC_CMOF_Opaque_Expression --
   -------------------------------

   function MC_CMOF_Opaque_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 18;
   end MC_CMOF_Opaque_Expression;

   -----------------------
   -- MC_CMOF_Operation --
   -----------------------

   function MC_CMOF_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 19;
   end MC_CMOF_Operation;

   ---------------------
   -- MC_CMOF_Package --
   ---------------------

   function MC_CMOF_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 20;
   end MC_CMOF_Package;

   ----------------------------
   -- MC_CMOF_Package_Import --
   ----------------------------

   function MC_CMOF_Package_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 21;
   end MC_CMOF_Package_Import;

   ---------------------------
   -- MC_CMOF_Package_Merge --
   ---------------------------

   function MC_CMOF_Package_Merge return AMF.Internals.CMOF_Element is
   begin
      return Base + 22;
   end MC_CMOF_Package_Merge;

   ---------------------------------
   -- MC_CMOF_Packageable_Element --
   ---------------------------------

   function MC_CMOF_Packageable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 23;
   end MC_CMOF_Packageable_Element;

   -----------------------
   -- MC_CMOF_Parameter --
   -----------------------

   function MC_CMOF_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 24;
   end MC_CMOF_Parameter;

   ----------------------------
   -- MC_CMOF_Primitive_Type --
   ----------------------------

   function MC_CMOF_Primitive_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 25;
   end MC_CMOF_Primitive_Type;

   ----------------------
   -- MC_CMOF_Property --
   ----------------------

   function MC_CMOF_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 26;
   end MC_CMOF_Property;

   ---------------------------------
   -- MC_CMOF_Redefinable_Element --
   ---------------------------------

   function MC_CMOF_Redefinable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 27;
   end MC_CMOF_Redefinable_Element;

   --------------------------
   -- MC_CMOF_Relationship --
   --------------------------

   function MC_CMOF_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 28;
   end MC_CMOF_Relationship;

   --------------------------------
   -- MC_CMOF_Structural_Feature --
   --------------------------------

   function MC_CMOF_Structural_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 29;
   end MC_CMOF_Structural_Feature;

   -----------------
   -- MC_CMOF_Tag --
   -----------------

   function MC_CMOF_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 30;
   end MC_CMOF_Tag;

   ------------------
   -- MC_CMOF_Type --
   ------------------

   function MC_CMOF_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 31;
   end MC_CMOF_Type;

   ---------------------------
   -- MC_CMOF_Typed_Element --
   ---------------------------

   function MC_CMOF_Typed_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 32;
   end MC_CMOF_Typed_Element;

   ---------------------------------
   -- MC_CMOF_Value_Specification --
   ---------------------------------

   function MC_CMOF_Value_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 33;
   end MC_CMOF_Value_Specification;

   ----------------------------------
   -- MP_CMOF_Association_End_Type --
   ----------------------------------

   function MP_CMOF_Association_End_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 34;
   end MP_CMOF_Association_End_Type;

   ------------------------------------
   -- MP_CMOF_Association_Is_Derived --
   ------------------------------------

   function MP_CMOF_Association_Is_Derived return AMF.Internals.CMOF_Element is
   begin
      return Base + 79;
   end MP_CMOF_Association_Is_Derived;

   ------------------------------------
   -- MP_CMOF_Association_Member_End --
   ------------------------------------

   function MP_CMOF_Association_Member_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 35;
   end MP_CMOF_Association_Member_End;

   ---------------------------------------------
   -- MP_CMOF_Association_Navigable_Owned_End --
   ---------------------------------------------

   function MP_CMOF_Association_Navigable_Owned_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 36;
   end MP_CMOF_Association_Navigable_Owned_End;

   -----------------------------------
   -- MP_CMOF_Association_Owned_End --
   -----------------------------------

   function MP_CMOF_Association_Owned_End return AMF.Internals.CMOF_Element is
   begin
      return Base + 37;
   end MP_CMOF_Association_Owned_End;

   ------------------------------------------------
   -- MP_CMOF_Behavioral_Feature_Owned_Parameter --
   ------------------------------------------------

   function MP_CMOF_Behavioral_Feature_Owned_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 38;
   end MP_CMOF_Behavioral_Feature_Owned_Parameter;

   -------------------------------------------------
   -- MP_CMOF_Behavioral_Feature_Raised_Exception --
   -------------------------------------------------

   function MP_CMOF_Behavioral_Feature_Raised_Exception return AMF.Internals.CMOF_Element is
   begin
      return Base + 39;
   end MP_CMOF_Behavioral_Feature_Raised_Exception;

   -------------------------------
   -- MP_CMOF_Class_Is_Abstract --
   -------------------------------

   function MP_CMOF_Class_Is_Abstract return AMF.Internals.CMOF_Element is
   begin
      return Base + 80;
   end MP_CMOF_Class_Is_Abstract;

   -----------------------------------
   -- MP_CMOF_Class_Owned_Attribute --
   -----------------------------------

   function MP_CMOF_Class_Owned_Attribute return AMF.Internals.CMOF_Element is
   begin
      return Base + 40;
   end MP_CMOF_Class_Owned_Attribute;

   -----------------------------------
   -- MP_CMOF_Class_Owned_Operation --
   -----------------------------------

   function MP_CMOF_Class_Owned_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 41;
   end MP_CMOF_Class_Owned_Operation;

   -------------------------------
   -- MP_CMOF_Class_Super_Class --
   -------------------------------

   function MP_CMOF_Class_Super_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 42;
   end MP_CMOF_Class_Super_Class;

   ----------------------------------
   -- MP_CMOF_Classifier_Attribute --
   ----------------------------------

   function MP_CMOF_Classifier_Attribute return AMF.Internals.CMOF_Element is
   begin
      return Base + 43;
   end MP_CMOF_Classifier_Attribute;

   --------------------------------
   -- MP_CMOF_Classifier_Feature --
   --------------------------------

   function MP_CMOF_Classifier_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 44;
   end MP_CMOF_Classifier_Feature;

   --------------------------------
   -- MP_CMOF_Classifier_General --
   --------------------------------

   function MP_CMOF_Classifier_General return AMF.Internals.CMOF_Element is
   begin
      return Base + 45;
   end MP_CMOF_Classifier_General;

   -----------------------------------------
   -- MP_CMOF_Classifier_Inherited_Member --
   -----------------------------------------

   function MP_CMOF_Classifier_Inherited_Member return AMF.Internals.CMOF_Element is
   begin
      return Base + 46;
   end MP_CMOF_Classifier_Inherited_Member;

   ------------------------------------------------
   -- MP_CMOF_Classifier_Is_Final_Specialization --
   ------------------------------------------------

   function MP_CMOF_Classifier_Is_Final_Specialization return AMF.Internals.CMOF_Element is
   begin
      return Base + 81;
   end MP_CMOF_Classifier_Is_Final_Specialization;

   ---------------------------------------
   -- MP_CMOF_Comment_Annotated_Element --
   ---------------------------------------

   function MP_CMOF_Comment_Annotated_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 47;
   end MP_CMOF_Comment_Annotated_Element;

   --------------------------
   -- MP_CMOF_Comment_Body --
   --------------------------

   function MP_CMOF_Comment_Body return AMF.Internals.CMOF_Element is
   begin
      return Base + 82;
   end MP_CMOF_Comment_Body;

   --------------------------------------------
   -- MP_CMOF_Constraint_Constrained_Element --
   --------------------------------------------

   function MP_CMOF_Constraint_Constrained_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 48;
   end MP_CMOF_Constraint_Constrained_Element;

   --------------------------------
   -- MP_CMOF_Constraint_Context --
   --------------------------------

   function MP_CMOF_Constraint_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 83;
   end MP_CMOF_Constraint_Context;

   --------------------------------------
   -- MP_CMOF_Constraint_Specification --
   --------------------------------------

   function MP_CMOF_Constraint_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 84;
   end MP_CMOF_Constraint_Specification;

   ---------------------------------------
   -- MP_CMOF_Data_Type_Owned_Attribute --
   ---------------------------------------

   function MP_CMOF_Data_Type_Owned_Attribute return AMF.Internals.CMOF_Element is
   begin
      return Base + 49;
   end MP_CMOF_Data_Type_Owned_Attribute;

   ---------------------------------------
   -- MP_CMOF_Data_Type_Owned_Operation --
   ---------------------------------------

   function MP_CMOF_Data_Type_Owned_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 50;
   end MP_CMOF_Data_Type_Owned_Operation;

   ------------------------------------------
   -- MP_CMOF_Directed_Relationship_Source --
   ------------------------------------------

   function MP_CMOF_Directed_Relationship_Source return AMF.Internals.CMOF_Element is
   begin
      return Base + 51;
   end MP_CMOF_Directed_Relationship_Source;

   ------------------------------------------
   -- MP_CMOF_Directed_Relationship_Target --
   ------------------------------------------

   function MP_CMOF_Directed_Relationship_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 52;
   end MP_CMOF_Directed_Relationship_Target;

   -----------------------------------
   -- MP_CMOF_Element_Owned_Comment --
   -----------------------------------

   function MP_CMOF_Element_Owned_Comment return AMF.Internals.CMOF_Element is
   begin
      return Base + 53;
   end MP_CMOF_Element_Owned_Comment;

   -----------------------------------
   -- MP_CMOF_Element_Owned_Element --
   -----------------------------------

   function MP_CMOF_Element_Owned_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 54;
   end MP_CMOF_Element_Owned_Element;

   ---------------------------
   -- MP_CMOF_Element_Owner --
   ---------------------------

   function MP_CMOF_Element_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 85;
   end MP_CMOF_Element_Owner;

   ----------------------------------
   -- MP_CMOF_Element_Import_Alias --
   ----------------------------------

   function MP_CMOF_Element_Import_Alias return AMF.Internals.CMOF_Element is
   begin
      return Base + 86;
   end MP_CMOF_Element_Import_Alias;

   ---------------------------------------------
   -- MP_CMOF_Element_Import_Imported_Element --
   ---------------------------------------------

   function MP_CMOF_Element_Import_Imported_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 87;
   end MP_CMOF_Element_Import_Imported_Element;

   ------------------------------------------------
   -- MP_CMOF_Element_Import_Importing_Namespace --
   ------------------------------------------------

   function MP_CMOF_Element_Import_Importing_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 88;
   end MP_CMOF_Element_Import_Importing_Namespace;

   ---------------------------------------
   -- MP_CMOF_Element_Import_Visibility --
   ---------------------------------------

   function MP_CMOF_Element_Import_Visibility return AMF.Internals.CMOF_Element is
   begin
      return Base + 89;
   end MP_CMOF_Element_Import_Visibility;

   ---------------------------------------
   -- MP_CMOF_Enumeration_Owned_Literal --
   ---------------------------------------

   function MP_CMOF_Enumeration_Owned_Literal return AMF.Internals.CMOF_Element is
   begin
      return Base + 55;
   end MP_CMOF_Enumeration_Owned_Literal;

   ---------------------------------------------
   -- MP_CMOF_Enumeration_Literal_Enumeration --
   ---------------------------------------------

   function MP_CMOF_Enumeration_Literal_Enumeration return AMF.Internals.CMOF_Element is
   begin
      return Base + 90;
   end MP_CMOF_Enumeration_Literal_Enumeration;

   --------------------------------
   -- MP_CMOF_Expression_Operand --
   --------------------------------

   function MP_CMOF_Expression_Operand return AMF.Internals.CMOF_Element is
   begin
      return Base + 56;
   end MP_CMOF_Expression_Operand;

   ------------------------------------------
   -- MP_CMOF_Feature_Featuring_Classifier --
   ------------------------------------------

   function MP_CMOF_Feature_Featuring_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 57;
   end MP_CMOF_Feature_Featuring_Classifier;

   ---------------------------------------------
   -- MP_CMOF_Multiplicity_Element_Is_Ordered --
   ---------------------------------------------

   function MP_CMOF_Multiplicity_Element_Is_Ordered return AMF.Internals.CMOF_Element is
   begin
      return Base + 91;
   end MP_CMOF_Multiplicity_Element_Is_Ordered;

   --------------------------------------------
   -- MP_CMOF_Multiplicity_Element_Is_Unique --
   --------------------------------------------

   function MP_CMOF_Multiplicity_Element_Is_Unique return AMF.Internals.CMOF_Element is
   begin
      return Base + 92;
   end MP_CMOF_Multiplicity_Element_Is_Unique;

   ----------------------------------------
   -- MP_CMOF_Multiplicity_Element_Lower --
   ----------------------------------------

   function MP_CMOF_Multiplicity_Element_Lower return AMF.Internals.CMOF_Element is
   begin
      return Base + 93;
   end MP_CMOF_Multiplicity_Element_Lower;

   ----------------------------------------
   -- MP_CMOF_Multiplicity_Element_Upper --
   ----------------------------------------

   function MP_CMOF_Multiplicity_Element_Upper return AMF.Internals.CMOF_Element is
   begin
      return Base + 94;
   end MP_CMOF_Multiplicity_Element_Upper;

   --------------------------------
   -- MP_CMOF_Named_Element_Name --
   --------------------------------

   function MP_CMOF_Named_Element_Name return AMF.Internals.CMOF_Element is
   begin
      return Base + 95;
   end MP_CMOF_Named_Element_Name;

   -------------------------------------
   -- MP_CMOF_Named_Element_Namespace --
   -------------------------------------

   function MP_CMOF_Named_Element_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 96;
   end MP_CMOF_Named_Element_Namespace;

   ------------------------------------------
   -- MP_CMOF_Named_Element_Qualified_Name --
   ------------------------------------------

   function MP_CMOF_Named_Element_Qualified_Name return AMF.Internals.CMOF_Element is
   begin
      return Base + 97;
   end MP_CMOF_Named_Element_Qualified_Name;

   --------------------------------------
   -- MP_CMOF_Named_Element_Visibility --
   --------------------------------------

   function MP_CMOF_Named_Element_Visibility return AMF.Internals.CMOF_Element is
   begin
      return Base + 98;
   end MP_CMOF_Named_Element_Visibility;

   --------------------------------------
   -- MP_CMOF_Namespace_Element_Import --
   --------------------------------------

   function MP_CMOF_Namespace_Element_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 58;
   end MP_CMOF_Namespace_Element_Import;

   ---------------------------------------
   -- MP_CMOF_Namespace_Imported_Member --
   ---------------------------------------

   function MP_CMOF_Namespace_Imported_Member return AMF.Internals.CMOF_Element is
   begin
      return Base + 59;
   end MP_CMOF_Namespace_Imported_Member;

   ------------------------------
   -- MP_CMOF_Namespace_Member --
   ------------------------------

   function MP_CMOF_Namespace_Member return AMF.Internals.CMOF_Element is
   begin
      return Base + 60;
   end MP_CMOF_Namespace_Member;

   ------------------------------------
   -- MP_CMOF_Namespace_Owned_Member --
   ------------------------------------

   function MP_CMOF_Namespace_Owned_Member return AMF.Internals.CMOF_Element is
   begin
      return Base + 61;
   end MP_CMOF_Namespace_Owned_Member;

   ----------------------------------
   -- MP_CMOF_Namespace_Owned_Rule --
   ----------------------------------

   function MP_CMOF_Namespace_Owned_Rule return AMF.Internals.CMOF_Element is
   begin
      return Base + 62;
   end MP_CMOF_Namespace_Owned_Rule;

   --------------------------------------
   -- MP_CMOF_Namespace_Package_Import --
   --------------------------------------

   function MP_CMOF_Namespace_Package_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 63;
   end MP_CMOF_Namespace_Package_Import;

   ------------------------------------
   -- MP_CMOF_Opaque_Expression_Body --
   ------------------------------------

   function MP_CMOF_Opaque_Expression_Body return AMF.Internals.CMOF_Element is
   begin
      return Base + 99;
   end MP_CMOF_Opaque_Expression_Body;

   ----------------------------------------
   -- MP_CMOF_Opaque_Expression_Language --
   ----------------------------------------

   function MP_CMOF_Opaque_Expression_Language return AMF.Internals.CMOF_Element is
   begin
      return Base + 100;
   end MP_CMOF_Opaque_Expression_Language;

   --------------------------------------
   -- MP_CMOF_Operation_Body_Condition --
   --------------------------------------

   function MP_CMOF_Operation_Body_Condition return AMF.Internals.CMOF_Element is
   begin
      return Base + 101;
   end MP_CMOF_Operation_Body_Condition;

   -----------------------------
   -- MP_CMOF_Operation_Class --
   -----------------------------

   function MP_CMOF_Operation_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 102;
   end MP_CMOF_Operation_Class;

   --------------------------------
   -- MP_CMOF_Operation_Datatype --
   --------------------------------

   function MP_CMOF_Operation_Datatype return AMF.Internals.CMOF_Element is
   begin
      return Base + 103;
   end MP_CMOF_Operation_Datatype;

   ----------------------------------
   -- MP_CMOF_Operation_Is_Ordered --
   ----------------------------------

   function MP_CMOF_Operation_Is_Ordered return AMF.Internals.CMOF_Element is
   begin
      return Base + 104;
   end MP_CMOF_Operation_Is_Ordered;

   --------------------------------
   -- MP_CMOF_Operation_Is_Query --
   --------------------------------

   function MP_CMOF_Operation_Is_Query return AMF.Internals.CMOF_Element is
   begin
      return Base + 105;
   end MP_CMOF_Operation_Is_Query;

   ---------------------------------
   -- MP_CMOF_Operation_Is_Unique --
   ---------------------------------

   function MP_CMOF_Operation_Is_Unique return AMF.Internals.CMOF_Element is
   begin
      return Base + 106;
   end MP_CMOF_Operation_Is_Unique;

   -----------------------------
   -- MP_CMOF_Operation_Lower --
   -----------------------------

   function MP_CMOF_Operation_Lower return AMF.Internals.CMOF_Element is
   begin
      return Base + 107;
   end MP_CMOF_Operation_Lower;

   ---------------------------------------
   -- MP_CMOF_Operation_Owned_Parameter --
   ---------------------------------------

   function MP_CMOF_Operation_Owned_Parameter return AMF.Internals.CMOF_Element is
   begin
      return Base + 64;
   end MP_CMOF_Operation_Owned_Parameter;

   -------------------------------------
   -- MP_CMOF_Operation_Postcondition --
   -------------------------------------

   function MP_CMOF_Operation_Postcondition return AMF.Internals.CMOF_Element is
   begin
      return Base + 65;
   end MP_CMOF_Operation_Postcondition;

   ------------------------------------
   -- MP_CMOF_Operation_Precondition --
   ------------------------------------

   function MP_CMOF_Operation_Precondition return AMF.Internals.CMOF_Element is
   begin
      return Base + 66;
   end MP_CMOF_Operation_Precondition;

   ----------------------------------------
   -- MP_CMOF_Operation_Raised_Exception --
   ----------------------------------------

   function MP_CMOF_Operation_Raised_Exception return AMF.Internals.CMOF_Element is
   begin
      return Base + 67;
   end MP_CMOF_Operation_Raised_Exception;

   -------------------------------------------
   -- MP_CMOF_Operation_Redefined_Operation --
   -------------------------------------------

   function MP_CMOF_Operation_Redefined_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 68;
   end MP_CMOF_Operation_Redefined_Operation;

   ----------------------------
   -- MP_CMOF_Operation_Type --
   ----------------------------

   function MP_CMOF_Operation_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 108;
   end MP_CMOF_Operation_Type;

   -----------------------------
   -- MP_CMOF_Operation_Upper --
   -----------------------------

   function MP_CMOF_Operation_Upper return AMF.Internals.CMOF_Element is
   begin
      return Base + 109;
   end MP_CMOF_Operation_Upper;

   ------------------------------------
   -- MP_CMOF_Package_Nested_Package --
   ------------------------------------

   function MP_CMOF_Package_Nested_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 69;
   end MP_CMOF_Package_Nested_Package;

   -------------------------------------
   -- MP_CMOF_Package_Nesting_Package --
   -------------------------------------

   function MP_CMOF_Package_Nesting_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 110;
   end MP_CMOF_Package_Nesting_Package;

   --------------------------------
   -- MP_CMOF_Package_Owned_Type --
   --------------------------------

   function MP_CMOF_Package_Owned_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 70;
   end MP_CMOF_Package_Owned_Type;

   -----------------------------------
   -- MP_CMOF_Package_Package_Merge --
   -----------------------------------

   function MP_CMOF_Package_Package_Merge return AMF.Internals.CMOF_Element is
   begin
      return Base + 71;
   end MP_CMOF_Package_Package_Merge;

   --------------------------------------
   -- MP_CMOF_Package_Packaged_Element --
   --------------------------------------

   function MP_CMOF_Package_Packaged_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 72;
   end MP_CMOF_Package_Packaged_Element;

   -------------------------
   -- MP_CMOF_Package_Uri --
   -------------------------

   function MP_CMOF_Package_Uri return AMF.Internals.CMOF_Element is
   begin
      return Base + 111;
   end MP_CMOF_Package_Uri;

   ---------------------------------------------
   -- MP_CMOF_Package_Import_Imported_Package --
   ---------------------------------------------

   function MP_CMOF_Package_Import_Imported_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 112;
   end MP_CMOF_Package_Import_Imported_Package;

   ------------------------------------------------
   -- MP_CMOF_Package_Import_Importing_Namespace --
   ------------------------------------------------

   function MP_CMOF_Package_Import_Importing_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 113;
   end MP_CMOF_Package_Import_Importing_Namespace;

   ---------------------------------------
   -- MP_CMOF_Package_Import_Visibility --
   ---------------------------------------

   function MP_CMOF_Package_Import_Visibility return AMF.Internals.CMOF_Element is
   begin
      return Base + 114;
   end MP_CMOF_Package_Import_Visibility;

   ------------------------------------------
   -- MP_CMOF_Package_Merge_Merged_Package --
   ------------------------------------------

   function MP_CMOF_Package_Merge_Merged_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 115;
   end MP_CMOF_Package_Merge_Merged_Package;

   ---------------------------------------------
   -- MP_CMOF_Package_Merge_Receiving_Package --
   ---------------------------------------------

   function MP_CMOF_Package_Merge_Receiving_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 116;
   end MP_CMOF_Package_Merge_Receiving_Package;

   -------------------------------
   -- MP_CMOF_Parameter_Default --
   -------------------------------

   function MP_CMOF_Parameter_Default return AMF.Internals.CMOF_Element is
   begin
      return Base + 117;
   end MP_CMOF_Parameter_Default;

   ---------------------------------
   -- MP_CMOF_Parameter_Direction --
   ---------------------------------

   function MP_CMOF_Parameter_Direction return AMF.Internals.CMOF_Element is
   begin
      return Base + 118;
   end MP_CMOF_Parameter_Direction;

   ---------------------------------
   -- MP_CMOF_Parameter_Operation --
   ---------------------------------

   function MP_CMOF_Parameter_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 119;
   end MP_CMOF_Parameter_Operation;

   ----------------------------------
   -- MP_CMOF_Property_Association --
   ----------------------------------

   function MP_CMOF_Property_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 120;
   end MP_CMOF_Property_Association;

   ----------------------------
   -- MP_CMOF_Property_Class --
   ----------------------------

   function MP_CMOF_Property_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 121;
   end MP_CMOF_Property_Class;

   -------------------------------
   -- MP_CMOF_Property_Datatype --
   -------------------------------

   function MP_CMOF_Property_Datatype return AMF.Internals.CMOF_Element is
   begin
      return Base + 122;
   end MP_CMOF_Property_Datatype;

   ------------------------------
   -- MP_CMOF_Property_Default --
   ------------------------------

   function MP_CMOF_Property_Default return AMF.Internals.CMOF_Element is
   begin
      return Base + 123;
   end MP_CMOF_Property_Default;

   -----------------------------------
   -- MP_CMOF_Property_Is_Composite --
   -----------------------------------

   function MP_CMOF_Property_Is_Composite return AMF.Internals.CMOF_Element is
   begin
      return Base + 124;
   end MP_CMOF_Property_Is_Composite;

   ---------------------------------
   -- MP_CMOF_Property_Is_Derived --
   ---------------------------------

   function MP_CMOF_Property_Is_Derived return AMF.Internals.CMOF_Element is
   begin
      return Base + 125;
   end MP_CMOF_Property_Is_Derived;

   ---------------------------------------
   -- MP_CMOF_Property_Is_Derived_Union --
   ---------------------------------------

   function MP_CMOF_Property_Is_Derived_Union return AMF.Internals.CMOF_Element is
   begin
      return Base + 126;
   end MP_CMOF_Property_Is_Derived_Union;

   -----------------------------------
   -- MP_CMOF_Property_Is_Read_Only --
   -----------------------------------

   function MP_CMOF_Property_Is_Read_Only return AMF.Internals.CMOF_Element is
   begin
      return Base + 127;
   end MP_CMOF_Property_Is_Read_Only;

   -------------------------------
   -- MP_CMOF_Property_Opposite --
   -------------------------------

   function MP_CMOF_Property_Opposite return AMF.Internals.CMOF_Element is
   begin
      return Base + 128;
   end MP_CMOF_Property_Opposite;

   -----------------------------------------
   -- MP_CMOF_Property_Owning_Association --
   -----------------------------------------

   function MP_CMOF_Property_Owning_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 129;
   end MP_CMOF_Property_Owning_Association;

   -----------------------------------------
   -- MP_CMOF_Property_Redefined_Property --
   -----------------------------------------

   function MP_CMOF_Property_Redefined_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 73;
   end MP_CMOF_Property_Redefined_Property;

   -----------------------------------------
   -- MP_CMOF_Property_Subsetted_Property --
   -----------------------------------------

   function MP_CMOF_Property_Subsetted_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 74;
   end MP_CMOF_Property_Subsetted_Property;

   -----------------------------------------
   -- MP_CMOF_Redefinable_Element_Is_Leaf --
   -----------------------------------------

   function MP_CMOF_Redefinable_Element_Is_Leaf return AMF.Internals.CMOF_Element is
   begin
      return Base + 130;
   end MP_CMOF_Redefinable_Element_Is_Leaf;

   ---------------------------------------------------
   -- MP_CMOF_Redefinable_Element_Redefined_Element --
   ---------------------------------------------------

   function MP_CMOF_Redefinable_Element_Redefined_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 75;
   end MP_CMOF_Redefinable_Element_Redefined_Element;

   ------------------------------------------------------
   -- MP_CMOF_Redefinable_Element_Redefinition_Context --
   ------------------------------------------------------

   function MP_CMOF_Redefinable_Element_Redefinition_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 76;
   end MP_CMOF_Redefinable_Element_Redefinition_Context;

   ------------------------------------------
   -- MP_CMOF_Relationship_Related_Element --
   ------------------------------------------

   function MP_CMOF_Relationship_Related_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 77;
   end MP_CMOF_Relationship_Related_Element;

   -------------------------
   -- MP_CMOF_Tag_Element --
   -------------------------

   function MP_CMOF_Tag_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 78;
   end MP_CMOF_Tag_Element;

   ----------------------
   -- MP_CMOF_Tag_Name --
   ----------------------

   function MP_CMOF_Tag_Name return AMF.Internals.CMOF_Element is
   begin
      return Base + 131;
   end MP_CMOF_Tag_Name;

   ---------------------------
   -- MP_CMOF_Tag_Tag_Owner --
   ---------------------------

   function MP_CMOF_Tag_Tag_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 132;
   end MP_CMOF_Tag_Tag_Owner;

   -----------------------
   -- MP_CMOF_Tag_Value --
   -----------------------

   function MP_CMOF_Tag_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 133;
   end MP_CMOF_Tag_Value;

   --------------------------
   -- MP_CMOF_Type_Package --
   --------------------------

   function MP_CMOF_Type_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 134;
   end MP_CMOF_Type_Package;

   --------------------------------
   -- MP_CMOF_Typed_Element_Type --
   --------------------------------

   function MP_CMOF_Typed_Element_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 135;
   end MP_CMOF_Typed_Element_Type;

   ---------------------------------------------
   -- MP_CMOF_Imported_Element_Element_Import --
   ---------------------------------------------

   function MP_CMOF_Imported_Element_Element_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 776;
   end MP_CMOF_Imported_Element_Element_Import;

   ---------------------------------------------
   -- MP_CMOF_Packaged_Element_Owning_Package --
   ---------------------------------------------

   function MP_CMOF_Packaged_Element_Owning_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 777;
   end MP_CMOF_Packaged_Element_Owning_Package;

   -------------------------
   -- MP_CMOF_Element_Tag --
   -------------------------

   function MP_CMOF_Element_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 797;
   end MP_CMOF_Element_Tag;

   ---------------------------------
   -- MP_CMOF_Tag_Owner_Owned_Tag --
   ---------------------------------

   function MP_CMOF_Tag_Owner_Owned_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 798;
   end MP_CMOF_Tag_Owner_Owned_Tag;

   ----------------------------
   -- MP_CMOF_Type_Operation --
   ----------------------------

   function MP_CMOF_Type_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 778;
   end MP_CMOF_Type_Operation;

   ------------------------------------------
   -- MP_CMOF_Merged_Package_Package_Merge --
   ------------------------------------------

   function MP_CMOF_Merged_Package_Package_Merge return AMF.Internals.CMOF_Element is
   begin
      return Base + 779;
   end MP_CMOF_Merged_Package_Package_Merge;

   ---------------------------------------
   -- MP_CMOF_Annotated_Element_Comment --
   ---------------------------------------

   function MP_CMOF_Annotated_Element_Comment return AMF.Internals.CMOF_Element is
   begin
      return Base + 780;
   end MP_CMOF_Annotated_Element_Comment;

   ------------------------------------------
   -- MP_CMOF_Related_Element_Relationship --
   ------------------------------------------

   function MP_CMOF_Related_Element_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 781;
   end MP_CMOF_Related_Element_Relationship;

   ------------------------------------------
   -- MP_CMOF_Source_Directed_Relationship --
   ------------------------------------------

   function MP_CMOF_Source_Directed_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 782;
   end MP_CMOF_Source_Directed_Relationship;

   ------------------------------------------
   -- MP_CMOF_Target_Directed_Relationship --
   ------------------------------------------

   function MP_CMOF_Target_Directed_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 783;
   end MP_CMOF_Target_Directed_Relationship;

   --------------------------------
   -- MP_CMOF_Type_Typed_Element --
   --------------------------------

   function MP_CMOF_Type_Typed_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 763;
   end MP_CMOF_Type_Typed_Element;

   ------------------------------------------------------
   -- MP_CMOF_Redefinition_Context_Redefinable_Element --
   ------------------------------------------------------

   function MP_CMOF_Redefinition_Context_Redefinable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 784;
   end MP_CMOF_Redefinition_Context_Redefinable_Element;

   ---------------------------------------------------
   -- MP_CMOF_Redefined_Element_Redefinable_Element --
   ---------------------------------------------------

   function MP_CMOF_Redefined_Element_Redefinable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 785;
   end MP_CMOF_Redefined_Element_Redefinable_Element;

   ----------------------------------
   -- MP_CMOF_Attribute_Classifier --
   ----------------------------------

   function MP_CMOF_Attribute_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 764;
   end MP_CMOF_Attribute_Classifier;

   --------------------------------------------
   -- MP_CMOF_Constrained_Element_Constraint --
   --------------------------------------------

   function MP_CMOF_Constrained_Element_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 786;
   end MP_CMOF_Constrained_Element_Constraint;

   -----------------------------------------
   -- MP_CMOF_Redefined_Property_Property --
   -----------------------------------------

   function MP_CMOF_Redefined_Property_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 765;
   end MP_CMOF_Redefined_Property_Property;

   ---------------------------------------------
   -- MP_CMOF_Specification_Owning_Constraint --
   ---------------------------------------------

   function MP_CMOF_Specification_Owning_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 787;
   end MP_CMOF_Specification_Owning_Constraint;

   -----------------------------------------
   -- MP_CMOF_Subsetted_Property_Property --
   -----------------------------------------

   function MP_CMOF_Subsetted_Property_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 766;
   end MP_CMOF_Subsetted_Property_Property;

   --------------------------------
   -- MP_CMOF_General_Classifier --
   --------------------------------

   function MP_CMOF_General_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 788;
   end MP_CMOF_General_Classifier;

   -------------------------------
   -- MP_CMOF_Opposite_Property --
   -------------------------------

   function MP_CMOF_Opposite_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 767;
   end MP_CMOF_Opposite_Property;

   -------------------------------
   -- MP_CMOF_Super_Class_Class --
   -------------------------------

   function MP_CMOF_Super_Class_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 768;
   end MP_CMOF_Super_Class_Class;

   ------------------------------
   -- MP_CMOF_Member_Namespace --
   ------------------------------

   function MP_CMOF_Member_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 789;
   end MP_CMOF_Member_Namespace;

   ----------------------------------
   -- MP_CMOF_End_Type_Association --
   ----------------------------------

   function MP_CMOF_End_Type_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 769;
   end MP_CMOF_End_Type_Association;

   --------------------------------
   -- MP_CMOF_Operand_Expression --
   --------------------------------

   function MP_CMOF_Operand_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 790;
   end MP_CMOF_Operand_Expression;

   ---------------------------------------------
   -- MP_CMOF_Navigable_Owned_End_Association --
   ---------------------------------------------

   function MP_CMOF_Navigable_Owned_End_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 791;
   end MP_CMOF_Navigable_Owned_End_Association;

   ----------------------------------------
   -- MP_CMOF_Raised_Exception_Operation --
   ----------------------------------------

   function MP_CMOF_Raised_Exception_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 770;
   end MP_CMOF_Raised_Exception_Operation;

   ------------------------------------------
   -- MP_CMOF_Owned_Comment_Owning_Element --
   ------------------------------------------

   function MP_CMOF_Owned_Comment_Owning_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 792;
   end MP_CMOF_Owned_Comment_Owning_Element;

   -------------------------------------------
   -- MP_CMOF_Redefined_Operation_Operation --
   -------------------------------------------

   function MP_CMOF_Redefined_Operation_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 771;
   end MP_CMOF_Redefined_Operation_Operation;

   -----------------------------------------
   -- MP_CMOF_Inherited_Member_Classifier --
   -----------------------------------------

   function MP_CMOF_Inherited_Member_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 793;
   end MP_CMOF_Inherited_Member_Classifier;

   ------------------------------------------------
   -- MP_CMOF_Owned_Parameter_Owner_Formal_Param --
   ------------------------------------------------

   function MP_CMOF_Owned_Parameter_Owner_Formal_Param return AMF.Internals.CMOF_Element is
   begin
      return Base + 772;
   end MP_CMOF_Owned_Parameter_Owner_Formal_Param;

   --------------------------------------
   -- MP_CMOF_Precondition_Pre_Context --
   --------------------------------------

   function MP_CMOF_Precondition_Pre_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 794;
   end MP_CMOF_Precondition_Pre_Context;

   -------------------------------------------------
   -- MP_CMOF_Raised_Exception_Behavioral_Feature --
   -------------------------------------------------

   function MP_CMOF_Raised_Exception_Behavioral_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 773;
   end MP_CMOF_Raised_Exception_Behavioral_Feature;

   ----------------------------------------
   -- MP_CMOF_Postcondition_Post_Context --
   ----------------------------------------

   function MP_CMOF_Postcondition_Post_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 795;
   end MP_CMOF_Postcondition_Post_Context;

   ---------------------------------------
   -- MP_CMOF_Imported_Member_Namespace --
   ---------------------------------------

   function MP_CMOF_Imported_Member_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 774;
   end MP_CMOF_Imported_Member_Namespace;

   -----------------------------------------
   -- MP_CMOF_Body_Condition_Body_Context --
   -----------------------------------------

   function MP_CMOF_Body_Condition_Body_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 796;
   end MP_CMOF_Body_Condition_Body_Context;

   ---------------------------------------------
   -- MP_CMOF_Imported_Package_Package_Import --
   ---------------------------------------------

   function MP_CMOF_Imported_Package_Package_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 775;
   end MP_CMOF_Imported_Package_Package_Import;

   -----------------------------------------------------------------
   -- MA_CMOF_Packageable_Element_Imported_Element_Element_Import --
   -----------------------------------------------------------------

   function MA_CMOF_Packageable_Element_Imported_Element_Element_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 136;
   end MA_CMOF_Packageable_Element_Imported_Element_Element_Import;

   ---------------------------------------------------------------
   -- MA_CMOF_Element_Import_Element_Import_Importing_Namespace --
   ---------------------------------------------------------------

   function MA_CMOF_Element_Import_Element_Import_Importing_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 137;
   end MA_CMOF_Element_Import_Element_Import_Importing_Namespace;

   ---------------------------------------------------------------
   -- MA_CMOF_Package_Import_Package_Import_Importing_Namespace --
   ---------------------------------------------------------------

   function MA_CMOF_Package_Import_Package_Import_Importing_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 138;
   end MA_CMOF_Package_Import_Package_Import_Importing_Namespace;

   -----------------------------------------------------------------
   -- MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package --
   -----------------------------------------------------------------

   function MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 139;
   end MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package;

   ---------------------------------
   -- MA_CMOF_Element_Element_Tag --
   ---------------------------------

   function MA_CMOF_Element_Element_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 140;
   end MA_CMOF_Element_Element_Tag;

   -------------------------------------
   -- MA_CMOF_Type_Owned_Type_Package --
   -------------------------------------

   function MA_CMOF_Type_Owned_Type_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 141;
   end MA_CMOF_Type_Owned_Type_Package;

   -----------------------------------------
   -- MA_CMOF_Element_Tag_Owner_Owned_Tag --
   -----------------------------------------

   function MA_CMOF_Element_Tag_Owner_Owned_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 142;
   end MA_CMOF_Element_Tag_Owner_Owned_Tag;

   ---------------------------------------------
   -- MA_CMOF_Property_Member_End_Association --
   ---------------------------------------------

   function MA_CMOF_Property_Member_End_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 143;
   end MA_CMOF_Property_Member_End_Association;

   ----------------------------------------------------
   -- MA_CMOF_Package_Nested_Package_Nesting_Package --
   ----------------------------------------------------

   function MA_CMOF_Package_Nested_Package_Nesting_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 144;
   end MA_CMOF_Package_Nested_Package_Nesting_Package;

   ---------------------------------
   -- MA_CMOF_Type_Type_Operation --
   ---------------------------------

   function MA_CMOF_Type_Type_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 145;
   end MA_CMOF_Type_Type_Operation;

   -----------------------------------------------------------
   -- MA_CMOF_Package_Merge_Package_Merge_Receiving_Package --
   -----------------------------------------------------------

   function MA_CMOF_Package_Merge_Package_Merge_Receiving_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 146;
   end MA_CMOF_Package_Merge_Package_Merge_Receiving_Package;

   --------------------------------------------------
   -- MA_CMOF_Package_Merged_Package_Package_Merge --
   --------------------------------------------------

   function MA_CMOF_Package_Merged_Package_Package_Merge return AMF.Internals.CMOF_Element is
   begin
      return Base + 147;
   end MA_CMOF_Package_Merged_Package_Package_Merge;

   -----------------------------------------
   -- MA_CMOF_Element_Owned_Element_Owner --
   -----------------------------------------

   function MA_CMOF_Element_Owned_Element_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 148;
   end MA_CMOF_Element_Owned_Element_Owner;

   -----------------------------------------------
   -- MA_CMOF_Element_Annotated_Element_Comment --
   -----------------------------------------------

   function MA_CMOF_Element_Annotated_Element_Comment return AMF.Internals.CMOF_Element is
   begin
      return Base + 149;
   end MA_CMOF_Element_Annotated_Element_Comment;

   --------------------------------------------------
   -- MA_CMOF_Element_Related_Element_Relationship --
   --------------------------------------------------

   function MA_CMOF_Element_Related_Element_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 150;
   end MA_CMOF_Element_Related_Element_Relationship;

   --------------------------------------------------
   -- MA_CMOF_Element_Source_Directed_Relationship --
   --------------------------------------------------

   function MA_CMOF_Element_Source_Directed_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 151;
   end MA_CMOF_Element_Source_Directed_Relationship;

   --------------------------------------------------
   -- MA_CMOF_Element_Target_Directed_Relationship --
   --------------------------------------------------

   function MA_CMOF_Element_Target_Directed_Relationship return AMF.Internals.CMOF_Element is
   begin
      return Base + 152;
   end MA_CMOF_Element_Target_Directed_Relationship;

   -------------------------------------
   -- MA_CMOF_Type_Type_Typed_Element --
   -------------------------------------

   function MA_CMOF_Type_Type_Typed_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 153;
   end MA_CMOF_Type_Type_Typed_Element;

   -----------------------------------------------------------------
   -- MA_CMOF_Classifier_Redefinition_Context_Redefinable_Element --
   -----------------------------------------------------------------

   function MA_CMOF_Classifier_Redefinition_Context_Redefinable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 154;
   end MA_CMOF_Classifier_Redefinition_Context_Redefinable_Element;

   --------------------------------------------
   -- MA_CMOF_Property_Owned_Attribute_Class --
   --------------------------------------------

   function MA_CMOF_Property_Owned_Attribute_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 155;
   end MA_CMOF_Property_Owned_Attribute_Class;

   ---------------------------------------------
   -- MA_CMOF_Operation_Owned_Operation_Class --
   ---------------------------------------------

   function MA_CMOF_Operation_Owned_Operation_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 156;
   end MA_CMOF_Operation_Owned_Operation_Class;

   -----------------------------------------------------------------------
   -- MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element --
   -----------------------------------------------------------------------

   function MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 157;
   end MA_CMOF_Redefinable_Element_Redefined_Element_Redefinable_Element;

   ---------------------------------------------------
   -- MA_CMOF_Property_Owned_End_Owning_Association --
   ---------------------------------------------------

   function MA_CMOF_Property_Owned_End_Owning_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 158;
   end MA_CMOF_Property_Owned_End_Owning_Association;

   -------------------------------------------
   -- MA_CMOF_Property_Attribute_Classifier --
   -------------------------------------------

   function MA_CMOF_Property_Attribute_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 159;
   end MA_CMOF_Property_Attribute_Classifier;

   --------------------------------------------------
   -- MA_CMOF_Feature_Feature_Featuring_Classifier --
   --------------------------------------------------

   function MA_CMOF_Feature_Feature_Featuring_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 160;
   end MA_CMOF_Feature_Feature_Featuring_Classifier;

   ----------------------------------------------------
   -- MA_CMOF_Element_Constrained_Element_Constraint --
   ----------------------------------------------------

   function MA_CMOF_Element_Constrained_Element_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 161;
   end MA_CMOF_Element_Constrained_Element_Constraint;

   --------------------------------------------------
   -- MA_CMOF_Property_Redefined_Property_Property --
   --------------------------------------------------

   function MA_CMOF_Property_Redefined_Property_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 162;
   end MA_CMOF_Property_Redefined_Property_Property;

   -----------------------------------------------------------------
   -- MA_CMOF_Value_Specification_Specification_Owning_Constraint --
   -----------------------------------------------------------------

   function MA_CMOF_Value_Specification_Specification_Owning_Constraint return AMF.Internals.CMOF_Element is
   begin
      return Base + 163;
   end MA_CMOF_Value_Specification_Specification_Owning_Constraint;

   --------------------------------------------------
   -- MA_CMOF_Property_Subsetted_Property_Property --
   --------------------------------------------------

   function MA_CMOF_Property_Subsetted_Property_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 164;
   end MA_CMOF_Property_Subsetted_Property_Property;

   -------------------------------------------
   -- MA_CMOF_Classifier_General_Classifier --
   -------------------------------------------

   function MA_CMOF_Classifier_General_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 165;
   end MA_CMOF_Classifier_General_Classifier;

   ----------------------------------------
   -- MA_CMOF_Property_Opposite_Property --
   ----------------------------------------

   function MA_CMOF_Property_Opposite_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 166;
   end MA_CMOF_Property_Opposite_Property;

   --------------------------------------------------
   -- MA_CMOF_Named_Element_Owned_Member_Namespace --
   --------------------------------------------------

   function MA_CMOF_Named_Element_Owned_Member_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 167;
   end MA_CMOF_Named_Element_Owned_Member_Namespace;

   -------------------------------------
   -- MA_CMOF_Class_Super_Class_Class --
   -------------------------------------

   function MA_CMOF_Class_Super_Class_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 168;
   end MA_CMOF_Class_Super_Class_Class;

   --------------------------------------------
   -- MA_CMOF_Named_Element_Member_Namespace --
   --------------------------------------------

   function MA_CMOF_Named_Element_Member_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 169;
   end MA_CMOF_Named_Element_Member_Namespace;

   ---------------------------------------
   -- MA_CMOF_Type_End_Type_Association --
   ---------------------------------------

   function MA_CMOF_Type_End_Type_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 170;
   end MA_CMOF_Type_End_Type_Association;

   ----------------------------------------------------
   -- MA_CMOF_Value_Specification_Operand_Expression --
   ----------------------------------------------------

   function MA_CMOF_Value_Specification_Operand_Expression return AMF.Internals.CMOF_Element is
   begin
      return Base + 171;
   end MA_CMOF_Value_Specification_Operand_Expression;

   -----------------------------------------------------------
   -- MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration --
   -----------------------------------------------------------

   function MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration return AMF.Internals.CMOF_Element is
   begin
      return Base + 172;
   end MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration;

   ------------------------------------------------------
   -- MA_CMOF_Property_Navigable_Owned_End_Association --
   ------------------------------------------------------

   function MA_CMOF_Property_Navigable_Owned_End_Association return AMF.Internals.CMOF_Element is
   begin
      return Base + 173;
   end MA_CMOF_Property_Navigable_Owned_End_Association;

   -----------------------------------------------
   -- MA_CMOF_Property_Owned_Attribute_Datatype --
   -----------------------------------------------

   function MA_CMOF_Property_Owned_Attribute_Datatype return AMF.Internals.CMOF_Element is
   begin
      return Base + 174;
   end MA_CMOF_Property_Owned_Attribute_Datatype;

   ------------------------------------------------
   -- MA_CMOF_Operation_Owned_Operation_Datatype --
   ------------------------------------------------

   function MA_CMOF_Operation_Owned_Operation_Datatype return AMF.Internals.CMOF_Element is
   begin
      return Base + 175;
   end MA_CMOF_Operation_Owned_Operation_Datatype;

   -------------------------------------------------
   -- MA_CMOF_Parameter_Owned_Parameter_Operation --
   -------------------------------------------------

   function MA_CMOF_Parameter_Owned_Parameter_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 176;
   end MA_CMOF_Parameter_Owned_Parameter_Operation;

   ---------------------------------------------
   -- MA_CMOF_Type_Raised_Exception_Operation --
   ---------------------------------------------

   function MA_CMOF_Type_Raised_Exception_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 177;
   end MA_CMOF_Type_Raised_Exception_Operation;

   --------------------------------------------------
   -- MA_CMOF_Comment_Owned_Comment_Owning_Element --
   --------------------------------------------------

   function MA_CMOF_Comment_Owned_Comment_Owning_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 178;
   end MA_CMOF_Comment_Owned_Comment_Owning_Element;

   -----------------------------------------------------
   -- MA_CMOF_Operation_Redefined_Operation_Operation --
   -----------------------------------------------------

   function MA_CMOF_Operation_Redefined_Operation_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 179;
   end MA_CMOF_Operation_Redefined_Operation_Operation;

   -------------------------------------------------------
   -- MA_CMOF_Named_Element_Inherited_Member_Classifier --
   -------------------------------------------------------

   function MA_CMOF_Named_Element_Inherited_Member_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 180;
   end MA_CMOF_Named_Element_Inherited_Member_Classifier;

   ----------------------------------------------------------
   -- MA_CMOF_Parameter_Owned_Parameter_Owner_Formal_Param --
   ----------------------------------------------------------

   function MA_CMOF_Parameter_Owned_Parameter_Owner_Formal_Param return AMF.Internals.CMOF_Element is
   begin
      return Base + 181;
   end MA_CMOF_Parameter_Owned_Parameter_Owner_Formal_Param;

   -------------------------------------------------
   -- MA_CMOF_Constraint_Precondition_Pre_Context --
   -------------------------------------------------

   function MA_CMOF_Constraint_Precondition_Pre_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 182;
   end MA_CMOF_Constraint_Precondition_Pre_Context;

   ------------------------------------------------------
   -- MA_CMOF_Type_Raised_Exception_Behavioral_Feature --
   ------------------------------------------------------

   function MA_CMOF_Type_Raised_Exception_Behavioral_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 183;
   end MA_CMOF_Type_Raised_Exception_Behavioral_Feature;

   ---------------------------------------------------
   -- MA_CMOF_Constraint_Postcondition_Post_Context --
   ---------------------------------------------------

   function MA_CMOF_Constraint_Postcondition_Post_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 184;
   end MA_CMOF_Constraint_Postcondition_Post_Context;

   -----------------------------------------------------------
   -- MA_CMOF_Packageable_Element_Imported_Member_Namespace --
   -----------------------------------------------------------

   function MA_CMOF_Packageable_Element_Imported_Member_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 185;
   end MA_CMOF_Packageable_Element_Imported_Member_Namespace;

   ----------------------------------------------------
   -- MA_CMOF_Constraint_Body_Condition_Body_Context --
   ----------------------------------------------------

   function MA_CMOF_Constraint_Body_Condition_Body_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 186;
   end MA_CMOF_Constraint_Body_Condition_Body_Context;

   -----------------------------------------------------
   -- MA_CMOF_Package_Imported_Package_Package_Import --
   -----------------------------------------------------

   function MA_CMOF_Package_Imported_Package_Package_Import return AMF.Internals.CMOF_Element is
   begin
      return Base + 187;
   end MA_CMOF_Package_Imported_Package_Package_Import;

   -------------------------------------------
   -- MA_CMOF_Constraint_Owned_Rule_Context --
   -------------------------------------------

   function MA_CMOF_Constraint_Owned_Rule_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 188;
   end MA_CMOF_Constraint_Owned_Rule_Context;

   -------------
   -- MB_CMOF --
   -------------

   function MB_CMOF return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_CMOF;

   -------------
   -- MB_CMOF --
   -------------

   function ML_CMOF return AMF.Internals.AMF_Element is
   begin
      return Base + 800;
   end ML_CMOF;

   ------------------------
   -- Initialize_Objects --
   ------------------------

   procedure Initialize_Objects is
      Extent : constant AMF.Internals.AMF_Extent
        := AMF.Internals.Extents.Allocate_Extent
            (AMF.Internals.Tables.CMOF_String_Data_00.MS_006F'Access);
      Aux    : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
      Base := Aux - 1;

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Package;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Operation;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Parameter;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 1,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0068'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 1, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 2, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 2,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0022'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 2, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 3,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 3, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 4, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 4,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0137'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 4, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 5,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 5, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 6,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 6, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 7,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 7, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 8, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 8,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 8, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 9, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 9,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 9, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 10,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 10, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 11,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0020'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 11, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 12,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0062'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 12, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 13,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0198'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 13, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 14, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 14,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 14, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 15, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 15,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0152'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 15, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 16, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 16,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 16, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 17, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 17,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 17, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 18,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 18, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 19,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0074'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 19, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 20,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 20, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 21,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0051'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 21, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 22,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 22, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 23, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 23,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0135'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 23, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 24,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 24, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 25,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0179'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 25, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 26,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0076'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 26, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 27, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 27,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 27, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 28, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 28,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 28, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 29, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 29,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0185'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 29, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 30,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 30, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 31, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 31,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 31, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 32, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 32,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0158'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 32, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 33, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 33,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 33, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 34, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 34, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 34,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 34, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 34, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 35, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 35, (False, 2));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 35,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 35, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 35, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 36, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 36,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0056'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 36, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 36, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 37, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 37, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 37, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 37,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0172'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 37, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 37, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 38, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 38, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 38, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 38,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 38, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 38, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 39, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 39,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 39, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 39, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 40, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 40, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 40, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 40,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0052'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 40, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 40, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 41, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 41, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 41, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 41,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 41, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 41, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 42, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 42,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 42, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 42, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 43, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 43, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 43, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 43, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 43,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0138'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 43, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 43, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 44, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 44, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 44, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 44, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 44,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 44, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 44, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 45, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 45,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0095'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 45, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 45, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 46, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 46, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 46, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 46,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 46, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 46, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 47, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 47,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0170'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 47, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 47, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 48, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 48, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 48,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 48, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 48, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 49, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 49, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 49, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 49,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0052'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 49, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 49, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 50, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 50, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 50, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 50,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 50, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 50, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 51, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 51, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 51, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 51,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 51, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 51, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 52, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 52, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 52, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 52,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 52, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 52, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 53, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 53, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 53,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 53, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 53, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 54, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 54, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 54, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 54, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 54, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 54,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 54, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 54, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 55, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 55, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 55, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 55,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 55, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 55, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 56, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 56, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 56, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 56,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0194'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 56, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 56, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 57, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 57, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 57, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 57, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 57,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 57, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 57, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 58, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 58, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 58,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 58, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 58, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 59, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 59, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 59, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 59,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 59, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 59, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 60, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 60, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 60, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 60, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 60,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 60, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 60, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 61, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 61, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 61, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 61, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 61, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 61,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0148'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 61, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 61, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 62, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 62, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 62,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0147'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 62, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 62, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 63, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 63, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 63,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0169'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 63, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 63, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 64, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 64, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 64, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 64,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 64, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 64, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 65, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 65, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 65,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 65, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 65, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 66, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 66, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 66,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 66, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 66, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 67, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 67,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 67, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 67, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 68, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 68,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 68, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 68, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 69, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 69, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 69, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 69,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0163'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 69, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 69, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 70, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 70, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 70, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 70,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0041'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 70, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 70, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 71, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 71, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 71,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 71, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 71, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 72, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 72, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 72,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 72, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 72, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 73, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 73,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0164'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 73, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 73, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 74, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 74,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 74, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 74, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 75, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 75, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 75, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 75, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 75,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 75, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 75, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 76, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 76, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 76, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 76, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 76,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 76, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 76, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 77, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 77, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 77, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 77,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0048'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 77, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 77, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 78, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 78,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0104'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 78, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 78, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 79,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 79,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 79, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 80,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 80,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 80, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 81,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 81,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 81, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 82, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 82,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0142'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 82, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 83, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 83,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 83, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 84, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 84,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FB'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 84, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 85, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 85, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 85, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 85, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 85,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0154'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 85, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 86, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 86,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 86, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 87,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 87, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 88,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 88, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 89,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 89,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 89, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 90, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 90,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 90, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 91,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 91,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0113'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 91, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 92,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 92,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0178'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 92, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 93,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0159'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 93, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 93,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 93, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 94,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0159'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 94, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 94,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 94, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 95, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 95,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 95, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 96, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 96, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 96, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 96, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 96,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 96, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 97, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 97, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 97, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 97,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0000'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 97, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 98, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 98,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 98, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 99, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 99, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Unique (Base + 99, False);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 99, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 99,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0142'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 99, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 99, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 100, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 100, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 100, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 100,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 100, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 100, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 101, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 101, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 101,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0077'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 101, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 102, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 102,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0029'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 102, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 103, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 103,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 103, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 104,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 104, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 104,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0113'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 104, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 105,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 105,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0021'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 105, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 106,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 106, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 106,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0178'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 106, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 107,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0159'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 107, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 107, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 107,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 107, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 108, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 108, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 108,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0196'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 108, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 109,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0159'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 109, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 109, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 109,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 109, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 110, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 110,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 110, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 111, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 111,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 111, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 112,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0049'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 112, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 113,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 113, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 114,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 114,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 114, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 115,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 115, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 116,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0117'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 116, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 117, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 117,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 117, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 118,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 118,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 118, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 119, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 119,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0054'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 119, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 120, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 120,
        AMF.Internals.Tables.CMOF_String_Data_02.MS_0200'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 120, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 121, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 121,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0029'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 121, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 122, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 122,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 122, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 123, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 123,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 123, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 124,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 124,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0111'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 124, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 125,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 125,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 125, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 126,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 126,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0105'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 126, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 127,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 127,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0060'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 127, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 128, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 128, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 128,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 128, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 129, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 129,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0174'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 129, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 130,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 130,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 130, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 131,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 131, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 132, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 132,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0050'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 132, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 133,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0150'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 133, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 134, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 134,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 134, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 135, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 135,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0196'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 135, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 136,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 136, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 137,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 137, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 138,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 138, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 139,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0197'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 139, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 140,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 140, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 141,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 141, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 142,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0059'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 142, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 143,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0072'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 143, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 144,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 144, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 145,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 145, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 146,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 146, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 147,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0175'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 147, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 148,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0144'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 148, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 149,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 149, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 150,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 150, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 151,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 151, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 152,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 152, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 153,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 153, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 154,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 154, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 155,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 155, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 156,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 156, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 157,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0108'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 157, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 158,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0006'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 158, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 159,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 159, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 160,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 160, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 161,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 161, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 162,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 162, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 163,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 163, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 164,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0061'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 164, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 165,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 165, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 166,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C7'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 166, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 167,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0055'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 167, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 168,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0106'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 168, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 169,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0033'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 169, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 170,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00ED'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 170, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 171,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0003'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 171, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 172,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0161'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 172, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 173,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 173, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 174,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DB'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 174, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 175,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 175, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 176,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 176, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 177,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CB'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 177, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 178,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0065'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 178, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 179,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 179, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 180,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0034'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 180, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 181,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 181, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 182,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0008'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 182, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 183,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 183, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 184,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 184, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 185,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0130'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 185, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 186,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0182'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 186, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 187,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0035'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 187, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 188,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 188, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 189,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Uri
       (Base + 189,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 189, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 190,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0173'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 190, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 191,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 192,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0165'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 192, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 193,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 194,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0040'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 194, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 195,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CC'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 196,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 196, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 197,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0116'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 198,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 199,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 199, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 200,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0188'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 201, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 202,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0100'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 202, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 203,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D6'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 204, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 205,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EC'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 206,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0131'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 207,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0018'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 208,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 209,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 210, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 210,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 210, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 211,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F8'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 212,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 212, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 213, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 214, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 214, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 215, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 215,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0112'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 215, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 216, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 216,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 216, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 217,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0070'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 218,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 218, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 219, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 220, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 220, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 220, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 220, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 221, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 221,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0095'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 221, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 222,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0005'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 223,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 223, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 224, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 225, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 225, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 225, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 225, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 226, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 226,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 226, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 227,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D6'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 228,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 228, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 229, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 230, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 230, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 230, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 230, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 231, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 231,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 231, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 232,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AB'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 233,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 233, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 234, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 235, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 235, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 235, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 235, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 236, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 236,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0176'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 236, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 237,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0089'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 238,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 238, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 239, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 240, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 240, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 240, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 240, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 241, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 241,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0090'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 241, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 242,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 243, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 244, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 245,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 245, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 246, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 247, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 247, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 247, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 247, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 248, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 248,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 248, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 249, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 249,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0093'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 249, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 250,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0160'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 251, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 252, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 253,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 253, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 254, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 255, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 255, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 256, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 256,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 256, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 257, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 257,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 257, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 258,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 259,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 259, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 260, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 261, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 261, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 261, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 261, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 262, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 262, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 262,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 262, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 262, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 263, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 263,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0140'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 263, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 264,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0181'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 265,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 265, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 266, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 267, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 267, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 268, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 268,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 268, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 269,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0139'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 270,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0141'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 271,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008B'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 272,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D9'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 273,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F9'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 273, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 274,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C8'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 275, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 276,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0083'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 276, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 277,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B3'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 278, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 279,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0153'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 280,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0038'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 281,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BB'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 282, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 282,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0058'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 282, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 283,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 284,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 284, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 285, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 286, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 286, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 286, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 286, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 287, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 287,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 287, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 288,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0013'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 289,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 289, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 290, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 291, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 291, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 292,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019F'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 293,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AD'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 294,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0109'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 295,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0115'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 295, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 296,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 297, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 298,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0042'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 298, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 299,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D7'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 300, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 301,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0124'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 302,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E9'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 303,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 304,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 305, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 305,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0101'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 305, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 306,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0011'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 307, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 308, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 309,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 309, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 310, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 311, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 311, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 312, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 312,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0002'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 312, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 313,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F1'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 314, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 315, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 316,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 316, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 317, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 318, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 318, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 319, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 319,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 319, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 320, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 320,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0126'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 320, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 321,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0156'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 322, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 323, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 324,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 324, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 325, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 326, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 326, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 327, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 327,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 327, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 328, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 328,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 328, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 329,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BF'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 330,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 330, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 331, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 332, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 332, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 333, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 333,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0136'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 333, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 334,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BC'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 335,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 335, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 336, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 337, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 337, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 338,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0129'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 339,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0189'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 339, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 340,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 341, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 342,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0103'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 343,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 344,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F6'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 345,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F0'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 346,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 347, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 347,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 347, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 348,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B0'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 349,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 349, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 350, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 351, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 351, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 351, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 351, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 352, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 352,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 352, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 353,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E5'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 354,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 354, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 355, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 356, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 356, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 356, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 356, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 357, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 357,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0104'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 357, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 358, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 358,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0167'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 358, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 359,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0096'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 360,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 360, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 361, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 362, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 362, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 362, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 362, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 363, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 363, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 363,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 363, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 363, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 364, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 364,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 364, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 365,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E1'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 366,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 366, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 367, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 368, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 368, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 368, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 368, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 369, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 369, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 369,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 369, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 369, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 370, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 370,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 370, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 371,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A2'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 372,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 372, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 373, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 374, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 374, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 375,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0057'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 376,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0151'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 377,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 377, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 378,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 379, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 380,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 380, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 381,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B9'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 382, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 383,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 383, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 384,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D4'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 385, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 386,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 387,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0118'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 388,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0134'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 389, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 389,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 389, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 390,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C3'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 391,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 391, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 392, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 393, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 394, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 395, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 395, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 396, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 396,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 396, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 397, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 397,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 397, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 398,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B8'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 399,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 399, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 400, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 401, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 401, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 402, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 402,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0099'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 402, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 403,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C2'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 404,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0066'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 405,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012F'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 406,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 407,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 408,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0078'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 409, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 409,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 409, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 410,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C3'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 411,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 411, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 412, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 413, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 413, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 414, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 414,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0145'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 414, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 415,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0064'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 416,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 416, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 417, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 418, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 418, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 419, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 419,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0092'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 419, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 420,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 421,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 421, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 422, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 423, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 423, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 424, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 424,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 424, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 425,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 426,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 426, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 427, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 428, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 428, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 429, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 429,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0030'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 429, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 430,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0043'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 431,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 431, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 432, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 433, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 433, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 434, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 434,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0184'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 434, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 435,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0094'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 436,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 436, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 437, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 438, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 438, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 439,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0046'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 440,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0004'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 440, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 441,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B7'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 442, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 443,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 443, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 444,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BF'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 445, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 446,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0017'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 446, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 447,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C7'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 448, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 449,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 449, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 450,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 451, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 452,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 453,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0133'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 454,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00EA'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 455,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F2'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 456,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016F'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 457, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 457,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 457, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 458,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0193'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 459,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 459, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 460, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 461, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 461, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 461, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 461, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 461, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 462,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AE'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 463,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0044'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 464,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019B'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 465,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DA'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 466,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0073'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 467, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 467,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 467, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 468,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 469,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 469, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 470, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 471, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 471, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 471, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 471, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 472, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 472, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 472,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 472, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 472, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 473,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0069'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 474,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0128'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 474, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 475,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0146'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 476, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 477,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 477, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 478,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0025'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 479, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 480,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 480, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 481,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00EF'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 482, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 483,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00EC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 483, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 484,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0023'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 485, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 486,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 486, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 487,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01AC'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 488, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 489,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 489, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 490,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0125'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 491, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 492,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 492, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 493,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0091'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 494, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 495,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0157'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 496,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 497,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DD'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 498,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B2'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 499,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 500,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F2'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 501,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01EB'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 502,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B0'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 503,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0186'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 504,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F0'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 505,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C9'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 506,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E2'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 507, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 507,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 507, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 508,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0014'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 509,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 509, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 510, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 511, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 511, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 512, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 512,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 512, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 513,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0119'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 514, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 515, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 516,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 516, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 517, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 518, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 518, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 519, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 519,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 519, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 520, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 520,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 520, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 521,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 522,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 522, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 523, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 524, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 524, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 524, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 524, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 525, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 525,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0123'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 525, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 526,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 527,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 527, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 528, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 529, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 529, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 530, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 530,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0143'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 530, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 531,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0107'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 532,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 532, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 533, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 534, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 534, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 535, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 535,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 535, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 536,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 537,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0016'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 538,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0039'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 539, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 539,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 539, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 540,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 541,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 541, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 542, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 543, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 543, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 543, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 543, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 544, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 544, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 544,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 544, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 544, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 545,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01C9'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 546,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0086'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 547,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F7'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 548,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0191'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 549,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004F'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 550,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0080'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 551,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CB'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 551, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 552,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0127'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 553, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 554,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 554, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 555,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01ED'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 556, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 557,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0063'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 558,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00FF'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 559,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E7'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 560,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 560, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 561,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003F'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 562, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 563,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0155'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 564,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FC'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 565,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CE'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 566,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B6'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 566, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 567,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F4'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 568, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 569,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 569, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 570,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0031'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 571, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 572,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0036'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 573,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 574,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 575,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 576,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 577,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0037'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 578,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001F'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 579,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0081'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 580,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0053'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 581,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 582,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F5'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 583, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 583,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0113'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 583, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 584,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0012'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 585,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 585, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 586, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 587, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 587, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 588, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 588,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0178'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 588, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 589,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A9'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 590,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 590, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 591, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 592, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 592, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 593, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 593,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 593, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 594,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D1'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 595,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 595, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 596, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 597, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 597, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 598, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 598,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F1'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 598, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 599,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_015F'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 600,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 600, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 601, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 602, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 602, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 603, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 603,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0196'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 603, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 604,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E0'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 605,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 605, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 606, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 607, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 607, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 608, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 608,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 608, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 609,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D2'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 610, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 611, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 612,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 612, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 613, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 614, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 614, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 615, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 615,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 615, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 616, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 616,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 616, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 617,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 617, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 618, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 619, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 619, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 619, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 619, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 620,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017B'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 621,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BB'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 622,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0026'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 623,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0097'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 624,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B1'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 625,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F5'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 626,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E4'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 627, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 627,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 627, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 628,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0024'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 629,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 629, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 630, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 631, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 631, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 632, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 632,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 632, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 633, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 633,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 633, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 634,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AF'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 635,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0045'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 635, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 636,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DB'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 637, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 638,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D2'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 638, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 639,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A6'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 640, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 641,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D1'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 642,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CA'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 643,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0007'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 644,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01B1'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 645, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 645,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 645, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 646,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_018C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 647,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 647, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 648, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 649, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 649, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 650,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0132'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 651,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00A8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 651, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 652,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0177'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 653, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 654,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E1'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 655,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D4'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 656,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E5'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 657,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0183'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 658,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AB'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 659,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0171'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 660, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 660,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 660, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 661,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0047'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 662,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 662, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 663, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 664, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 664, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 665, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 665,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 665, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 666,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 667,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 667, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 668, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 669, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 669, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 669, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 669, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 670, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 670,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 670, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 671,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01F4'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 672, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 673, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 674,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 674, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 675, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 676, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 676, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 677, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 677,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 677, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 678,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A4'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 679,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BC'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 679, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 680,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0190'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 681, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 682,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A9'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 683,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_012D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 684,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00EB'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 685,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AE'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 686,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C0'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 687,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DD'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 688,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01A8'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 689,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0121'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 690, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 690,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_014B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 690, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 691,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 692,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 692, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 693, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 694, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 694, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 695, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 695,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0112'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 695, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 696,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0079'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 697,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0122'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 697, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 698,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 699, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 700,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 700, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 701,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007F'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 702, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 703,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01D0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 703, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 704,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 705, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 706,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0199'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 707,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_005E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 708,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0195'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 709,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_017C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 710, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 710,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01FB'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 710, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 711,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 712,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 712, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 713, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 714, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 714, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 714, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 714, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 714, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 715, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 715,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 715, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 716,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CC'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 717,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 717, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 718, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 719, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 719, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 720, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 720,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_001E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 720, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 721, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 721,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_004D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 721, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 722, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 722,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0084'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 722, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 723,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 724,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 724, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 725, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 726, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 726, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 727, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 727,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0000'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 727, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 728,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_007F'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 729,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 729, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 730, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 731, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 731, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 732,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0120'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 733,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 734,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0027'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 735,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01DF'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 736,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0087'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 737,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0015'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 737, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 738,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0149'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 739,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_000B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 739, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 740,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0019'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 741,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00DF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 741, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 742,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_009C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 743,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00C5'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 743, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 744,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00EE'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 745,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01BE'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 745, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 746,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0098'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 747,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0192'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 747, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 748,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E7'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Query (Base + 749, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 749,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00AA'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 749, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 750,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_002D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 751,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 751, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 752, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 753, AMF.CMOF.Return_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 753, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Direction (Base + 754, AMF.CMOF.In_Parameter);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 754, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 754,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CF'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 754, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 754, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 755,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_003B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 755, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 756,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0028'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 757,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 757, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 758,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_008D'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 759,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0114'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 759, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 760,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0071'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 761,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00F8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 761, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 762,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0166'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 763, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 763,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01CD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 763, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 763, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 764, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 764,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 764, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 765, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 765,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0075'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 765, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 765, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 766, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 766,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0075'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 766, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 766, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 767, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 767,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0075'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 767, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 768, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 768,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0029'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 768, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 768, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 769, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 769,
        AMF.Internals.Tables.CMOF_String_Data_02.MS_0200'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 769, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 769, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 770, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 770,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0054'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 770, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 770, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 771, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 771,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0054'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 771, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 771, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 772, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 772,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00BD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 772, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 773, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 773,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00CD'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 773, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 773, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 774, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 774,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 774, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 774, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 775, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 775,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0169'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 775, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 775, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 776, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 776,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00D0'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 776, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 776, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 777, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 777,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_013B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 777, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 778, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 778,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0054'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 778, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 778, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 779, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 779,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00B3'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 779, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 779, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 780, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 780,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_016D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 780, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 780, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 781, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 781,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_00E4'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 781, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 781, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 782, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 782,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0001'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 782, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 782, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 783, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 783,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0001'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 783, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 783, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 784, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 784,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0102'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 784, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 784, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 785, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 785,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0102'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 785, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 785, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 786, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 786,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_019D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 786, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 786, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 787, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 787,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0009'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 787, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 788, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 788,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 788, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 788, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 789, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 789,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_01E8'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 789, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 789, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 790, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 790,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0082'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 790, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 791, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 791,
        AMF.Internals.Tables.CMOF_String_Data_02.MS_0200'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 791, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 792, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 792,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_011C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 792, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 793, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 793,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_010F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 793, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 793, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 794, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 794,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0180'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 794, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 795, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 795,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0168'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 795, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 796, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 796,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0187'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 796, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 797,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0032'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 797, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 798, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 798, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 798,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0088'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 798, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 798, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 799,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0110'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 799,
        AMF.Internals.Tables.CMOF_String_Data_01.MS_0162'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 800,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_0010'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 800,
        AMF.Internals.Tables.CMOF_String_Data_00.MS_006F'Access);
   end Initialize_Objects;

   ----------------------
   -- Initialize_Links --
   ----------------------

   procedure Initialize_Links is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 439,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 457,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 440,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 443,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 446,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 449,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 624,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 627,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 462,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 467,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 198,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 216,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 221,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 231,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 236,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 263,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 199,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 202,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 734,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 550,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 551,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 554,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 536,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 539,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 282,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 273,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 276,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 634,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 645,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 635,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 638,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 545,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 547,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 732,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 292,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 294,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 320,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 328,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 333,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 295,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 298,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 696,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 710,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 715,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 722,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 727,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 697,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 700,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 703,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 338,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 347,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 352,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 358,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 364,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 370,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 339,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 559,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 560,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 565,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 583,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 588,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 593,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 598,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 603,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 616,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 566,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 569,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 650,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 660,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 665,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 670,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 651,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 678,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 679,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 685,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 375,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 620,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 549,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 473,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 507,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 520,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 525,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 530,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 474,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 477,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 480,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 483,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 486,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 489,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 492,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 376,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 397,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 377,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 380,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 383,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 403,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 405,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 688,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 690,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 406,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 408,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 409,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 414,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 419,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 424,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 429,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Operation,
        Base + 434,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 454,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 455,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 456,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 453,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 625,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 626,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 464,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 465,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 466,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 205,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 207,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 208,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 736,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 557,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 537,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 538,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 270,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 271,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 279,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 546,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 733,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 343,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 342,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 346,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 345,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 344,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 582,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 579,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 580,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 656,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 655,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 658,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 654,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 502,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 503,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 387,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 386,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 404,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 452,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 463,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 209,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 735,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 558,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 280,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 642,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 643,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 644,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 641,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 548,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 301,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 302,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 303,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 304,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 196,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 706,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 708,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 709,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 707,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 563,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 564,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 577,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 578,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 573,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 572,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 574,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 575,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 581,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 576,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 196,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 657,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 659,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 683,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 684,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 682,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 687,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 686,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 621,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 622,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 737,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 623,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 506,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 500,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 764,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 505,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 764,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 496,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 497,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 498,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 499,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 495,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 504,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 501,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 388,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 689,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 407,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 776,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 776,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 777,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 777,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 797,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 797,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 798,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 798,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 778,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 778,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 779,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 779,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 780,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 780,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 781,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 781,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 782,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 782,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 783,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 783,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 763,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 763,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 784,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 784,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 785,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 785,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 764,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 764,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 786,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 786,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 765,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 765,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 787,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 787,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 766,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 766,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 788,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 788,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 767,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 767,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 768,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 768,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 789,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 789,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 769,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 769,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 790,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 790,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 791,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 791,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 770,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 770,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 792,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 792,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 179,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 179,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 771,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 179,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 771,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 793,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 793,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 181,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 181,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 772,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 181,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 772,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 182,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 182,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 794,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 182,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 794,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 183,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 183,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 773,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 183,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 773,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 795,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 795,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 185,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 185,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 774,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 185,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 774,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 186,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 186,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 796,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 186,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 796,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 775,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 775,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 188,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 188,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 196,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 737,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 179,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 181,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 183,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 185,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 187,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 182,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 184,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 186,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 188,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 191,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 191,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 193,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 193,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 195,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 195,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 196,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 197,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 197,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 196,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 198,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 199,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 199,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 200,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 199,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 201,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 200,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 199,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 202,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 202,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 203,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 202,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 204,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 203,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 202,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 205,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 206,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 207,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 208,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 209,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 212,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 211,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 214,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 215,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 212,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Redefined_Operation_Operation,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Redefined_Operation,
        Base + 690,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Operation_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 211,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 212,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 210,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 212,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 213,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 214,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 215,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 216,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 218,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 216,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 217,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 216,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 220,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 216,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 218,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 217,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 216,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 218,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 216,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 218,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 219,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 220,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 221,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 223,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 221,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 221,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 225,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 221,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 223,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 222,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 221,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 223,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 221,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 223,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 223,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 224,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 225,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 228,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 227,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 228,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 227,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 228,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 226,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 228,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 229,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 230,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 231,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 233,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 231,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 232,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 231,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 235,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 231,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 233,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 232,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 231,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 233,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 231,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 233,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 233,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 234,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 235,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 236,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 238,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 236,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 236,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 240,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 236,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 238,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 237,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 236,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 238,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 236,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 238,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 239,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 240,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 245,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 242,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 248,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 245,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Precondition_Pre_Context,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Precondition,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Precondition_Pre_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 242,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 243,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 244,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 245,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 241,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 245,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 246,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 247,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 248,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 253,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 250,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 255,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 251,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 253,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Precondition_Pre_Context,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Precondition,
        Base + 251,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Precondition_Pre_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 250,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 251,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 251,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 252,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 253,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 249,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 253,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 254,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 255,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 256,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 259,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 258,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 261,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 259,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 258,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 259,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 259,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 260,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 261,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 262,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 263,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 263,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 264,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 263,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 267,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 263,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 268,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 263,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 264,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 263,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 263,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 265,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 266,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 267,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 268,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 269,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 270,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 271,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 272,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 273,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 273,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 274,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 273,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 275,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 274,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 273,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 276,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 276,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 277,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 276,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 278,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 277,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 276,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 279,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 280,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 281,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 282,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 284,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 282,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 283,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 282,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 286,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 282,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 284,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 283,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 282,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 284,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 282,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 284,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 285,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 286,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 289,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 288,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 291,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 289,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 288,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 289,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 289,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 290,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 291,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 292,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 293,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 294,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 295,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 295,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 296,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 295,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 297,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 296,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 295,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 298,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 298,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 299,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 298,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 300,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 299,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 298,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 301,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 302,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 303,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 304,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 306,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 311,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 307,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Precondition_Pre_Context,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Precondition,
        Base + 307,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Precondition_Pre_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 306,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 307,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 307,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 308,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 305,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 309,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 310,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 311,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 316,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 313,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 318,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 319,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 314,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 316,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Precondition_Pre_Context,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Precondition,
        Base + 314,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Precondition_Pre_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 313,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 314,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 314,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 315,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 316,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 312,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 316,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 317,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 318,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 319,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 320,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 324,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 320,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 321,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 320,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 326,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 320,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 327,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 320,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 322,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 320,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 324,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Precondition_Pre_Context,
        Base + 320,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Precondition,
        Base + 322,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Precondition_Pre_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 321,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 320,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 322,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 320,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 322,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 323,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 324,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 320,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 324,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 325,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 326,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 327,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 328,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 330,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 328,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 329,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 328,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 332,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 328,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 330,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 329,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 328,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 330,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 328,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 330,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 331,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 332,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 333,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 335,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 333,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 334,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 333,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 337,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 333,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 335,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 334,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 333,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 335,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 333,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 335,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 336,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 337,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 196,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 338,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 339,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 339,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 340,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 339,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 341,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 340,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 339,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 342,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 343,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 344,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 345,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 346,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 347,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 349,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 347,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 348,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 347,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 351,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 347,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 349,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 348,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 347,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 349,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 347,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 349,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 349,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 350,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 351,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 352,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 354,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 352,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 353,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 352,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 356,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 352,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 357,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 352,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 354,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 353,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 352,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 354,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 352,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 354,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 355,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 356,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 357,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 358,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 360,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 358,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 359,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 358,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 362,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 358,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 363,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 358,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 360,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 359,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 358,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 360,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 358,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 360,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 361,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 362,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 363,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 364,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 366,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 364,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 365,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 364,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 368,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 364,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 369,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 364,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 366,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 365,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 364,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 366,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 364,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 366,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 367,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 368,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 369,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 370,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 372,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 370,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 371,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 370,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 374,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 370,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 372,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 371,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 370,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 372,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 370,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 372,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 373,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 374,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 375,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 376,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 377,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 377,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 378,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 377,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 379,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 378,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 377,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 380,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 380,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 381,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 380,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 382,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 381,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 380,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 383,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 383,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 384,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 383,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 385,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 384,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 383,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 386,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 387,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 388,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 391,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 390,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 395,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 396,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 391,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 393,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Precondition_Pre_Context,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Precondition,
        Base + 393,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Precondition_Pre_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 390,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 391,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 391,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 392,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 393,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 393,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 394,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 395,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 396,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 397,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 399,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 397,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 398,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 397,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 401,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 397,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 402,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 397,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 399,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 398,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 397,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 399,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 397,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 399,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 400,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 401,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 402,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 403,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 404,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 405,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 406,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 407,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 408,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 409,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 411,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 409,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 410,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 409,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 413,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 409,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 411,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 410,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 409,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 411,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 409,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 411,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 412,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 413,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 414,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 416,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 414,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 415,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 414,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 418,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 414,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 416,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 415,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 414,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 416,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 414,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 416,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 417,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 418,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 419,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 421,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 419,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 420,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 419,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 423,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 419,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 421,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 420,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 419,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 421,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 419,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 421,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 422,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 423,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 424,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 426,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 424,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 425,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 424,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 428,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 424,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 426,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 425,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 424,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 426,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 424,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 426,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 427,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 428,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 429,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 431,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 429,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 430,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 429,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 433,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 429,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 431,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 430,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 429,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 431,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 429,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 431,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 432,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 433,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 196,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 434,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 436,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 434,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 435,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 434,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 438,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 434,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 436,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 435,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 434,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 436,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 434,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 436,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 437,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 438,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 439,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 440,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 440,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 441,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 440,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 442,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 441,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 440,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 443,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 443,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 444,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 443,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 445,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 444,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 443,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 446,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 446,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 447,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 446,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 448,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 447,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 446,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 449,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 449,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 450,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 449,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 451,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 450,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 449,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 452,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 453,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 454,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 455,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 456,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 457,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 459,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 457,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 458,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 457,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 461,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 457,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 459,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 458,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 457,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 459,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 457,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 459,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 459,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 460,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 461,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 462,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 463,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 464,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 465,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 466,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 467,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 469,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 467,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 468,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 467,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 471,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 467,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 472,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 467,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 469,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Redefined_Operation_Operation,
        Base + 467,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Redefined_Operation,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Operation_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 468,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 467,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 469,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 467,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 469,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 470,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 471,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 472,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 473,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 474,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 474,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 475,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 474,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 476,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 475,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 474,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 477,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 477,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 478,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 477,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 479,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 478,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 477,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 480,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 480,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 481,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 480,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 482,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 481,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 480,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 483,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 483,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 484,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 483,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 485,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 484,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 483,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 486,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 486,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 487,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 486,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 488,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 487,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 486,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 489,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 489,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 490,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 489,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 491,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 490,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 489,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 492,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 492,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 493,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 492,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 494,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 493,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 492,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 495,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 496,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 497,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 498,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 499,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 500,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 501,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 502,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 503,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 504,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 505,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 506,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 507,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 509,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 507,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 508,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 507,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 511,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 507,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 509,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 508,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 507,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 509,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 507,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 509,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 509,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 510,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 511,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 516,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 513,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 518,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 519,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 514,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 516,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Precondition_Pre_Context,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Precondition,
        Base + 514,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Precondition_Pre_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Redefined_Operation_Operation,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Redefined_Operation,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Operation_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 513,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 514,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 514,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 515,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 516,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 512,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 516,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 517,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 518,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 519,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 520,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 522,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 520,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 521,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 520,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 524,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 520,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 522,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 521,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 520,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 522,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 520,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 522,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 523,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 524,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 525,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 527,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 525,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 526,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 525,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 529,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 525,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 527,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 526,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 525,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 527,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 525,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 527,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 528,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 529,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 530,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 532,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 530,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 531,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 530,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 534,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 530,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 535,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 530,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 532,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 531,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 530,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 532,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 530,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 532,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 533,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 534,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 535,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 536,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 537,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 538,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 539,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 541,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 539,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 540,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 539,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 543,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 539,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 544,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 539,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 541,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Redefined_Operation_Operation,
        Base + 539,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Redefined_Operation,
        Base + 257,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Operation_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 540,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 539,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 541,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 539,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 541,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 542,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 543,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 544,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 545,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 546,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 547,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 548,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 549,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 550,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 551,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 551,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 552,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 551,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 553,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 552,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 551,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 554,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 554,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 555,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 554,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 556,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 555,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 554,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 557,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 558,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 559,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 560,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 560,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 561,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 560,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 562,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 561,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 560,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 563,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 564,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 565,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 566,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 566,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 567,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 566,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 568,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 567,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 566,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 569,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 569,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 570,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 569,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 571,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 570,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 569,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 572,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 573,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 574,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 575,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 576,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 577,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 578,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 579,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 580,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 581,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 582,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 583,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 585,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 583,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 584,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 583,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 587,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 583,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 585,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 584,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 583,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 585,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 583,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 585,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 585,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 586,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 587,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 588,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 590,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 588,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 589,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 588,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 592,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 588,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 590,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 589,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 588,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 590,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 588,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 590,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 590,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 591,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 592,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 593,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 595,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 593,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 594,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 593,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 597,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 593,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 595,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 594,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 593,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 595,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 593,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 595,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 595,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 596,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 597,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 190,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 598,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 600,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 598,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 599,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 598,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 602,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 598,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 600,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 599,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 598,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 600,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 598,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 600,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 600,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 601,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 602,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 196,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 603,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 605,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 603,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 604,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 603,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 607,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 603,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 605,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 604,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 603,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 605,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 603,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 605,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 605,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 606,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 607,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 612,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 609,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 614,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 615,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 610,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 612,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Precondition_Pre_Context,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Precondition,
        Base + 610,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Precondition_Pre_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Redefined_Operation_Operation,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Redefined_Operation,
        Base + 389,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Operation_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 609,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 610,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 610,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 611,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 612,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 608,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 612,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 613,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 614,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 615,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 616,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 617,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 616,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 619,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 616,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 617,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 617,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 616,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 617,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 618,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 619,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 620,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 621,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 622,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 623,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 624,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 625,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 626,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 627,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 629,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 627,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 628,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 627,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 631,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 627,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 632,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 627,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 633,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 627,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 629,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Redefined_Operation_Operation,
        Base + 627,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Redefined_Operation,
        Base + 715,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Operation_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 628,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 627,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 629,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 627,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 629,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 630,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 631,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 632,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 633,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 634,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 635,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 635,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 636,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 635,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 637,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 636,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 635,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 638,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 638,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 639,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 638,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 640,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 639,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 638,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 641,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 642,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 643,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 644,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 645,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 647,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 645,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 646,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 645,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 649,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 645,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 647,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 646,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 645,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 647,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 645,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 647,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 648,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 649,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 650,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 651,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 651,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 652,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 651,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 653,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 652,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 651,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 654,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 655,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 656,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 657,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 658,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 659,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 660,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 662,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 660,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 661,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 660,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 664,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 660,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 662,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Redefined_Operation_Operation,
        Base + 660,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Redefined_Operation,
        Base + 287,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Operation_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 661,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 660,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 662,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 660,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 662,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 663,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 664,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 665,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 667,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 665,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 666,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 665,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 669,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 665,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 667,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 666,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 665,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 667,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 665,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 667,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 668,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 669,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 670,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 674,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 670,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 671,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 670,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 676,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 670,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 677,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 670,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 672,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 670,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 674,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Precondition_Pre_Context,
        Base + 670,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Precondition,
        Base + 672,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Precondition_Pre_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 671,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 670,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 672,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 670,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 672,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 673,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 674,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 670,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 674,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 675,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 676,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 677,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 678,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 679,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 679,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 680,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 679,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 681,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 680,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 679,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 682,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 683,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 684,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 685,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 686,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 687,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 688,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 689,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 690,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 692,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 690,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 691,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 690,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 694,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 690,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 695,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 690,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 692,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 691,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 690,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 692,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 690,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 692,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 693,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 694,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 695,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 696,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 697,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 697,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 698,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 697,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 699,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 698,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 697,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 700,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 700,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 701,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 700,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 702,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 701,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 700,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 703,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 703,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 704,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 703,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 705,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 704,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 703,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 706,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 707,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 708,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 709,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 710,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 712,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 710,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 711,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 710,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 714,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 710,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 712,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 711,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 710,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 712,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 710,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 712,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 713,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 714,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 715,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 717,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 715,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 716,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 715,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 719,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 715,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 720,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 715,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 721,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 715,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 717,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 716,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 715,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 717,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 715,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 717,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 718,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 719,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 192,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 720,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 721,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 722,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 724,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 722,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 723,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 722,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 726,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 722,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 724,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 723,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 722,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 724,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 722,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 724,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 725,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 726,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 727,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 729,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 727,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 728,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 727,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 731,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 727,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 729,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 728,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 727,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 729,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 727,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 729,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 730,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 731,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 194,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 732,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 733,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 734,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 735,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 736,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 737,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 738,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 737,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 739,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 737,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 741,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 737,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 743,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 737,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 745,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 738,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 737,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 739,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 740,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 740,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 739,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 741,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 742,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 742,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 741,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 743,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 744,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 744,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 743,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 745,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 746,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 746,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 745,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 748,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 755,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 757,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 759,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 761,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Operation_Owned_Operation_Datatype,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Data_Type_Owned_Operation,
        Base + 749,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Datatype);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 748,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Body_Condition_Body_Context,
        Base + 749,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Body_Condition,
        Base + 751,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Body_Condition_Body_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 749,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 750,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 749,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 753,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Parameter_Owned_Parameter_Operation,
        Base + 749,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Operation_Owned_Parameter,
        Base + 754,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Parameter_Operation);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 749,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 751,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 750,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 749,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 751,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 749,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 751,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 752,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 753,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 754,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 747,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 755,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 756,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 756,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 755,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 757,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 758,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 758,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 757,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 759,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 760,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 760,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 759,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 761,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 762,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 762,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 761,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 763,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 764,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 764,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 765,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 766,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 767,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 768,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 769,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 770,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 771,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 772,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 772,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 773,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 774,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 775,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 776,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 777,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 777,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 778,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 779,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 780,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 781,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 782,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 783,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 784,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 785,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 786,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 787,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 787,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 788,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 789,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 790,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 790,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 791,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 792,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 792,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 793,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 794,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 794,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 795,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 795,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 796,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 796,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 797,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Subsetted_Property_Property,
        Base + 798,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Subsetted_Property,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Subsetted_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 798,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Element_Tag,
        Base + 799,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Element_Tag,
        Base + 800,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 189,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
   end Initialize_Links;

end AMF.Internals.Tables.CMOF_Metamodel;
