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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;

package body AMF.Internals.CMOF_Operations is

   use AMF.Internals.Tables.CMOF_Attributes;

   ------------------------
   -- Enter_CMOF_Element --
   ------------------------

   overriding procedure Enter_CMOF_Element
    (Self    : not null access constant CMOF_Operation_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Operation (Self, Control);
   end Enter_CMOF_Element;

   ------------------------
   -- Get_Body_Condition --
   ------------------------

   overriding function Get_Body_Condition
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Constraints.CMOF_Constraint_Access is
   begin
      return
        AMF.CMOF.Constraints.CMOF_Constraint_Access
         (AMF.Internals.Helpers.To_Element
           (Internal_Get_Body_Condition (Self.Id)));
   end Get_Body_Condition;

   ---------------
   -- Get_Class --
   ---------------

   overriding function Get_Class
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Classes.CMOF_Class_Access is
   begin
      return
        AMF.CMOF.Classes.CMOF_Class_Access
         (AMF.Internals.Helpers.To_Element (Internal_Get_Class (Self.Id)));
   end Get_Class;

   ------------------
   -- Get_Datatype --
   ------------------

   overriding function Get_Datatype
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Data_Types.CMOF_Data_Type_Access is
   begin
      return
        AMF.CMOF.Data_Types.CMOF_Data_Type_Access
         (AMF.Internals.Helpers.To_Element (Internal_Get_Datatype (Self.Id)));
   end Get_Datatype;

   ------------------
   -- Get_Is_Query --
   ------------------

   overriding function Get_Is_Query
    (Self : not null access constant CMOF_Operation_Proxy) return Boolean is
   begin
      return Internal_Get_Is_Query (Self.Id);
   end Get_Is_Query;

   -------------------------
   -- Get_Owned_Parameter --
   -------------------------

   overriding function Get_Owned_Parameter
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter is
   begin
      --  XXX This subprogram overrides Get_Owned_Parameter from
      --  Behavioral_Feature. It ca be reasonable to move it to corresponding
      --  package, but Behavioral_Feat is not used as superclass for other
      --  classes of MOF.

      return
        AMF.CMOF.Parameters.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Owned_Parameter (Self.Id)));
   end Get_Owned_Parameter;

   -----------------------
   -- Get_Postcondition --
   -----------------------

   overriding function Get_Postcondition
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Constraints.Collections.Set_Of_CMOF_Constraint is
   begin
      return
        AMF.CMOF.Constraints.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Postcondition (Self.Id)));
   end Get_Postcondition;

   ----------------------
   -- Get_Precondition --
   ----------------------

   overriding function Get_Precondition
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Constraints.Collections.Set_Of_CMOF_Constraint is
   begin
      return
        AMF.CMOF.Constraints.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Precondition (Self.Id)));
   end Get_Precondition;

   --------------------------
   -- Get_Raised_Exception --
   --------------------------

   overriding function Get_Raised_Exception
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Types.Collections.Set_Of_CMOF_Type is
   begin
      return
        AMF.CMOF.Types.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Raised_Exception (Self.Id)));
   end Get_Raised_Exception;

   -----------------------------
   -- Get_Redefined_Operation --
   -----------------------------

   overriding function Get_Redefined_Operation
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Operations.Collections.Set_Of_CMOF_Operation is
   begin
      return
        AMF.CMOF.Operations.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Redefined_Operation (Self.Id)));
   end Get_Redefined_Operation;

   --------------
   -- Get_Type --
   --------------

   overriding function Get_Type
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Types.CMOF_Type_Access is
   begin
      return
        AMF.CMOF.Types.CMOF_Type_Access
         (AMF.Internals.Helpers.To_Element (Internal_Get_Type (Self.Id)));
   end Get_Type;

   ------------------------
   -- Leave_CMOF_Element --
   ------------------------

   overriding procedure Leave_CMOF_Element
    (Self    : not null access constant CMOF_Operation_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Operation (Self, Control);
   end Leave_CMOF_Element;

   ------------------
   -- Set_Is_Query --
   ------------------

   overriding procedure Set_Is_Query
    (Self : not null access CMOF_Operation_Proxy;
     To   : Boolean) is
   begin
      Internal_Set_Is_Query (Self.Id, To);
   end Set_Is_Query;

   ------------------------
   -- Visit_CMOF_Element --
   ------------------------

   overriding procedure Visit_CMOF_Element
    (Self     : not null access constant CMOF_Operation_Proxy;
     Iterator : not null access AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      Iterator.Visit_Operation (Self, Control);
   end Visit_CMOF_Element;




   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
     (Self : not null access constant CMOF_Operation_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error;
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
     (Self : not null access constant CMOF_Operation_Proxy)
      return Optional_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Qualified_Name unimplemented");
      raise Program_Error;
      return Get_Qualified_Name (Self);
   end Get_Qualified_Name;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
     (Self : not null access constant CMOF_Operation_Proxy)
      return AMF.CMOF.Namespaces.Collections.Ordered_Set_Of_CMOF_Namespace
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error;
      return All_Namespaces (Self);
   end All_Namespaces;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
     (Self : not null access constant CMOF_Operation_Proxy;
      N : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
      Ns : AMF.CMOF.Namespaces.CMOF_Namespace_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error;
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
     (Self : not null access constant CMOF_Operation_Proxy)
      return League.Strings.Universal_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error;
      return Qualified_Name (Self);
   end Qualified_Name;

   ---------------------
   -- Imported_Member --
   ---------------------

   overriding function Imported_Member
     (Self : not null access constant CMOF_Operation_Proxy)
      return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Imported_Member unimplemented");
      raise Program_Error;
      return Imported_Member (Self);
   end Imported_Member;

   -------------------------
   -- Get_Names_Of_Member --
   -------------------------

   overriding function Get_Names_Of_Member
    (Self : not null access constant CMOF_Operation_Proxy;
     Element : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Names_Of_Member unimplemented");
      raise Program_Error;
      return Get_Names_Of_Member (Self, Element);
   end Get_Names_Of_Member;

   --------------------
   -- Import_Members --
   --------------------

   overriding function Import_Members
     (Self : not null access constant CMOF_Operation_Proxy;
      Imps : AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element)
      return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Import_Members unimplemented");
      raise Program_Error;
      return Import_Members (Self, Imps);
   end Import_Members;

   ------------------------
   -- Exclude_Collisions --
   ------------------------

   overriding function Exclude_Collisions
     (Self : not null access constant CMOF_Operation_Proxy;
      Imps : AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element)
      return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Exclude_Collisions unimplemented");
      raise Program_Error;
      return Exclude_Collisions (Self, Imps);
   end Exclude_Collisions;

   ---------------------------------
   -- Members_Are_Distinguishable --
   ---------------------------------

   overriding function Members_Are_Distinguishable
     (Self : not null access constant CMOF_Operation_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Members_Are_Distinguishable unimplemented");
      raise Program_Error;
      return Members_Are_Distinguishable (Self);
   end Members_Are_Distinguishable;

   -----------------
   -- Set_Is_Leaf --
   -----------------

   overriding procedure Set_Is_Leaf
     (Self : not null access CMOF_Operation_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Leaf unimplemented");
      raise Program_Error;
   end Set_Is_Leaf;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
     (Self : not null access constant CMOF_Operation_Proxy;
      Redefined : AMF.CMOF.Redefinable_Elements.CMOF_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error;
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

   --------------------
   -- Get_Is_Ordered --
   --------------------

   overriding function Get_Is_Ordered
     (Self : not null access constant CMOF_Operation_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Ordered unimplemented");
      raise Program_Error;
      return Get_Is_Ordered (Self);
   end Get_Is_Ordered;

   --------------------
   -- Set_Is_Ordered --
   --------------------

   overriding procedure Set_Is_Ordered
     (Self : not null access CMOF_Operation_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Ordered unimplemented");
      raise Program_Error;
   end Set_Is_Ordered;

   -------------------
   -- Get_Is_Unique --
   -------------------

   overriding function Get_Is_Unique
     (Self : not null access constant CMOF_Operation_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Unique unimplemented");
      raise Program_Error;
      return Get_Is_Unique (Self);
   end Get_Is_Unique;

   -------------------
   -- Set_Is_Unique --
   -------------------

   overriding procedure Set_Is_Unique
     (Self : not null access CMOF_Operation_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Unique unimplemented");
      raise Program_Error;
   end Set_Is_Unique;

   ---------------
   -- Get_Lower --
   ---------------

   overriding function Get_Lower
     (Self : not null access constant CMOF_Operation_Proxy)
      return Optional_Integer
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Lower unimplemented");
      raise Program_Error;
      return Get_Lower (Self);
   end Get_Lower;

   ---------------
   -- Set_Lower --
   ---------------

   overriding procedure Set_Lower
     (Self : not null access CMOF_Operation_Proxy;
      To   : Optional_Integer)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Lower unimplemented");
      raise Program_Error;
   end Set_Lower;

   ---------------
   -- Get_Upper --
   ---------------

   overriding function Get_Upper
     (Self : not null access constant CMOF_Operation_Proxy)
      return Optional_Unlimited_Natural
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Upper unimplemented");
      raise Program_Error;
      return Get_Upper (Self);
   end Get_Upper;

   ---------------
   -- Set_Upper --
   ---------------

   overriding procedure Set_Upper
     (Self : not null access CMOF_Operation_Proxy;
      To   : Optional_Unlimited_Natural)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Upper unimplemented");
      raise Program_Error;
   end Set_Upper;

   ---------------
   -- Set_Class --
   ---------------

   overriding procedure Set_Class
     (Self : not null access CMOF_Operation_Proxy;
      To   : AMF.CMOF.Classes.CMOF_Class_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Class unimplemented");
      raise Program_Error;
   end Set_Class;

   ------------------
   -- Set_Datatype --
   ------------------

   overriding procedure Set_Datatype
     (Self : not null access CMOF_Operation_Proxy;
      To   : AMF.CMOF.Data_Types.CMOF_Data_Type_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Datatype unimplemented");
      raise Program_Error;
   end Set_Datatype;

   --------------
   -- Set_Type --
   --------------

   overriding procedure Set_Type
     (Self : not null access CMOF_Operation_Proxy;
      To   : AMF.CMOF.Types.CMOF_Type_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Type unimplemented");
      raise Program_Error;
   end Set_Type;

   ------------------------
   -- Set_Body_Condition --
   ------------------------

   overriding procedure Set_Body_Condition
     (Self : not null access CMOF_Operation_Proxy;
      To   : AMF.CMOF.Constraints.CMOF_Constraint_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Body_Condition unimplemented");
      raise Program_Error;
   end Set_Body_Condition;

   ----------------
   -- Is_Ordered --
   ----------------

   overriding function Is_Ordered
     (Self : not null access constant CMOF_Operation_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Ordered unimplemented");
      raise Program_Error;
      return Is_Ordered (Self);
   end Is_Ordered;

   ---------------
   -- Is_Unique --
   ---------------

   overriding function Is_Unique
     (Self : not null access constant CMOF_Operation_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Unique unimplemented");
      raise Program_Error;
      return Is_Unique (Self);
   end Is_Unique;

   -----------
   -- Lower --
   -----------

   overriding function Lower
     (Self : not null access constant CMOF_Operation_Proxy)
      return Integer
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Lower unimplemented");
      raise Program_Error;
      return Lower (Self);
   end Lower;

   -----------
   -- Upper --
   -----------

   overriding function Upper
     (Self : not null access constant CMOF_Operation_Proxy)
      return Unlimited_Natural
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Upper unimplemented");
      raise Program_Error;
      return Upper (Self);
   end Upper;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
     (Self : not null access constant CMOF_Operation_Proxy;
      Redefinee : AMF.CMOF.Redefinable_Elements.CMOF_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Consistent_With unimplemented");
      raise Program_Error;
      return Is_Consistent_With (Self, Redefinee);
   end Is_Consistent_With;

   -------------------
   -- Return_Result --
   -------------------

   overriding function Return_Result
     (Self : not null access constant CMOF_Operation_Proxy)
      return AMF.CMOF.Parameters.Collections.Set_Of_CMOF_Parameter
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Return_Result unimplemented");
      raise Program_Error;
      return Return_Result (Self);
   end Return_Result;

   -----------
   -- Types --
   -----------

   overriding function Types
    (Self : not null access constant CMOF_Operation_Proxy)
       return AMF.CMOF.Types.CMOF_Type_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Types unimplemented");
      raise Program_Error;
      return Types (Self);
   end Types;

end AMF.Internals.CMOF_Operations;
