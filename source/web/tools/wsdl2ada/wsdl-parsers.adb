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
with League.String_Vectors;

with WSDL.AST.Components;
with WSDL.AST.Endpoints;
with WSDL.AST.Faults;
with WSDL.AST.Interfaces;
with WSDL.AST.Messages;
with WSDL.AST.Operations;
with WSDL.AST.Types;
with WSDL.Constants;
with WSDL.Diagnoses;
with WSDL.Parsers.MEP;
with WSDL.Parsers.SOAP;

package body WSDL.Parsers is

   use WSDL.Constants;
   use type League.Strings.Universal_String;

   procedure Push
    (Self : in out WSDL_Parser'Class; State : Parser_State_Kind);

   procedure Pop (Self : in out WSDL_Parser'Class);

   function To_Qualified_Name
    (Namespaces : Namespace_Maps.Map;
     Name       : League.Strings.Universal_String)
       return WSDL.AST.Qualified_Name;
   --  Construct qualified name from the given prefix:localName string.

   procedure Start_Description_Element
    (Self       : in out WSDL_Parser'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Handles start of 'description' element.

   procedure Start_Types_Element
    (Description : WSDL.AST.Descriptions.Description_Access;
     Success     : in out Boolean);
   --  Handles start of 'types' element.

   procedure Start_Interface_Element
    (Parser      : in out WSDL_Parser;
     Attributes  : XML.SAX.Attributes.SAX_Attributes;
     Namespaces  : Namespace_Maps.Map;
     Description : WSDL.AST.Descriptions.Description_Access;
     Node        : out WSDL.AST.Interface_Access;
     Success     : in out Boolean);
   --  Handles start of 'interface' element.

   procedure Start_Interface_Fault_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Interface_Access;
--     Node       : out WSDL.AST.Faults.Interface_Fault_Access;
     Success    : in out Boolean);
   --  Handles start of 'fault' element as child of 'interface' element.

   procedure Start_Interface_Operation_Element
    (Parser     : WSDL_Parser;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Parent     : not null WSDL.AST.Interface_Access;
     Node       : out WSDL.AST.Interface_Operation_Access;
     Success    : in out Boolean);
   --  Handles start of 'operation' element as child of 'interface' element.

   procedure Start_Input_Output_Element
    (Parser     : WSDL_Parser;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Interface_Operation_Access;
     Direction  : WSDL.AST.Message_Directions;
     Success    : in out Boolean);
   --  Handles start of 'input' and 'output' element as child of 'operation'
   --  element as child of 'interface' element.

   procedure Start_Input_Output_Fault_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Interface_Operation_Access;
     Direction  : WSDL.AST.Message_Directions;
     Success    : in out Boolean);
   --  Handles start of 'infault' and 'outfault' element as child of
   --  'operation' element as child of 'interface' element.

   procedure Start_Binding_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Descriptions.Description_Access;
     Node       : out WSDL.AST.Bindings.Binding_Access;
     Success    : in out Boolean);
   --  Handles start of 'interface' element.

   procedure End_Binding_Element
    (Node    : WSDL.AST.Bindings.Binding_Access;
     Success : in out Boolean);
   --  Handles start of 'interface' element.

   procedure Start_Binding_Operation_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Bindings.Binding_Access;
