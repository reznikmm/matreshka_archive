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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Internals.UML_Named_Elements;
with AMF.String_Collections;
with AMF.UML.Behaviors.Collections;
with AMF.UML.Classes;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Constraints.Collections;
with AMF.UML.Data_Types;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Element_Imports.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Interfaces;
with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Operation_Template_Parameters;
with AMF.UML.Operations.Collections;
with AMF.UML.Package_Imports.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameter_Sets.Collections;
with AMF.UML.Parameterable_Elements.Collections;
with AMF.UML.Parameters.Collections;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Bindings.Collections;
with AMF.UML.Template_Parameters;
with AMF.UML.Template_Signatures;
with AMF.UML.Types.Collections;

package AMF.Internals.UML_Operations is

   type UML_Operation_Proxy is
     limited new AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy
       and AMF.UML.Operations.UML_Operation with null record;

   overriding function Get_Body_Condition
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Constraints.UML_Constraint_Access;

   overriding procedure Set_Body_Condition
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Constraints.UML_Constraint_Access);

   overriding function Get_Class
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Classes.UML_Class_Access;

   overriding procedure Set_Class
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Classes.UML_Class_Access);

   overriding function Get_Datatype
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Data_Types.UML_Data_Type_Access;

   overriding procedure Set_Datatype
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Data_Types.UML_Data_Type_Access);

   overriding function Get_Interface
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Interfaces.UML_Interface_Access;

   overriding procedure Set_Interface
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Interfaces.UML_Interface_Access);

   overriding function Get_Is_Ordered
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

   overriding function Get_Is_Query
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

   overriding procedure Set_Is_Query
    (Self : not null access UML_Operation_Proxy;
     To   : Boolean);

   overriding function Get_Is_Unique
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

   overriding function Get_Lower
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Optional_Integer;

   overriding function Get_Owned_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameters.Collections.Ordered_Set_Of_UML_Parameter;

   overriding function Get_Postcondition
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;

   overriding function Get_Precondition
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;

   overriding function Get_Raised_Exception
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Types.Collections.Set_Of_UML_Type;

   overriding function Get_Redefined_Operation
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Operations.Collections.Set_Of_UML_Operation;

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access;

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access);

   overriding function Get_Type
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Types.UML_Type_Access;

   overriding function Get_Upper
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Optional_Unlimited_Natural;

   overriding function Get_Concurrency
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.UML_Call_Concurrency_Kind;

   overriding procedure Set_Concurrency
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.UML_Call_Concurrency_Kind);

   overriding function Get_Is_Abstract
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

   overriding procedure Set_Is_Abstract
    (Self : not null access UML_Operation_Proxy;
     To   : Boolean);

   overriding function Get_Method
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior;

   overriding function Get_Owned_Parameter_Set
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameter_Sets.Collections.Set_Of_UML_Parameter_Set;

   overriding function Get_Featuring_Classifier
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function Get_Is_Static
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

   overriding procedure Set_Is_Static
    (Self : not null access UML_Operation_Proxy;
     To   : Boolean);

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

   overriding procedure Set_Is_Leaf
    (Self : not null access UML_Operation_Proxy;
     To   : Boolean);

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;

   overriding function Get_Name
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Optional_String;

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);

   overriding function Get_Namespace
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Optional_String;

   overriding function Get_Visibility
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Get_Owner
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Elements.UML_Element_Access;

   overriding function Get_Element_Import
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import;

   overriding function Get_Imported_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Get_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Get_Owned_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Get_Owned_Rule
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;

   overriding function Get_Package_Import
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import;

   overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access;

   overriding procedure Set_Owned_Template_Signature
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access);

   overriding function Get_Template_Binding
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Template_Bindings.Collections.Set_Of_UML_Template_Binding;

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Operation_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;

   overriding function Is_Ordered
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

   overriding function Is_Unique
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

   overriding function Lower
    (Self : not null access constant UML_Operation_Proxy)
       return Integer;

   overriding function Return_Result
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameters.Collections.Set_Of_UML_Parameter;

   overriding function Types
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Types.UML_Type_Access;

   overriding function Upper
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Unlimited_Natural;

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Operation_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Operation_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;

   overriding function All_Namespaces
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;

   overriding function Namespace
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Qualified_Name
    (Self : not null access constant UML_Operation_Proxy)
       return League.Strings.Universal_String;

   overriding function Separator
    (Self : not null access constant UML_Operation_Proxy)
       return League.Strings.Universal_String;

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Operation_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Operation_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String;

   overriding function Import_Members
    (Self : not null access constant UML_Operation_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Imported_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

   overriding function Owned_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Is_Template
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

   overriding function Parameterable_Elements
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameterable_Elements.Collections.Set_Of_UML_Parameterable_Element;

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Operation_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean;

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;

end AMF.Internals.UML_Operations;
