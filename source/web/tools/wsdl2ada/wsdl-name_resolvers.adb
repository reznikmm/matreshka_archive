------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Strings;

with WSDL.AST.Bindings;
pragma Unreferenced (WSDL.AST.Bindings);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Descriptions;
pragma Unreferenced (WSDL.AST.Descriptions);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Faults;
pragma Unreferenced (WSDL.AST.Faults);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Interfaces;
pragma Unreferenced (WSDL.AST.Interfaces);
--  XXX GNAT 20130108 reports that unit is not referenced.
with WSDL.AST.Operations;
pragma Unreferenced (WSDL.AST.Operations);
--  XXX GNAT 20130108 reports that unit is not referenced.

package body WSDL.Name_Resolvers is

   use type League.Strings.Universal_String;
   use type WSDL.AST.Interface_Operation_Access;

   function Resolve_Binding
    (Root          : not null WSDL.AST.Description_Access;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return WSDL.AST.Binding_Access;
   --  Resolves binding component by qualified name.

   function Resolve_Interface
    (Root          : not null WSDL.AST.Description_Access;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return WSDL.AST.Interface_Access;
   --  Resolves name of interface component.

   function Resolve_Interface_Fault
    (Node : not null WSDL.AST.Interface_Access;
     Name : WSDL.AST.Qualified_Name)
       return WSDL.AST.Interface_Fault_Access;
   --  Resolves name of interface operation component.

   function Resolve_Interface_Operation
    (Node       : not null WSDL.AST.Interface_Access;
     Local_Name : League.Strings.Universal_String)
       return WSDL.AST.Interface_Operation_Access;
   --  Resolves name of interface operation component.

   procedure Resolve_Interface_Operation
    (Node       : not null WSDL.AST.Interface_Access;
     Local_Name : League.Strings.Universal_String;
     Result     : out WSDL.AST.Interface_Operation_Access);

   -------------------
   -- Enter_Binding --
   -------------------

   overriding procedure Enter_Binding
    (Self    : in out Name_Resolver;
     Node    : not null WSDL.AST.Binding_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      pragma Unreferenced (Control);

   begin
      --  Resolve interface component when necessary.

      if not Node.Interface_Name.Local_Name.Is_Empty then
         Node.Interface_Node :=
           Resolve_Interface
            (Self.Root,
             Node.Interface_Name.Namespace_URI,
             Node.Interface_Name.Local_Name);
      end if;
   end Enter_Binding;

   -------------------------
   -- Enter_Binding_Fault --
   -------------------------

   overriding procedure Enter_Binding_Fault
    (Self    : in out Name_Resolver;
     Node    : not null WSDL.AST.Binding_Fault_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      --  Resolve interface fault component.

      Node.Interface_Fault :=
        Resolve_Interface_Fault (Node.Parent.Interface_Node, Node.Ref);
   end Enter_Binding_Fault;

   -----------------------------
   -- Enter_Binding_Operation --
   -----------------------------

   overriding procedure Enter_Binding_Operation
    (Self    : in out Name_Resolver;
     Node    : not null WSDL.AST.Binding_Operation_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Control);

   begin
      --  It is unclear from the specification how namespace URI should be
      --  used. From the other side, operations are identified uniquely in the
      --  interface.

      Node.Interface_Operation :=
        Resolve_Interface_Operation
         (Node.Parent.Interface_Node, Node.Ref.Local_Name);
   end Enter_Binding_Operation;

   --------------------
   -- Enter_Endpoint --
   --------------------

   overriding procedure Enter_Endpoint
    (Self    : in out Name_Resolver;
     Node    : not null WSDL.AST.Endpoints.Endpoint_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      pragma Unreferenced (Control);

   begin
      Node.Binding :=
        Resolve_Binding
         (Self.Root,
          Node.Binding_Name.Namespace_URI,
          Node.Binding_Name.Local_Name);
   end Enter_Endpoint;

   ---------------------
   -- Enter_Interface --
   ---------------------

   overriding procedure Enter_Interface
    (Self    : in out Name_Resolver;
     Node    : not null WSDL.AST.Interface_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      pragma Unreferenced (Control);

   begin
      for J of Node.Extends loop
         Node.Extended_Interfaces.Append
          (Resolve_Interface (Self.Root, J.Namespace_URI, J.Local_Name));
      end loop;
   end Enter_Interface;

   -------------------
   -- Enter_Service --
   -------------------

   overriding procedure Enter_Service
    (Self    : in out Name_Resolver;
     Node    : not null WSDL.AST.Services.Service_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      pragma Unreferenced (Control);

   begin
      --  Resolve interface by qualified name.

      Node.Interface_Node :=
        Resolve_Interface
         (Self.Root,
          Node.Interface_Name.Namespace_URI,
          Node.Interface_Name.Local_Name);
   end Enter_Service;

   ---------------------
   -- Resolve_Binding --
   ---------------------

   function Resolve_Binding
    (Root          : not null WSDL.AST.Description_Access;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return WSDL.AST.Binding_Access is
   begin
      --  QName-resolution-1064: "A Description component MUST NOT have such
      --  broken references."

      if Root.Target_Namespace /= Namespace_URI then
         raise Program_Error;
      end if;

      if not Root.Bindings.Contains (Local_Name) then
         raise Program_Error;
      end if;

      return Root.Bindings.Element (Local_Name);
   end Resolve_Binding;

   -----------------------
   -- Resolve_Interface --
   -----------------------

   function Resolve_Interface
    (Root          : not null WSDL.AST.Description_Access;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return WSDL.AST.Interface_Access is
   begin
      --  QName-resolution-1064: "A Description component MUST NOT have such
      --  broken references."

      if Root.Target_Namespace /= Namespace_URI then
         raise Program_Error;
      end if;

      if not Root.Interfaces.Contains (Local_Name) then
         raise Program_Error;
      end if;

      return Root.Interfaces.Element (Local_Name);
   end Resolve_Interface;

   -----------------------------
   -- Resolve_Interface_Fault --
   -----------------------------

   function Resolve_Interface_Fault
    (Node : not null WSDL.AST.Interface_Access;
     Name : WSDL.AST.Qualified_Name)
       return WSDL.AST.Interface_Fault_Access
   is
      use type WSDL.AST.Interface_Fault_Access;

      Result : WSDL.AST.Interface_Fault_Access;

   begin
      if Node.Parent.Target_Namespace = Name.Namespace_URI
        and then Node.Interface_Faults.Contains (Name.Local_Name)
      then
         return Node.Interface_Faults.Element (Name.Local_Name);
      end if;

      for J of Node.Extended_Interfaces loop
         Result := Resolve_Interface_Fault (J, Name);

         if Result /= null then
            return Result;
         end if;
      end loop;

      raise Program_Error;
   end Resolve_Interface_Fault;

   ---------------------------------
   -- Resolve_Interface_Operation --
   ---------------------------------

   procedure Resolve_Interface_Operation
    (Node       : not null WSDL.AST.Interface_Access;
     Local_Name : League.Strings.Universal_String;
     Result     : out WSDL.AST.Interface_Operation_Access) is
   begin
      Result := null;

      if Node.Interface_Operations.Contains (Local_Name) then
         Result := Node.Interface_Operations.Element (Local_Name);

         return;
      end if;

      for J of Node.Extended_Interfaces loop
         Resolve_Interface_Operation (J, Local_Name, Result);

         if Result /= null then
            return;
         end if;
      end loop;
   end Resolve_Interface_Operation;

   ---------------------------------
   -- Resolve_Interface_Operation --
   ---------------------------------

   function Resolve_Interface_Operation
    (Node       : not null WSDL.AST.Interface_Access;
     Local_Name : League.Strings.Universal_String)
       return WSDL.AST.Interface_Operation_Access
   is
      Aux : WSDL.AST.Interface_Operation_Access;

   begin
      Resolve_Interface_Operation (Node, Local_Name, Aux);

      if Aux /= null then
         return Aux;

      else
         raise Program_Error;
      end if;
   end Resolve_Interface_Operation;

   --------------
   -- Set_Root --
   --------------

   procedure Set_Root
    (Self : in out Name_Resolver'Class;
     Root : WSDL.AST.Description_Access) is
   begin
      Self.Root := Root;
   end Set_Root;

end WSDL.Name_Resolvers;
