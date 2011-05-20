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
with AMF.CMOF.Classes;
with AMF.CMOF.Classifiers.Collections;
with AMF.CMOF.Comments.Collections;
with AMF.CMOF.Constraints.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Element_Imports.Collections;
with AMF.CMOF.Elements.Collections;
with AMF.CMOF.Named_Elements.Collections;
with AMF.CMOF.Namespaces;
with AMF.CMOF.Operations.Collections;
with AMF.CMOF.Package_Imports.Collections;
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Parameters.Collections;
with AMF.CMOF.Redefinable_Elements.Collections;
with AMF.CMOF.Types.Collections;
with AMF.Internals.CMOF_Elements;

package AMF.Internals.CMOF_Operations is

   type CMOF_Operation_Proxy is
     limited new AMF.Internals.CMOF_Elements.CMOF_Element_Proxy
       and AMF.CMOF.Operations.CMOF_Operation_Interface
         with null record;

   --  XXX These subprograms are stubs

   overriding function Get_Owned_Element
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Get_Owner
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Elements.CMOF_Element;

   overriding function Get_Owned_Comment
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment;

   overriding function Get_Name
    (Self : not null access constant CMOF_Operation_Proxy)
       return Optional_String;

   overriding procedure Set_Name
    (Self : not null access CMOF_Operation_Proxy;
     To   : Optional_String);

   overriding function Get_Visibility
    (Self : not null access constant CMOF_Operation_Proxy)
       return CMOF.Optional_CMOF_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access CMOF_Operation_Proxy;
     To   : CMOF.Optional_CMOF_Visibility_Kind);

   overriding function Get_Namespace
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Namespaces.CMOF_Namespace;

   overriding function Get_Qualified_Name
    (Self : not null access constant CMOF_Operation_Proxy)
       return Optional_String;

   overriding function Get_Imported_Member
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Get_Element_Import
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Element_Imports.Collections.Set_Of_CMOF_Element_Import;

   overriding function Get_Package_Import
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Package_Imports.Collections.Set_Of_CMOF_Package_Import;

   overriding function Get_Owned_Member
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element;

   overriding function Get_Member
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element;

   overriding function Get_Owned_Rule
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Constraints.Collections.Set_Of_CMOF_Constraint;

   overriding function Get_Redefinition_Context
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier;

   overriding function Get_Redefined_Element
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Redefinable_Elements.Collections.Set_Of_CMOF_Redefinable_Element;

   overriding function Get_Is_Leaf
    (Self : not null access constant CMOF_Operation_Proxy)
       return Boolean;

   overriding procedure Set_Is_Leaf
    (Self : not null access CMOF_Operation_Proxy;
     To   : Boolean);

   overriding function Get_Featuring_Classifier
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier;

   overriding function Get_Is_Query
    (Self : not null access constant CMOF_Operation_Proxy)
       return Boolean;

   overriding procedure Set_Is_Query
    (Self : not null access CMOF_Operation_Proxy;
     To   : Boolean);

   overriding function Get_Is_Ordered
    (Self : not null access constant CMOF_Operation_Proxy)
       return Boolean;

   overriding procedure Set_Is_Ordered
    (Self : not null access CMOF_Operation_Proxy;
     To   : Boolean);

   overriding function Get_Is_Unique
    (Self : not null access constant CMOF_Operation_Proxy)
       return Boolean;

   overriding procedure Set_Is_Unique
    (Self : not null access CMOF_Operation_Proxy;
     To   : Boolean);

   overriding function Get_Lower
    (Self : not null access constant CMOF_Operation_Proxy)
       return Optional_Integer;

   overriding procedure Set_Lower
    (Self : not null access CMOF_Operation_Proxy;
     To   : Optional_Integer);

   overriding function Get_Upper
    (Self : not null access constant CMOF_Operation_Proxy)
       return Optional_Unlimited_Natural;

   overriding procedure Set_Upper
    (Self : not null access CMOF_Operation_Proxy;
     To   : Optional_Unlimited_Natural);

   overriding function Get_Class
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Classes.CMOF_Class;

   overriding procedure Set_Class
    (Self : not null access CMOF_Operation_Proxy;
     To   : AMF.CMOF.Classes.CMOF_Class);

   overriding function Get_Datatype
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Data_Types.CMOF_Data_Type;

   overriding procedure Set_Datatype
    (Self : not null access CMOF_Operation_Proxy;
     To   : AMF.CMOF.Data_Types.CMOF_Data_Type);

   overriding function Get_Raised_Exception
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Types.Collections.Set_Of_CMOF_Type;

   overriding function Get_Redefined_Operation
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Operations.Collections.Set_Of_CMOF_Operation;

   overriding function Get_Type
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Types.CMOF_Type;

   overriding procedure Set_Type
    (Self : not null access CMOF_Operation_Proxy;
     To   : AMF.CMOF.Types.CMOF_Type);

   overriding function Get_Owned_Parameter
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter;

   overriding function Get_Precondition
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Constraints.Collections.Set_Of_CMOF_Constraint;

   overriding function Get_Postcondition
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Constraints.Collections.Set_Of_CMOF_Constraint;

   overriding function Get_Body_Condition
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Constraints.CMOF_Constraint;

   overriding procedure Set_Body_Condition
    (Self : not null access CMOF_Operation_Proxy;
     To   : AMF.CMOF.Constraints.CMOF_Constraint);

end AMF.Internals.CMOF_Operations;
