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
with League.Strings.Internals;
with Matreshka.Internals.Strings;

with AMF.Internals.Helpers;
with AMF.Internals.Tables.CMOF_Attributes;

package body AMF.Internals.CMOF_Parameters is

   use AMF.Internals.Tables.CMOF_Attributes;
   use type Matreshka.Internals.Strings.Shared_String_Access;

   ------------------------
   -- Enter_CMOF_Element --
   ------------------------

   overriding procedure Enter_CMOF_Element
    (Self    : not null access constant CMOF_Parameter_Proxy;
     Visitor : in out AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Parameter
        (AMF.CMOF.Parameters.CMOF_Parameter_Access (Self), Control);
   end Enter_CMOF_Element;

   -----------------
   -- Get_Default --
   -----------------

   overriding function Get_Default
    (Self : not null access constant CMOF_Parameter_Proxy)
       return Optional_String
   is
      Aux : constant Matreshka.Internals.Strings.Shared_String_Access
        := Internal_Get_Default (Self.Id);

   begin
      if Aux = null then
         return (Is_Empty => True);

      else
         return (False, League.Strings.Internals.Create (Aux));
      end if;
   end Get_Default;

   -------------------
   -- Get_Direction --
   -------------------

   overriding function Get_Direction
    (Self : not null access constant CMOF_Parameter_Proxy)
       return CMOF.CMOF_Parameter_Direction_Kind is
   begin
      return Internal_Get_Direction (Self.Id);
   end Get_Direction;

   -------------------
   -- Get_Operation --
   -------------------

   overriding function Get_Operation
    (Self : not null access constant CMOF_Parameter_Proxy)
       return AMF.CMOF.Operations.CMOF_Operation_Access is
   begin
      return
        AMF.CMOF.Operations.CMOF_Operation_Access
         (AMF.Internals.Helpers.To_Element (Internal_Get_Operation (Self.Id)));
   end Get_Operation;

   ------------------------
   -- Leave_CMOF_Element --
   ------------------------

   overriding procedure Leave_CMOF_Element
    (Self    : not null access constant CMOF_Parameter_Proxy;
     Visitor : in out AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Parameter
        (AMF.CMOF.Parameters.CMOF_Parameter_Access (Self), Control);
   end Leave_CMOF_Element;

   -------------------
   -- Set_Direction --
   -------------------

   overriding procedure Set_Direction
    (Self : not null access CMOF_Parameter_Proxy;
     To   : CMOF.CMOF_Parameter_Direction_Kind) is
   begin
      Internal_Set_Direction (Self.Id, To);
   end Set_Direction;

   ------------------------
   -- Visit_CMOF_Element --
   ------------------------

   overriding procedure Visit_CMOF_Element
    (Self     : not null access constant CMOF_Parameter_Proxy;
     Iterator : in out AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      Iterator.Visit_Parameter
       (Visitor, AMF.CMOF.Parameters.CMOF_Parameter_Access (Self), Control);
   end Visit_CMOF_Element;




   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
     (Self : not null access constant CMOF_Parameter_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error;
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Set_Is_Unique --
   -------------------

   overriding procedure Set_Is_Unique
     (Self : not null access CMOF_Parameter_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Unique unimplemented");
      raise Program_Error;
   end Set_Is_Unique;

   ---------------------------
   -- Includes_Multiplicity --
   ---------------------------

   overriding function Includes_Multiplicity
     (Self : not null access constant CMOF_Parameter_Proxy;
      M : AMF.CMOF.Multiplicity_Elements.CMOF_Multiplicity_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Multiplicity unimplemented");
      raise Program_Error;
      return Includes_Multiplicity (Self, M);
   end Includes_Multiplicity;

   --------------------------
   -- Includes_Cardinality --
   --------------------------

   overriding function Includes_Cardinality
     (Self : not null access constant CMOF_Parameter_Proxy;
      C : Integer)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Cardinality unimplemented");
      raise Program_Error;
      return Includes_Cardinality (Self, C);
   end Includes_Cardinality;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
     (Self : not null access constant CMOF_Parameter_Proxy)
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
     (Self : not null access constant CMOF_Parameter_Proxy)
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
     (Self : not null access constant CMOF_Parameter_Proxy;
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
     (Self : not null access constant CMOF_Parameter_Proxy)
      return League.Strings.Universal_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error;
      return Qualified_Name (Self);
   end Qualified_Name;

   -----------------
   -- Set_Default --
   -----------------

   overriding procedure Set_Default
     (Self : not null access CMOF_Parameter_Proxy;
      To   : Optional_String)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Default unimplemented");
      raise Program_Error;
   end Set_Default;

   -------------------
   -- Set_Operation --
   -------------------

   overriding procedure Set_Operation
     (Self : not null access CMOF_Parameter_Proxy;
      To   : AMF.CMOF.Operations.CMOF_Operation_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Operation unimplemented");
      raise Program_Error;
   end Set_Operation;

end AMF.Internals.CMOF_Parameters;
