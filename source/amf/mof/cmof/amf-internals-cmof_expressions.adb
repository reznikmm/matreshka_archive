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

package body AMF.Internals.CMOF_Expressions is

   ------------------------
   -- Enter_CMOF_Element --
   ------------------------

   overriding procedure Enter_CMOF_Element
    (Self    : not null access constant CMOF_Expression_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Expression
       (AMF.CMOF.Expressions.CMOF_Expression_Access (Self), Control);
   end Enter_CMOF_Element;

   ------------------------
   -- Leave_CNOF_Element --
   ------------------------

   overriding procedure Leave_CMOF_Element
    (Self    : not null access constant CMOF_Expression_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Expression
       (AMF.CMOF.Expressions.CMOF_Expression_Access (Self), Control);
   end Leave_CMOF_Element;

   ------------------------
   -- Visit_CMOF_Element --
   ------------------------

   overriding procedure Visit_CMOF_Element
    (Self     : not null access constant CMOF_Expression_Proxy;
     Iterator : not null access AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      Iterator.Visit_Expression
       (AMF.CMOF.Expressions.CMOF_Expression_Access (Self), Control);
   end Visit_CMOF_Element;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
     (Self : not null access constant CMOF_Expression_Proxy)
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
     (Self : not null access constant CMOF_Expression_Proxy)
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
     (Self : not null access constant CMOF_Expression_Proxy)
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
     (Self : not null access constant CMOF_Expression_Proxy;
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
     (Self : not null access constant CMOF_Expression_Proxy)
      return League.Strings.Universal_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error;
      return Qualified_Name (Self);
   end Qualified_Name;

   -------------------
   -- Is_Computable --
   -------------------

   overriding function Is_Computable
     (Self : not null access constant CMOF_Expression_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Computable unimplemented");
      raise Program_Error;
      return Is_Computable (Self);
   end Is_Computable;

   -------------------
   -- Integer_Value --
   -------------------

   overriding function Integer_Value
     (Self : not null access constant CMOF_Expression_Proxy)
      return Integer
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Integer_Value unimplemented");
      raise Program_Error;
      return Integer_Value (Self);
   end Integer_Value;

   -------------------
   -- Boolean_Value --
   -------------------

   overriding function Boolean_Value
     (Self : not null access constant CMOF_Expression_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Boolean_Value unimplemented");
      raise Program_Error;
      return Boolean_Value (Self);
   end Boolean_Value;

   ------------------
   -- String_Value --
   ------------------

   overriding function String_Value
     (Self : not null access constant CMOF_Expression_Proxy)
      return League.Strings.Universal_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "String_Value unimplemented");
      raise Program_Error;
      return String_Value (Self);
   end String_Value;

   ---------------------
   -- Unlimited_Value --
   ---------------------

   overriding function Unlimited_Value
     (Self : not null access constant CMOF_Expression_Proxy)
      return Unlimited_Natural
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Unlimited_Value unimplemented");
      raise Program_Error;
      return Unlimited_Value (Self);
   end Unlimited_Value;

   -------------
   -- Is_Null --
   -------------

   overriding function Is_Null
     (Self : not null access constant CMOF_Expression_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Null unimplemented");
      raise Program_Error;
      return Is_Null (Self);
   end Is_Null;

   -----------------
   -- Get_Operand --
   -----------------

   overriding function Get_Operand
     (Self : not null access constant CMOF_Expression_Proxy)
      return AMF.CMOF.Value_Specifications.Collections.Ordered_Set_Of_CMOF_Value_Specification
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Operand unimplemented");
      raise Program_Error;
      return Get_Operand (Self);
   end Get_Operand;

end AMF.Internals.CMOF_Expressions;
