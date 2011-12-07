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
with AMF.CMOF.Constraints.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Elements.Collections;
with AMF.CMOF.Named_Elements;
with AMF.CMOF.Namespaces.Collections;
with AMF.CMOF.Operations.Collections;
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Parameters.Collections;
with AMF.CMOF.Redefinable_Elements;
with AMF.CMOF.Types.Collections;
with AMF.Internals.CMOF_Namespaces;
pragma Elaborate (AMF.Internals.CMOF_Namespaces);
with AMF.Internals.CMOF_Features;
with AMF.String_Collections;
with AMF.Visitors.CMOF_Visitors;

package AMF.Internals.CMOF_Operations is

   package Namespaces is
     new AMF.Internals.CMOF_Namespaces
          (AMF.Internals.CMOF_Features.CMOF_Feature_Proxy);

   type CMOF_Operation_Proxy is limited
     new Namespaces.CMOF_Namespace_Proxy
       and AMF.CMOF.Operations.CMOF_Operation
         with null record;

   --  XXX These subprograms are stubs

   overriding function All_Owned_Elements
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant CMOF_Operation_Proxy)
       return Boolean;

   overriding function Get_Qualified_Name
    (Self : not null access constant CMOF_Operation_Proxy)
       return Optional_String;

   overriding function All_Namespaces
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Namespaces.Collections.Ordered_Set_Of_CMOF_Namespace;

   overriding function Is_Distinguishable_From
    (Self : not null access constant CMOF_Operation_Proxy;
     N : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
     Ns : AMF.CMOF.Namespaces.CMOF_Namespace_Access)
       return Boolean;

   overriding function Qualified_Name
    (Self : not null access constant CMOF_Operation_Proxy)
       return League.Strings.Universal_String;

   overriding function Imported_Member
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Get_Names_Of_Member
    (Self : not null access constant CMOF_Operation_Proxy;
     Element : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String;

   overriding function Import_Members
    (Self : not null access constant CMOF_Operation_Proxy;
     Imps : AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Exclude_Collisions
    (Self : not null access constant CMOF_Operation_Proxy;
     Imps : AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Members_Are_Distinguishable
    (Self : not null access constant CMOF_Operation_Proxy)
       return Boolean;

   overriding procedure Set_Is_Leaf
    (Self : not null access CMOF_Operation_Proxy;
     To   : Boolean);

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant CMOF_Operation_Proxy;
     Redefined : AMF.CMOF.Redefinable_Elements.CMOF_Redefinable_Element_Access)
       return Boolean;

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
       return AMF.CMOF.Classes.CMOF_Class_Access;

   overriding procedure Set_Class
    (Self : not null access CMOF_Operation_Proxy;
     To   : AMF.CMOF.Classes.CMOF_Class_Access);

   overriding function Get_Datatype
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
   --  Getter of Operation::datatype.
   --
   --  The DataType that owns this Operation.

   overriding procedure Set_Datatype
    (Self : not null access CMOF_Operation_Proxy;
     To   : AMF.CMOF.Data_Types.CMOF_Data_Type_Access);

   overriding function Get_Raised_Exception
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Types.Collections.Set_Of_CMOF_Type;
   --  Getter of Operation::raisedException.
   --
   --  References the Types representing exceptions that may be raised during 
   --  an invocation of this operation.

   overriding function Get_Redefined_Operation
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Operations.Collections.Set_Of_CMOF_Operation;

   overriding function Get_Type
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Types.CMOF_Type_Access;
   --  Getter of Operation::type.
   --
   --  This information is derived from the return result for this Operation.

   overriding procedure Set_Type
    (Self : not null access CMOF_Operation_Proxy;
     To   : AMF.CMOF.Types.CMOF_Type_Access);

   overriding function Get_Owned_Parameter
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter;

   overriding function Get_Precondition
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Constraints.Collections.Set_Of_CMOF_Constraint;
   --  Getter of Operation::precondition.

   overriding function Get_Postcondition
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Constraints.Collections.Set_Of_CMOF_Constraint;
   --  Getter of Operation::postcondition.

   overriding function Get_Body_Condition
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Constraints.CMOF_Constraint_Access;
   --  Getter of Operation::bodyCondition.

   overriding procedure Set_Body_Condition
    (Self : not null access CMOF_Operation_Proxy;
     To   : AMF.CMOF.Constraints.CMOF_Constraint_Access);

   overriding function Is_Ordered
    (Self : not null access constant CMOF_Operation_Proxy)
       return Boolean;

   overriding function Is_Unique
    (Self : not null access constant CMOF_Operation_Proxy)
       return Boolean;

   overriding function Lower
    (Self : not null access constant CMOF_Operation_Proxy)
       return Integer;

   overriding function Upper
    (Self : not null access constant CMOF_Operation_Proxy)
       return Unlimited_Natural;

   overriding function Is_Consistent_With
    (Self : not null access constant CMOF_Operation_Proxy;
     Redefinee : AMF.CMOF.Redefinable_Elements.CMOF_Redefinable_Element_Access)
       return Boolean;

   overriding function Return_Result
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Parameters.Collections.Set_Of_CMOF_Parameter;

   overriding function Types
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Types.CMOF_Type_Access;

   overriding procedure Enter_CMOF_Element
    (Self    : not null access constant CMOF_Operation_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_CMOF_Element
    (Self    : not null access constant CMOF_Operation_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

end AMF.Internals.CMOF_Operations;
