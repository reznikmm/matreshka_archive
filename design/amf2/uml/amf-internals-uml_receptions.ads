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
with AMF.Internals.UML_Elements;
with AMF.String_Collections;
with AMF.UML.Behaviors.Collections;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Constraints.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Element_Imports.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Package_Imports.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameter_Sets.Collections;
with AMF.UML.Parameters.Collections;
with AMF.UML.Receptions;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.Signals;
with AMF.UML.String_Expressions;
with AMF.UML.Types.Collections;

package AMF.Internals.UML_Receptions is

   type UML_Reception_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Receptions.UML_Reception with null record;

   overriding function Get_Signal
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Signals.UML_Signal_Access;

   overriding procedure Set_Signal
    (Self : not null access UML_Reception_Proxy;
     To   : AMF.UML.Signals.UML_Signal_Access);

   overriding function Get_Concurrency
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.UML_Call_Concurrency_Kind;

   overriding procedure Set_Concurrency
    (Self : not null access UML_Reception_Proxy;
     To   : AMF.UML.UML_Call_Concurrency_Kind);

   overriding function Get_Is_Abstract
    (Self : not null access constant UML_Reception_Proxy)
       return Boolean;

   overriding procedure Set_Is_Abstract
    (Self : not null access UML_Reception_Proxy;
     To   : Boolean);

   overriding function Get_Method
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior;

   overriding function Get_Owned_Parameter
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Parameters.Collections.Ordered_Set_Of_UML_Parameter;

   overriding function Get_Owned_Parameter_Set
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Parameter_Sets.Collections.Set_Of_UML_Parameter_Set;

   overriding function Get_Raised_Exception
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Types.Collections.Set_Of_UML_Type;

   overriding function Get_Featuring_Classifier
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function Get_Is_Static
    (Self : not null access constant UML_Reception_Proxy)
       return Boolean;

   overriding procedure Set_Is_Static
    (Self : not null access UML_Reception_Proxy;
     To   : Boolean);

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Reception_Proxy)
       return Boolean;

   overriding procedure Set_Is_Leaf
    (Self : not null access UML_Reception_Proxy;
     To   : Boolean);

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;

   overriding function Get_Name
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.Optional_String;

   overriding procedure Set_Name
    (Self : not null access UML_Reception_Proxy;
     To   : AMF.Optional_String);

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Reception_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);

   overriding function Get_Namespace
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.Optional_String;

   overriding function Get_Visibility
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access UML_Reception_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Get_Owner
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Elements.UML_Element_Access;

   overriding function Get_Element_Import
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import;

   overriding function Get_Imported_Member
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Get_Member
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Get_Owned_Member
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Get_Owned_Rule
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;

   overriding function Get_Package_Import
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import;

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Reception_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Reception_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Reception_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;

   overriding function All_Namespaces
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;

   overriding function Namespace
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Qualified_Name
    (Self : not null access constant UML_Reception_Proxy)
       return League.Strings.Universal_String;

   overriding function Separator
    (Self : not null access constant UML_Reception_Proxy)
       return League.Strings.Universal_String;

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Reception_Proxy)
       return Boolean;

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Reception_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Reception_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String;

   overriding function Import_Members
    (Self : not null access constant UML_Reception_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Imported_Member
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Reception_Proxy)
       return Boolean;

   overriding function Owned_Member
    (Self : not null access constant UML_Reception_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

end AMF.Internals.UML_Receptions;