--     Node       : out WSDL.AST.Operations.Interface_Operation_Access;
     Success    : in out Boolean);
   --  Handles start of 'operation' element as child of 'binding' element.

   procedure Start_Service_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Descriptions.Description_Access;
     Node       : out WSDL.AST.Services.Service_Access;
     Success    : in out Boolean);
   --  Handles start of 'service' element.

   procedure Start_Endpoint_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Services.Service_Access;
     Success    : in out Boolean);
   --  Handles start of 'service' element.

   -------------------------
   -- End_Binding_Element --
   -------------------------

   procedure End_Binding_Element
    (Node    : WSDL.AST.Bindings.Binding_Access;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      if not Node.Binding_Operations.Is_Empty
        and Node.Interface_Name.Local_Name.Is_Empty
      then
         --  Binding-1044: "If a Binding component specifies any
         --  operation-specific binding details (by including Binding Operation
         --  components) or any fault binding details (by including Binding
         --  Fault components), then it MUST specify an interface the Binding
         --  component applies to, so as to indicate which interface the
         --  operations come from."

         raise Program_Error;
      end if;
   end End_Binding_Element;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out WSDL_Parser;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean)
   is
      pragma Unreferenced (Qualified_Name);

   begin
      if Self.Ignore_Depth /= 0 then
         Self.Ignore_Depth := Self.Ignore_Depth - 1;

      elsif Namespace_URI = WSDL_Namespace_URI then
         if Local_Name = Binding_Element then
            End_Binding_Element (Self.Current_Binding, Success);
            Self.Pop;

         elsif Local_Name = Description_Element then
            Self.Pop;

         elsif Local_Name = Endpoint_Element then
            Self.Pop;

         elsif Local_Name = Fault_Element then
            Self.Pop;

         elsif Local_Name = Infault_Element then
            Self.Pop;

         elsif Local_Name = Input_Element then
            Self.Pop;

         elsif Local_Name = Interface_Element then
            Self.Pop;

         elsif Local_Name = Operation_Element then
            Self.Pop;

         elsif Local_Name = Outfault_Element then
            Self.Pop;

         elsif Local_Name = Output_Element then
            Self.Pop;

         elsif Local_Name = Service_Element then
            Self.Pop;

         elsif Local_Name = Types_Element then
            Self.Pop;
         end if;
      end if;
   end End_Element;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : WSDL_Parser) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

   ---------------------
   -- Get_Description --
   ---------------------

   function Get_Description
    (Self : WSDL_Parser'Class)
       return WSDL.AST.Descriptions.Description_Access is
   begin
      return Self.Description;
   end Get_Description;

   ---------
   -- Pop --
   ---------

   procedure Pop (Self : in out WSDL_Parser'Class) is
   begin
      Self.Current_State := Self.Previous_State;

      if Self.State_Stack.Is_Empty then
         Self.Previous_State := (None, others => <>);

      else
         Self.Previous_State := Self.State_Stack.Last_Element;
         Self.State_Stack.Delete_Last;
      end if;
   end Pop;

   ----------
   -- Push --
   ----------

   procedure Push
    (Self : in out WSDL_Parser'Class; State : Parser_State_Kind)
   is
      Aux : Parser_State (State);

   begin
      Self.State_Stack.Append (Self.Previous_State);
      Self.Previous_State := Self.Current_State;
      Self.Current_State := Aux;
   end Push;

   ------------
   -- Report --
   ------------

   procedure Report
    (Self      : WSDL_Parser;
     Assertion : WSDL.Assertions.WSDL_Assertion) is
   begin
      WSDL.Assertions.Report
       (Self.Locator.System_Id,
        WSDL.Diagnoses.Line_Number (Self.Locator.Line),
        WSDL.Diagnoses.Column_Number (Self.Locator.Column),
        Assertion);
   end Report;

   --------------------------
   -- Set_Document_Locator --
   --------------------------

   overriding procedure Set_Document_Locator
    (Self    : in out WSDL_Parser;
     Locator : XML.SAX.Locators.SAX_Locator) is
   begin
      Self.Locator := Locator;
   end Set_Document_Locator;

   ---------------------------
   -- Start_Binding_Element --
   ---------------------------

   procedure Start_Binding_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Descriptions.Description_Access;
     Node       : out WSDL.AST.Bindings.Binding_Access;
     Success    : in out Boolean)
   is
      Name : constant League.Strings.Universal_String
        := Attributes.Value (Name_Attribute);

   begin
      --  Binding-1049: "For each Binding component in the {bindings} property
      --  of a Description component, the {name} property MUST be unique."

      if Parent.Bindings.Contains (Name) then
         raise Program_Error;
      end if;

      Node := new WSDL.AST.Bindings.Binding_Node;
      Node.Parent := WSDL.AST.Components.Description_Access (Parent);
      Node.Local_Name := Name;
      Parent.Bindings.Insert (Name, Node);

      --  Analyze 'interface' attribute.

      if Attributes.Is_Specified (Interface_Attribute) then
         Node.Interface_Name :=
            To_Qualified_Name
             (Namespaces, Attributes.Value (Interface_Attribute));
      end if;

      --  Analyze 'type' attribute.

      Node.Binding_Type := Attributes.Value (Type_Attribute);

      --  Analyze SOAP Binding extension's attributes.

      if Node.Binding_Type = SOAP_Binding_Type then
         --  Call SOAP Binding handler.

         WSDL.Parsers.SOAP.Start_Binding_Element (Attributes, Node, Success);
      end if;
   end Start_Binding_Element;

   -------------------------------------
   -- Start_Binding_Operation_Element --
   -------------------------------------

   procedure Start_Binding_Operation_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Bindings.Binding_Access;
--     Node       : out WSDL.AST.Operations.Interface_Operation_Access;
     Success    : in out Boolean)
   is
      Node : WSDL.AST.Operations.Binding_Operation_Access;

   begin
      Node := new WSDL.AST.Operations.Binding_Operation_Node;
      Node.Parent := WSDL.AST.Operations.Binding_Access (Parent);
      Parent.Binding_Operations.Append (Node);

      --  Analyze 'ref' attribute.

      Node.Ref :=
        To_Qualified_Name (Namespaces, Attributes.Value (Ref_Attribute));

      --  Analyze SOAP Binding extension's attributes.

      if Parent.Binding_Type = SOAP_Binding_Type then
         --  Call SOAP Binding handler.

         WSDL.Parsers.SOAP.Start_Binding_Operation_Element
          (Attributes, Node, Success);
      end if;
   end Start_Binding_Operation_Element;

   -------------------------------
   -- Start_Description_Element --
   -------------------------------

   procedure Start_Description_Element
    (Self       : in out WSDL_Parser'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      Self.Description := new WSDL.AST.Descriptions.Description_Node;
      Self.Description.Target_Namespace :=
        Attributes.Value (Target_Namespace_Attribute);

      --  Description-1006: IRI of target namespace must be absolute.
      --
      --  XXX Not implemented yet.
   end Start_Description_Element;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out WSDL_Parser;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      Self.Current_State := (Document, others => <>);
   end Start_Document;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out WSDL_Parser;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean)
   is
      pragma Unreferenced (Qualified_Name);

   begin
      if Self.Ignore_Depth /= 0 then
         Self.Ignore_Depth := Self.Ignore_Depth + 1;

      elsif Namespace_URI = WSDL_Namespace_URI then
         if Local_Name = Binding_Element then
            if Self.Current_State.Kind = WSDL_Description then
               Self.Current_State.Last_Child_Kind := Interface_Binding_Service;
               Self.Push (WSDL_Binding);
               Start_Binding_Element
                (Attributes,
                 Self.Namespaces,
                 Self.Description,
                 Self.Current_Binding,
                 Success);

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Description_Element then
            if Self.Current_State.Kind = Document then
               Self.Push (WSDL_Description);
               Self.Start_Description_Element (Attributes, Success);

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Documentation_Element then
            if Self.Current_State.Kind = WSDL_Description then
               if Self.Current_State.Last_Child_Kind > Documentation then
                  --  Description-1005: Invalid order of children elements of
                  --  'description' element.

                  Self.Report (WSDL.Assertions.Description_1005);

                  raise WSDL_Error;

               else
                  Self.Current_State.Last_Child_Kind := Documentation;
                  Self.Ignore_Depth := 1;
               end if;

            elsif Self.Current_State.Kind = WSDL_Binding
              or Self.Current_State.Kind = WSDL_Binding_Operation
              or Self.Current_State.Kind = WSDL_Endpoint
              or Self.Current_State.Kind = WSDL_Input
              or Self.Current_State.Kind = WSDL_Interface
              or Self.Current_State.Kind = WSDL_Interface_Operation
              or Self.Current_State.Kind = WSDL_Output
              or Self.Current_State.Kind = WSDL_Service
            then
               Self.Ignore_Depth := 1;

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Endpoint_Element then
            if Self.Current_State.Kind = WSDL_Service then
               Self.Push (WSDL_Endpoint);
               Start_Endpoint_Element
                (Attributes, Self.Namespaces, Self.Current_Service, Success);

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Fault_Element then
            if Self.Current_State.Kind = WSDL_Interface then
               Self.Push (WSDL_Interface_Fault);
               Start_Interface_Fault_Element
                (Attributes,
                 Self.Namespaces,
                 Self.Current_Interface,
--                 Self.Current_Fault,
                 Success);

--            elsif Self.Current_State.Kind = WSDL_Binding then
--               Self.Push (WSDL_Binding_Operation);
--               Start_Binding_Operation_Element
--                (Attributes,
--                 Self.Namespaces,
--                 Self.Current_Binding,
--                 Success);

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Include_Element then
            if Self.Current_State.Kind = WSDL_Description then
               if Self.Current_State.Last_Child_Kind > Include_Import then
                  --  Description-1005: Invalid order of children elements of
                  --  'description' element.

                  Self.Report (WSDL.Assertions.Description_1005);

                  raise WSDL_Error;

               else
                  Self.Current_State.Last_Child_Kind := Include_Import;
                  Self.Ignore_Depth := 1;
               end if;

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Infault_Element then
            if Self.Current_State.Kind = WSDL_Binding_Operation then
               --  XXX all children elements are ignored for now.

               Self.Ignore_Depth := 1;

            elsif Self.Current_State.Kind = WSDL_Interface_Operation then
               Self.Push (WSDL_Infault);
               Start_Input_Output_Fault_Element
                (Attributes,
                 Self.Namespaces,
                 Self.Current_Operation,
                 WSDL.AST.In_Message,
                 Success);

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Input_Element then
            if Self.Current_State.Kind = WSDL_Binding_Operation then
               --  XXX all children elements are ignored for now.

               Self.Ignore_Depth := 1;

            elsif Self.Current_State.Kind = WSDL_Interface_Operation then
               Self.Push (WSDL_Input);
               Start_Input_Output_Element
                (Self,
                 Attributes,
                 Self.Namespaces,
                 Self.Current_Operation,
                 WSDL.AST.In_Message,
                 Success);

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Interface_Element then
            if Self.Current_State.Kind = WSDL_Description then
               Self.Current_State.Last_Child_Kind := Interface_Binding_Service;
               Self.Push (WSDL_Interface);
               Start_Interface_Element
                (Self,
                 Attributes,
                 Self.Namespaces,
                 Self.Description,
                 Self.Current_Interface,
                 Success);

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Import_Element then
            if Self.Current_State.Kind = WSDL_Description then
               if Self.Current_State.Last_Child_Kind > Include_Import then
                  --  Description-1005: Invalid order of children elements of
                  --  'description' element.

                  Self.Report (WSDL.Assertions.Description_1005);

                  raise WSDL_Error;

               else
                  Self.Current_State.Last_Child_Kind := Include_Import;
                  Self.Ignore_Depth := 1;
               end if;

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Operation_Element then
            if Self.Current_State.Kind = WSDL_Interface then
               Self.Push (WSDL_Interface_Operation);
               Start_Interface_Operation_Element
                (Self,
                 Attributes,
                 Self.Current_Interface,
                 Self.Current_Operation,
                 Success);

            elsif Self.Current_State.Kind = WSDL_Binding then
               Self.Push (WSDL_Binding_Operation);
               Start_Binding_Operation_Element
                (Attributes,
                 Self.Namespaces,
                 Self.Current_Binding,
                 Success);

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Outfault_Element then
            if Self.Current_State.Kind = WSDL_Binding_Operation then
               --  XXX all children elements are ignored for now.

               Self.Ignore_Depth := 1;

            elsif Self.Current_State.Kind = WSDL_Interface_Operation then
               Self.Push (WSDL_Outfault);
               Start_Input_Output_Fault_Element
                (Attributes,
                 Self.Namespaces,
                 Self.Current_Operation,
                 WSDL.AST.Out_Message,
                 Success);

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Output_Element then
            if Self.Current_State.Kind = WSDL_Binding_Operation then
               --  XXX all children elements are ignored for now.

               Self.Ignore_Depth := 1;

            elsif Self.Current_State.Kind = WSDL_Interface_Operation then
               Self.Push (WSDL_Output);
               Start_Input_Output_Element
                (Self,
                 Attributes,
                 Self.Namespaces,
                 Self.Current_Operation,
                 WSDL.AST.Out_Message,
                 Success);

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Service_Element then
            if Self.Current_State.Kind = WSDL_Description then
               Self.Current_State.Last_Child_Kind := Interface_Binding_Service;
               Self.Push (WSDL_Service);
               Start_Service_Element
                (Attributes,
                 Self.Namespaces,
                 Self.Description,
                 Self.Current_Service,
                 Success);

            else
               raise Program_Error;
            end if;

         elsif Local_Name = Types_Element then
            if Self.Current_State.Kind = WSDL_Description then
               if Self.Current_State.Last_Child_Kind > Types then
                  --  Description-1005: Invalid order of children elements of
                  --  'description' element.

                  Self.Report (WSDL.Assertions.Description_1005);

                  raise WSDL_Error;

               else
                  Self.Current_State.Last_Child_Kind := Types;
                  Self.Push (WSDL_Types);
                  Start_Types_Element (Self.Description, Success);
               end if;

            else
               raise Program_Error;
            end if;

         else
            raise Program_Error;
         end if;

      else
         if Self.Current_State.Kind = WSDL_Description then
            --  Extension element can appair in two places of children of
            --  'description' element:
            --
            --   - in the set of 'include' and 'import' elements;
            --
            --   - in the set of 'interface', 'binding' and 'service' elements.
            --
            --  Code below sets current kind of children into the appropriate
            --  value.

            if Self.Current_State.Last_Child_Kind < Types then
               Self.Current_State.Last_Child_Kind := Include_Import;

            else
               Self.Current_State.Last_Child_Kind := Interface_Binding_Service;
            end if;

         elsif Self.Current_State.Kind = WSDL_Binding
           or Self.Current_State.Kind = WSDL_Binding_Operation
           or Self.Current_State.Kind = WSDL_Endpoint
           or Self.Current_State.Kind = WSDL_Input
           or Self.Current_State.Kind = WSDL_Interface
           or Self.Current_State.Kind = WSDL_Interface_Operation
           or Self.Current_State.Kind = WSDL_Output
           or Self.Current_State.Kind = WSDL_Service
         then
            --  Ignore unknown extensions of interface component.

            Self.Ignore_Depth := 1;

         elsif Self.Current_State.Kind = WSDL_Types then
            --  XXX all children elements are ignored for now.

            Self.Ignore_Depth := 1;

         else
            raise Program_Error;
         end if;
      end if;
   end Start_Element;

   ----------------------------
   -- Start_Endpoint_Element --
   ----------------------------

   procedure Start_Endpoint_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Services.Service_Access;
     Success    : in out Boolean)
   is
      pragma Unreferenced (Success);

      Name : constant League.Strings.Universal_String
        := Attributes.Value (Name_Attribute);
      Node : WSDL.AST.Endpoints.Endpoint_Access;

   begin
      Node := new WSDL.AST.Endpoints.Endpoint_Node;
      Node.Parent := WSDL.AST.Endpoints.Service_Access (Parent);
      Node.Local_Name := Name;
      Parent.Endpoints.Insert (Name, Node);

      --  Analyze 'binding' attribute.

      Node.Binding_Name :=
        To_Qualified_Name (Namespaces, Attributes.Value (Binding_Attribute));

      --  Analyze 'address' attribute.

      if Attributes.Is_Specified (Address_Attribute) then
         Node.Address := Attributes.Value (Address_Attribute);
      end if;
   end Start_Endpoint_Element;

   --------------------------------------
   -- Start_Input_Output_Fault_Element --
   --------------------------------------

   procedure Start_Input_Output_Fault_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Interface_Operation_Access;
     Direction  : WSDL.AST.Message_Directions;
     Success    : in out Boolean)
   is
      pragma Unreferenced (Success);

      Node : constant WSDL.AST.Interface_Fault_Reference_Access
        := new WSDL.AST.Faults.Interface_Fault_Reference_Node;

   begin
      Node.Parent := Parent;
      Parent.Interface_Fault_References.Append (Node);
      Node.Interface_Fault_Name :=
        To_Qualified_Name (Namespaces, Attributes.Value (Ref_Attribute));
      Node.Direction := Direction;

      --  Analyze 'messageLabel' attribute.

      if Attributes.Is_Specified (Message_Label_Attribute) then
         Node.Message_Label := Attributes.Value (Message_Label_Attribute);
      end if;
   end Start_Input_Output_Fault_Element;

   --------------------------------
   -- Start_Input_Output_Element --
   --------------------------------

   procedure Start_Input_Output_Element
    (Parser     : WSDL_Parser;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Interface_Operation_Access;
     Direction  : WSDL.AST.Message_Directions;
     Success    : in out Boolean)
   is
      pragma Unreferenced (Success);

      use type WSDL.AST.Message_Directions;

      Node  : constant WSDL.AST.Interface_Message_Access
        := new WSDL.AST.Messages.Interface_Message_Node;
      Found : Boolean;

   begin
      Node.Parent := Parent;
      Node.Direction := Direction;
      Parent.Interface_Message_References.Append (Node);

      --  Analyze 'messageLabel' attribute.

      if Attributes.Is_Specified (Message_Label_Attribute) then
         Node.Message_Label := Attributes.Value (Message_Label_Attribute);
      end if;

      --  MessageLabel-1024: The value of this property MUST match the name of
      --  placeholder message defined by the message exchange pattern. 
      --
      --  Lookup for placeholder in the operation's MEP.

      Found := False;

      for J in Parent.Message_Exchange_Pattern.Placeholders'Range loop
         if Parent.Message_Exchange_Pattern.Placeholders (J).Direction
              = Direction
           and Parent.Message_Exchange_Pattern.Placeholders (J).Label
                 = Node.Message_Label
         then
            Found := True;
         end if;
      end loop;

      if not Found then
         Parser.Report (WSDL.Assertions.MessageLabel_1024);

         raise WSDL_Error;
      end if;

      --  Analyze 'element' attribute.

      if Attributes.Is_Specified (Element_Attribute) then
         declare
            Value : constant League.Strings.Universal_String
              := Attributes.Value (Element_Attribute);

         begin
            if Value = Any_Literal then
               Node.Message_Content_Model := WSDL.AST.Any;

            elsif Value = None_Literal then
               Node.Message_Content_Model := WSDL.AST.None;

            elsif Value = Other_Literal then
               Node.Message_Content_Model := WSDL.AST.Other;

            else
               Node.Message_Content_Model := WSDL.AST.Element;
               Node.Element := To_Qualified_Name (Namespaces, Value);
            end if;
         end;

      else
         Node.Message_Content_Model := WSDL.AST.Other;
      end if;
   end Start_Input_Output_Element;

   -----------------------------
   -- Start_Interface_Element --
   -----------------------------

   procedure Start_Interface_Element
    (Parser      : in out WSDL_Parser;
     Attributes  : XML.SAX.Attributes.SAX_Attributes;
     Namespaces  : Namespace_Maps.Map;
     Description : WSDL.AST.Descriptions.Description_Access;
     Node        : out WSDL.AST.Interface_Access;
     Success     : in out Boolean)
   is
      pragma Unreferenced (Success);

      Name : constant League.Strings.Universal_String
        := Attributes.Value (Name_Attribute);

   begin
      --  Interface-1010: For each Interface component in the {interfaces}
      --  property of a Description component, the {name} property MUST be
      --  unique.
      --
      --  Check whether name of the interface component is not used by another
      --  component.

      if Description.Interfaces.Contains (Name) then
         Parser.Report (WSDL.Assertions.Interface_1010);

         raise WSDL_Error;
      end if;

      Node := new WSDL.AST.Interfaces.Interface_Node;
      Node.Parent := WSDL.AST.Components.Description_Access (Description);
      Node.Local_Name := Name;
      Description.Interfaces.Insert (Name, Node);

      --  Analyze 'extends' attribute when specified.

      if Attributes.Is_Specified (Extends_Attribute) then
         declare
            Values : constant League.String_Vectors.Universal_String_Vector
              := Attributes.Value (Extends_Attribute).Split
                  (' ', League.Strings.Skip_Empty);
            Item   : WSDL.AST.Qualified_Name;

         begin
            for J in 1 .. Values.Length loop
               Item := To_Qualified_Name (Namespaces, Values.Element (J));

               --  Interface-1011: The list of xs:QName in an extends attribute
               --  information item MUST NOT contain duplicates.
               --
               --  Check whether this namespace/name pair is not in the set
               --  already.

               if Node.Extends.Contains (Item) then
                  Parser.Report (WSDL.Assertions.Interface_1011);

                  raise WSDL_Error;
               end if;

               Node.Extends.Insert (Item);
            end loop;
         end;
      end if;

      --  Analyze 'styleDefault' attribute when specified.

      if Attributes.Is_Specified (Style_Default_Attribute) then
         Node.Style_Default :=
           Attributes.Value (Style_Default_Attribute).Split
            (' ', League.Strings.Skip_Empty);

         --  Interface-1012: The type of the styleDefault attribute information
         --  item is list of xs:anyURI. Its value, if present, MUST contain
         --  absolute IRIs (see [IETF RFC 3987]).
         --
         --  XXX This check is not implemented.
      end if;
   end Start_Interface_Element;

   -----------------------------------
   -- Start_Interface_Fault_Element --
   -----------------------------------

   procedure Start_Interface_Fault_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Interface_Access;
