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
with AMF.Internals.UML_Multiplicity_Elements;
with AMF.UML.Comments.Collections;
with AMF.UML.Connectable_Element_Template_Parameters;
with AMF.UML.Connector_Ends.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Multiplicity_Elements;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Operations;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameter_Sets.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.Parameters;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Parameters;
with AMF.UML.Types;
with AMF.UML.Value_Specifications;

package AMF.Internals.UML_Parameters is

   package Multiplicity_Elements is
     new AMF.Internals.UML_Multiplicity_Elements
          (AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy);

   type UML_Parameter_Proxy is
     limited new Multiplicity_Elements.UML_Multiplicity_Element_Proxy
       and AMF.UML.Parameters.UML_Parameter with null record;

   overriding function Get_Default
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_String;

   overriding procedure Set_Default
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.Optional_String);

   overriding function Get_Default_Value
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;

   overriding procedure Set_Default_Value
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);

   overriding function Get_Direction
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.UML_Parameter_Direction_Kind;

   overriding procedure Set_Direction
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.UML_Parameter_Direction_Kind);

   overriding function Get_Effect
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Optional_UML_Parameter_Effect_Kind;

   overriding procedure Set_Effect
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Optional_UML_Parameter_Effect_Kind);

   overriding function Get_Is_Exception
    (Self : not null access constant UML_Parameter_Proxy)
       return Boolean;

   overriding procedure Set_Is_Exception
    (Self : not null access UML_Parameter_Proxy;
     To   : Boolean);

   overriding function Get_Is_Stream
    (Self : not null access constant UML_Parameter_Proxy)
       return Boolean;

   overriding procedure Set_Is_Stream
    (Self : not null access UML_Parameter_Proxy;
     To   : Boolean);

   overriding function Get_Operation
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Operations.UML_Operation_Access;

   overriding procedure Set_Operation
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Operations.UML_Operation_Access);

   overriding function Get_Parameter_Set
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Parameter_Sets.Collections.Set_Of_UML_Parameter_Set;

   overriding function Get_Is_Ordered
    (Self : not null access constant UML_Parameter_Proxy)
       return Boolean;

   overriding function Get_Is_Unique
    (Self : not null access constant UML_Parameter_Proxy)
       return Boolean;

   overriding procedure Set_Is_Unique
    (Self : not null access UML_Parameter_Proxy;
     To   : Boolean);

   overriding function Get_Lower
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_Integer;

   overriding procedure Set_Lower
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.Optional_Integer);

   overriding function Get_Lower_Value
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;

   overriding procedure Set_Lower_Value
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);

   overriding function Get_Upper
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_Unlimited_Natural;

   overriding procedure Set_Upper
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.Optional_Unlimited_Natural);

   overriding function Get_Upper_Value
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;

   overriding procedure Set_Upper_Value
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Get_Owner
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Elements.UML_Element_Access;

   overriding function Get_End
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Connector_Ends.Collections.Ordered_Set_Of_UML_Connector_End;

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access;

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access);

   overriding function Get_Type
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Types.UML_Type_Access;

   overriding procedure Set_Type
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Types.UML_Type_Access);

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;

   overriding function Get_Name
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_String;

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);

   overriding function Get_Namespace
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_String;

   overriding function Get_Visibility
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);

   overriding function Default
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_String;

   overriding function Compatible_With
    (Self : not null access constant UML_Parameter_Proxy;
     Other : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean;

   overriding function Includes_Cardinality
    (Self : not null access constant UML_Parameter_Proxy;
     C : Integer)
       return Boolean;

   overriding function Includes_Multiplicity
    (Self : not null access constant UML_Parameter_Proxy;
     M : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean;

   overriding function Iss
    (Self : not null access constant UML_Parameter_Proxy;
     Lowerbound : Integer;
     Upperbound : Integer)
       return Boolean;

   overriding function Is_Multivalued
    (Self : not null access constant UML_Parameter_Proxy)
       return Boolean;

   overriding function Lower
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_Integer;

   overriding function Lower_Bound
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_Integer;

   overriding function Upper
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_Unlimited_Natural;

   overriding function Upper_Bound
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_Unlimited_Natural;

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Parameter_Proxy)
       return Boolean;

   overriding function Ends
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Connector_Ends.Collections.Set_Of_UML_Connector_End;

   overriding function All_Namespaces
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Parameter_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;

   overriding function Namespace
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Qualified_Name
    (Self : not null access constant UML_Parameter_Proxy)
       return League.Strings.Universal_String;

   overriding function Separator
    (Self : not null access constant UML_Parameter_Proxy)
       return League.Strings.Universal_String;

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Parameter_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean;

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Parameter_Proxy)
       return Boolean;

end AMF.Internals.UML_Parameters;
