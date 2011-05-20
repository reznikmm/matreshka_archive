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
with AMF.CMOF.Associations;
with AMF.CMOF.Classes;
with AMF.CMOF.Classifiers.Collections;
with AMF.CMOF.Comments.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Elements.Collections;
with AMF.CMOF.Namespaces;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Redefinable_Elements.Collections;
with AMF.CMOF.Types;
with AMF.Internals.CMOF_Elements;

package AMF.Internals.CMOF_Properties is

   pragma Preelaborate;

   type CMOF_Property_Proxy is
     limited new AMF.Internals.CMOF_Elements.CMOF_Element_Proxy
       and AMF.CMOF.Properties.CMOF_Property_Interface
         with null record;

   --  XXX These subprograms are stubs

   overriding function Get_Owned_Element
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Get_Owner
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Elements.CMOF_Element;

   overriding function Get_Owned_Comment
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment;

   overriding function Get_Is_Ordered
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Is_Ordered
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Get_Is_Unique
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Is_Unique
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Get_Lower
    (Self : not null access constant CMOF_Property_Proxy)
       return Optional_Integer;

   overriding procedure Set_Lower
    (Self : not null access CMOF_Property_Proxy;
     To   : Optional_Integer);

   overriding function Get_Upper
    (Self : not null access constant CMOF_Property_Proxy)
       return Optional_Unlimited_Natural;

   overriding procedure Set_Upper
    (Self : not null access CMOF_Property_Proxy;
     To   : Optional_Unlimited_Natural);

   overriding function Get_Name
    (Self : not null access constant CMOF_Property_Proxy)
       return Optional_String;

   overriding procedure Set_Name
    (Self : not null access CMOF_Property_Proxy;
     To   : Optional_String);

   overriding function Get_Visibility
    (Self : not null access constant CMOF_Property_Proxy)
       return CMOF.Optional_CMOF_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access CMOF_Property_Proxy;
     To   : CMOF.Optional_CMOF_Visibility_Kind);

   overriding function Get_Namespace
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Namespaces.CMOF_Namespace;

   overriding function Get_Qualified_Name
    (Self : not null access constant CMOF_Property_Proxy)
       return Optional_String;

   overriding function Get_Type
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Types.CMOF_Type;

   overriding procedure Set_Type
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Types.CMOF_Type);

   overriding function Get_Redefinition_Context
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier;

   overriding function Get_Redefined_Element
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Redefinable_Elements.Collections.Set_Of_CMOF_Redefinable_Element;

   overriding function Get_Is_Leaf
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Is_Leaf
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Get_Featuring_Classifier
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier;

   overriding function Get_Is_Read_Only
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Is_Read_Only
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Get_Default
    (Self : not null access constant CMOF_Property_Proxy)
       return Optional_String;

   overriding procedure Set_Default
    (Self : not null access CMOF_Property_Proxy;
     To   : Optional_String);

   overriding function Get_Is_Composite
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Is_Composite
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Get_Is_Derived
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Is_Derived
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Get_Is_Derived_Union
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Is_Derived_Union
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Get_Class
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Classes.CMOF_Class;

   overriding procedure Set_Class
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Classes.CMOF_Class);

   overriding function Get_Owning_Association
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Associations.CMOF_Association;

   overriding procedure Set_Owning_Association
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Associations.CMOF_Association);

   overriding function Get_Redefined_Property
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;

   overriding function Get_Subsetted_Property
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;

   overriding function Get_Opposite
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Properties.CMOF_Property;

   overriding procedure Set_Opposite
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Properties.CMOF_Property);

   overriding function Get_Datatype
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Data_Types.CMOF_Data_Type;

   overriding procedure Set_Datatype
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Data_Types.CMOF_Data_Type);

   overriding function Get_Association
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Associations.CMOF_Association;

   overriding procedure Set_Association
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Associations.CMOF_Association);

end AMF.Internals.CMOF_Properties;