--     Node       : out WSDL.AST.Faults.Interface_Fault_Access;
     Success    : in out Boolean)
   is
      pragma Unreferenced (Success);

      Name : constant League.Strings.Universal_String
        := Attributes.Value (Name_Attribute);
      Node : WSDL.AST.Faults.Interface_Fault_Access;

   begin
      Node := new WSDL.AST.Faults.Interface_Fault_Node;
      Node.Parent := Parent;
      Node.Local_Name := Name;
      Parent.Interface_Faults.Insert (Name, Node);

      --  Analyze 'element' attribute.

      --  Note, there are two assertion is applied to {message content model}
      --  and {element declaration} properties of interface's fault component:
      --
      --  InterfaceFault-1013: An xs:token with one of the values #any, #none,
      --  #other, or #element.
      --
      --  InterfaceFault-1014: When the {message content model} property has
      --  the value #any or #none the {element declaration} property MUST be
      --  empty.
      --
      --  Both assertions not need to be tested at runtime, they are enforced
      --  by construction.

      if Attributes.Is_Specified (Element_Attribute) then
         declare
            Value : constant League.Strings.Universal_String
              := Attributes.Value (Element_Attribute);

         begin
            if Value = Any_Literal then
               Node.Message_Content_Model := WSDL.AST.Any;

            elsif Value = None_Literal then
               Node.Message_Content_Model := WSDL.AST.None;

            elsif Value = Other_Literal then
               Node.Message_Content_Model := WSDL.AST.Other;

            else
               Node.Message_Content_Model := WSDL.AST.Element;
               Node.Element := To_Qualified_Name (Namespaces, Value);
            end if;
         end;

      else
         Node.Message_Content_Model := WSDL.AST.Other;
      end if;
   end Start_Interface_Fault_Element;

   ---------------------------------------
   -- Start_Interface_Operation_Element --
   ---------------------------------------

   procedure Start_Interface_Operation_Element
    (Parser     : WSDL_Parser;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Parent     : not null WSDL.AST.Interface_Access;
     Node       : out WSDL.AST.Interface_Operation_Access;
     Success    : in out Boolean)
   is
      pragma Unreferenced (Success);

      Name    : constant League.Strings.Universal_String
        := Attributes.Value (Name_Attribute);
      MEP_IRI : League.Strings.Universal_String;

   begin
      Node := new WSDL.AST.Operations.Interface_Operation_Node;
      Node.Parent := Parent;
      Node.Local_Name := Name;
      Parent.Interface_Operations.Insert (Name, Node);

      --  Analyze 'pattern' attribute.

      if Attributes.Is_Specified (Pattern_Attribute) then
         MEP_IRI := Attributes.Value (Pattern_Attribute);

         --  InterfaceOperation-1018: This xs:anyURI MUST be an absolute IRI
         --  (see [IETF RFC 3987]).
         --
         --  XXX Not implemented yet.

      else
         MEP_IRI := In_Out_MEP;
      end if;

      Node.Message_Exchange_Pattern := WSDL.Parsers.MEP.Resolve (Parser, MEP_IRI);

      --  Analyze 'style' attribute.

      if Attributes.Is_Specified (Style_Attribute) then
         Node.Style :=
           Attributes.Value (Style_Attribute).Split
            (' ', League.Strings.Skip_Empty);

         for J in 1 .. Node.Style.Length loop
            --  InterfaceOperation-1019: These xs:anyURIs MUST be absolute IRIs
            --  (see [IETF RFC 3986]).
            --
            --  XXX Not implemented yet.

            null;
         end loop;

      else
         Node.Style := Node.Parent.Style_Default;
      end if;
   end Start_Interface_Operation_Element;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding procedure Start_Prefix_Mapping
    (Self          : in out WSDL_Parser;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      Self.Namespaces.Insert (Prefix, Namespace_URI);
   end Start_Prefix_Mapping;

   ---------------------------
   -- Start_Service_Element --
   ---------------------------

   procedure Start_Service_Element
    (Attributes : XML.SAX.Attributes.SAX_Attributes;
     Namespaces : Namespace_Maps.Map;
     Parent     : WSDL.AST.Descriptions.Description_Access;
     Node       : out WSDL.AST.Services.Service_Access;
     Success    : in out Boolean)
   is
      pragma Unreferenced (Success);

      Name : constant League.Strings.Universal_String
        := Attributes.Value (Name_Attribute);

   begin
      --  Service-1060: "For each Service component in the {services} property
      --  of a Description component, the {name} property MUST be unique."

      if Parent.Services.Contains (Name) then
         raise Program_Error;
      end if;

      Node := new WSDL.AST.Services.Service_Node;
      Node.Parent := WSDL.AST.Components.Description_Access (Parent);
      Node.Local_Name := Name;
      Parent.Services.Insert (Name, Node);

      --  Analyze 'interface' attribute.

      Node.Interface_Name :=
        To_Qualified_Name (Namespaces, Attributes.Value (Interface_Attribute));
   end Start_Service_Element;

   -------------------------
   -- Start_Types_Element --
   -------------------------

   procedure Start_Types_Element
    (Description : WSDL.AST.Descriptions.Description_Access;
     Success     : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      Description.Types := new WSDL.AST.Types.Types_Node;
      Description.Types.Parent :=
        WSDL.AST.Components.Description_Access (Description);
   end Start_Types_Element;

   -----------------------
   -- To_Qualified_Name --
   -----------------------

   function To_Qualified_Name
    (Namespaces : Namespace_Maps.Map;
     Name       : League.Strings.Universal_String)
       return WSDL.AST.Qualified_Name
   is
      Index : constant Natural := Name.Index (':');

   begin
      return
       (Namespace_URI => Namespaces.Element (Name.Slice (1, Index - 1)),
        Local_Name    => Name.Slice (Index + 1, Name.Length));
   end To_Qualified_Name;

end WSDL.Parsers;
