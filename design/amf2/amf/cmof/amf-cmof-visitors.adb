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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Properties.Collections;

package body AMF.CMOF.Visitors is

   -----------------------
   -- Visit_Association --
   -----------------------

   not overriding procedure Visit_Association
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Associations.CMOF_Association'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Association;

   --------------------
   -- Visit_Children --
   --------------------

   procedure Visit_Children
    (Self    : in out Abstract_CMOF_Visitor'Class;
     Element : not null access AMF.CMOF.Elements.CMOF_Element'Class) is
   begin
      --  Element::ownedElement can be used to traverse all children elements,
      --  but it is not implemented now, so children of each element are
      --  atraversed in element specific way.

      if Element.all in AMF.CMOF.Associations.CMOF_Association'Class then
         null;

      elsif Element.all in AMF.CMOF.Classes.CMOF_Class'Class then
         declare
            Children : constant
              AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
                := AMF.CMOF.Classes.CMOF_Class'Class
                    (Element.all).Get_Owned_Attribute;

         begin
            for J in 1 .. Children.Length loop
               Self.Visit_Element (Children.Element (J));
            end loop;
         end;

      elsif Element.all in AMF.CMOF.Comments.CMOF_Comment'Class then
         null;

      elsif Element.all in AMF.CMOF.Constraints.CMOF_Constraint'Class then
         null;

      elsif Element.all in AMF.CMOF.Enumerations.CMOF_Enumeration'Class then
         null;

      elsif Element.all
              in AMF.CMOF.Primitive_Types.CMOF_Primitive_Type'Class
      then
         null;

      elsif Element.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class then
         --  Enumeration and PrimitiveType are subclasses of DataType, thus
         --  they should be handled above this check.

         null;

      elsif Element.all
              in AMF.CMOF.Element_Imports.CMOF_Element_Import'Class
      then
         null;

      elsif Element.all
              in AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal'Class
      then
         null;

      elsif Element.all in AMF.CMOF.Expressions.CMOF_Expression'Class then
         null;

      elsif Element.all
              in AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression'Class
      then
         null;

      elsif Element.all in AMF.CMOF.Operations.CMOF_Operation'Class then
         null;

      elsif Element.all in AMF.CMOF.Packages.CMOF_Package'Class then
         declare
            Children : constant
              AMF.CMOF.Packageable_Elements.Collections.
                Set_Of_CMOF_Packageable_Element
                := AMF.CMOF.Packages.CMOF_Package'Class
                    (Element.all).Get_Packaged_Element;

         begin
            for J in 1 .. Children.Length loop
               Self.Visit_Element (Children.Element (J));
            end loop;
         end;


      elsif Element.all
              in AMF.CMOF.Package_Imports.CMOF_Package_Import'Class
      then
         null;

      elsif Element.all
              in AMF.CMOF.Package_Merges.CMOF_Package_Merge'Class
      then
         null;

      elsif Element.all in AMF.CMOF.Parameters.CMOF_Parameter'Class then
         null;

      elsif Element.all in AMF.CMOF.Properties.CMOF_Property'Class then
         null;

      elsif Element.all in AMF.CMOF.Tags.CMOF_Tag'Class then
         null;

      else
         raise Program_Error;
      end if;
   end Visit_Children;

   -----------------
   -- Visit_Class --
   -----------------

   not overriding procedure Visit_Class
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Classes.CMOF_Class'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Class;

   -------------------
   -- Visit_Comment --
   -------------------

   not overriding procedure Visit_Comment
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Comments.CMOF_Comment'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Comment;

   ----------------------
   -- Visit_Constraint --
   ----------------------

   not overriding procedure Visit_Constraint
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Constraints.CMOF_Constraint'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Constraint;

   ---------------------
   -- Visit_Data_Type --
   ---------------------

   not overriding procedure Visit_Data_Type
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Data_Type;

   -------------------
   -- Visit_Element --
   -------------------

   procedure Visit_Element
    (Self    : in out Abstract_CMOF_Visitor'Class;
     Element : not null access AMF.CMOF.Elements.CMOF_Element'Class) is
   begin
      if Element.all in AMF.CMOF.Associations.CMOF_Association'Class then
         Self.Visit_Association
          (AMF.CMOF.Associations.CMOF_Association'Class (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Classes.CMOF_Class'Class then
         Self.Visit_Class
          (AMF.CMOF.Classes.CMOF_Class'Class (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Comments.CMOF_Comment'Class then
         Self.Visit_Comment
          (AMF.CMOF.Comments.CMOF_Comment'Class (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Constraints.CMOF_Constraint'Class then
         Self.Visit_Constraint
          (AMF.CMOF.Constraints.CMOF_Constraint'Class (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Enumerations.CMOF_Enumeration'Class then
         Self.Visit_Enumeration
          (AMF.CMOF.Enumerations.CMOF_Enumeration'Class (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Primitive_Types.CMOF_Primitive_Type then
         Self.Visit_Primitive_Type
          (AMF.CMOF.Primitive_Types.CMOF_Primitive_Type'Class
            (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class then
         --  Enumeration and PrimitiveType are subclasses of DataType, thus
         --  they should be handled above this check.

         Self.Visit_Data_Type
          (AMF.CMOF.Data_Types.CMOF_Data_Type'Class (Element.all)'Access);

      elsif Element.all
              in AMF.CMOF.Element_Imports.CMOF_Element_Import'Class
      then
         Self.Visit_Element_Import
          (AMF.CMOF.Element_Imports.CMOF_Element_Import'Class
            (Element.all)'Access);

      elsif Element.all
              in AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal'Class
      then
         Self.Visit_Enumeration_Literal
          (AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal'Class
            (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Expressions.CMOF_Expression'Class then
         Self.Visit_Expression
          (AMF.CMOF.Expressions.CMOF_Expression'Class (Element.all)'Access);

      elsif Element.all
              in AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression'Class
      then
         Self.Visit_Opaque_Expression
          (AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression'Class
            (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Operations.CMOF_Operation'Class then
         Self.Visit_Operation
          (AMF.CMOF.Operations.CMOF_Operation'Class (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Packages.CMOF_Package'Class then
         Self.Visit_Package
          (AMF.CMOF.Packages.CMOF_Package'Class (Element.all)'Access);

      elsif Element.all
              in AMF.CMOF.Package_Imports.CMOF_Package_Import'Class
      then
         Self.Visit_Package_Import
          (AMF.CMOF.Package_Imports.CMOF_Package_Import'Class
            (Element.all)'Access);

      elsif Element.all
              in AMF.CMOF.Package_Merges.CMOF_Package_Merge'Class
      then
         Self.Visit_Package_Merge
          (AMF.CMOF.Package_Merges.CMOF_Package_Merge'Class
            (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Parameters.CMOF_Parameter'Class then
         Self.Visit_Parameter
          (AMF.CMOF.Parameters.CMOF_Parameter'Class (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Properties.CMOF_Property'Class then
         Self.Visit_Property
          (AMF.CMOF.Properties.CMOF_Property'Class (Element.all)'Access);

      elsif Element.all in AMF.CMOF.Tags.CMOF_Tag'Class then
         Self.Visit_Tag
          (AMF.CMOF.Tags.CMOF_Tag'Class (Element.all)'Access);

      else
         raise Program_Error;
      end if;
   end Visit_Element;

   --------------------------
   -- Visit_Element_Import --
   --------------------------

   not overriding procedure Visit_Element_Import
    (Self    : in out Abstract_CMOF_Visitor;
     Element :
       not null access AMF.CMOF.Element_Imports.CMOF_Element_Import'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Element_Import;

   -----------------------
   -- Visit_Enumeration --
   -----------------------

   not overriding procedure Visit_Enumeration
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Enumerations.CMOF_Enumeration'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Enumeration;

   -------------------------------
   -- Visit_Enumeration_Literal --
   -------------------------------

   not overriding procedure Visit_Enumeration_Literal
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access
       AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Enumeration_Literal;

   ----------------------
   -- Visit_Expression --
   ----------------------

   not overriding procedure Visit_Expression
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Expressions.CMOF_Expression'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Expression;

   -----------------------------
   -- Visit_Opaque_Expression --
   -----------------------------

   not overriding procedure Visit_Opaque_Expression
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access
       AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Opaque_Expression;

   ---------------------
   -- Visit_Operation --
   ---------------------

   not overriding procedure Visit_Operation
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Operations.CMOF_Operation'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Operation;

   -------------------
   -- Visit_Package --
   -------------------

   not overriding procedure Visit_Package
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Packages.CMOF_Package'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Package;

   --------------------------
   -- Visit_Package_Import --
   --------------------------

   not overriding procedure Visit_Package_Import
    (Self    : in out Abstract_CMOF_Visitor;
     Element :
       not null access AMF.CMOF.Package_Imports.CMOF_Package_Import'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Package_Import;

   -------------------------
   -- Visit_Package_Merge --
   -------------------------

   not overriding procedure Visit_Package_Merge
    (Self    : in out Abstract_CMOF_Visitor;
     Element :
       not null access AMF.CMOF.Package_Merges.CMOF_Package_Merge'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Package_Merge;

   ---------------------
   -- Visit_Parameter --
   ---------------------

   not overriding procedure Visit_Parameter
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Parameters.CMOF_Parameter'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Parameter;

   --------------------------
   -- Visit_Primitive_Type --
   --------------------------

   not overriding procedure Visit_Primitive_Type
    (Self    : in out Abstract_CMOF_Visitor;
     Element :
       not null access AMF.CMOF.Primitive_Types.CMOF_Primitive_Type'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Primitive_Type;

   --------------------
   -- Visit_Property --
   --------------------

   not overriding procedure Visit_Property
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Properties.CMOF_Property'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Property;

   ---------------
   -- Visit_Tag --
   ---------------

   not overriding procedure Visit_Tag
    (Self    : in out Abstract_CMOF_Visitor;
     Element : not null access AMF.CMOF.Tags.CMOF_Tag'Class) is
   begin
      Self.Visit_Children (Element);
   end Visit_Tag;

end AMF.CMOF.Visitors;
