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
with Ada.Wide_Wide_Text_IO;

with League.Strings;
with XML.SAX.Attributes;
with XML.SAX.Pretty_Writers;

with WSDL.AST.Bindings;
pragma Unreferenced (WSDL.AST.Bindings);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Descriptions;
pragma Unreferenced (WSDL.AST.Descriptions);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Endpoints;
with WSDL.AST.Interfaces;
pragma Unreferenced (WSDL.AST.Interfaces);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Messages;
pragma Unreferenced (WSDL.AST.Messages);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Operations;
pragma Unreferenced (WSDL.AST.Operations);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Services;
with WSDL.AST.Types;
with WSDL.Constants;
with WSDL.Iterators.Containment;
with WSDL.Visitors;

package body WSDL.Debug is

   use WSDL.Constants;

   type WSDL_Printer is
     limited new WSDL.Visitors.WSDL_Visitor with
   record
      Writer : XML.SAX.Pretty_Writers.SAX_Pretty_Writer;
   end record;

   overriding procedure Enter_Binding
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave_Binding
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Binding_Fault
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Fault_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave_Binding_Fault
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Fault_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Binding_Operation
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Operation_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave_Binding_Operation
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Operation_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Description
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Description_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave_Description
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Description_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Endpoint
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Endpoints.Endpoint_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave_Endpoint
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Endpoints.Endpoint_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Interface
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave_Interface
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Interface_Message
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Message_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave_Interface_Message
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Message_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Interface_Operation
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Operation_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave_Interface_Operation
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Operation_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Service
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Services.Service_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave_Service
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Services.Service_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Enter_Types
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Types.Types_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   overriding procedure Leave_Types
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Types.Types_Access;
     Control : in out WSDL.Iterators.Traverse_Control);

   ----------
   -- Dump --
   ----------

   procedure Dump (Description : WSDL.AST.Description_Access) is
      Printer  : WSDL_Printer;
      Iterator : WSDL.Iterators.Containment.Containment_Iterator;
      Control  : WSDL.Iterators.Traverse_Control := WSDL.Iterators.Continue;

   begin
      Iterator.Visit (Printer, WSDL.AST.Node_Access (Description), Control);
   end Dump;

   -------------------
   -- Enter_Binding --
   -------------------

   overriding procedure Enter_Binding
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      Attributes : XML.SAX.Attributes.SAX_Attributes;

   begin
      Attributes.Set_Value (Name_Attribute, Node.Local_Name);
      Attributes.Set_Value (Type_Attribute, Node.Binding_Type);
      Self.Writer.Start_Element
       (WSDL_Namespace_URI, Binding_Element, Attributes);
   end Enter_Binding;

   -------------------------
   -- Enter_Binding_Fault --
   -------------------------

   overriding procedure Enter_Binding_Fault
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Fault_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.Start_Element (WSDL_Namespace_URI, Fault_Element);
   end Enter_Binding_Fault;

   -----------------------------
   -- Enter_Binding_Operation --
   -----------------------------

   overriding procedure Enter_Binding_Operation
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Operation_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.Start_Element (WSDL_Namespace_URI, Operation_Element);
   end Enter_Binding_Operation;

   -----------------------
   -- Enter_Description --
   -----------------------

   overriding procedure Enter_Description
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Description_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      Attributes : XML.SAX.Attributes.SAX_Attributes;

   begin
      Self.Writer.Set_Offset (2);
      Self.Writer.Start_Document;
      Self.Writer.Start_Prefix_Mapping
       (League.Strings.To_Universal_String ("wsdl"), WSDL_Namespace_URI);
      Attributes.Set_Value
       (Target_Namespace_Attribute, Node.Target_Namespace);
      Self.Writer.Start_Element
       (WSDL_Namespace_URI, Description_Element, Attributes);
   end Enter_Description;

   --------------------
   -- Enter_Endpoint --
   --------------------

   overriding procedure Enter_Endpoint
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Endpoints.Endpoint_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      Attributes : XML.SAX.Attributes.SAX_Attributes;

   begin
      Attributes.Set_Value (Name_Attribute, Node.Local_Name);

      if not Node.Address.Is_Empty then
         Attributes.Set_Value (Address_Attribute, Node.Address);
      end if;

      Self.Writer.Start_Element
       (WSDL_Namespace_URI, Endpoint_Element, Attributes);
   end Enter_Endpoint;

   ---------------------
   -- Enter_Interface --
   ---------------------

   overriding procedure Enter_Interface
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      Attributes : XML.SAX.Attributes.SAX_Attributes;

   begin
      Attributes.Set_Value (Name_Attribute, Node.Local_Name);
      Self.Writer.Start_Element
       (WSDL_Namespace_URI, Interface_Element, Attributes);
   end Enter_Interface;

   -----------------------------
   -- Enter_Interface_Message --
   -----------------------------

   overriding procedure Enter_Interface_Message
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Message_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      case Node.Direction is
         when WSDL.AST.In_Message =>
            Self.Writer.Start_Element (WSDL_Namespace_URI, Input_Element);

         when WSDL.AST.Out_Message =>
            Self.Writer.Start_Element (WSDL_Namespace_URI, Output_Element);
      end case;
   end Enter_Interface_Message;

   -------------------------------
   -- Enter_Interface_Operation --
   -------------------------------

   overriding procedure Enter_Interface_Operation
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Operation_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      Attributes : XML.SAX.Attributes.SAX_Attributes;

   begin
      Attributes.Set_Value (Name_Attribute, Node.Local_Name);
      Self.Writer.Start_Element
       (WSDL_Namespace_URI, Operation_Element, Attributes);
   end Enter_Interface_Operation;

   -------------------
   -- Enter_Service --
   -------------------

   overriding procedure Enter_Service
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Services.Service_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      Attributes : XML.SAX.Attributes.SAX_Attributes;

   begin
      Attributes.Set_Value (Name_Attribute, Node.Local_Name);
      Self.Writer.Start_Element
       (WSDL_Namespace_URI, Service_Element, Attributes);
   end Enter_Service;

   -----------------
   -- Enter_Types --
   -----------------

   overriding procedure Enter_Types
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Types.Types_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.Start_Element (WSDL_Namespace_URI, Types_Element);
   end Enter_Types;

   -------------------
   -- Leave_Binding --
   -------------------

   overriding procedure Leave_Binding
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.End_Element (WSDL_Namespace_URI, Binding_Element);
   end Leave_Binding;

   -------------------------
   -- Leave_Binding_Fault --
   -------------------------

   overriding procedure Leave_Binding_Fault
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Fault_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.End_Element (WSDL_Namespace_URI, Fault_Element);
   end Leave_Binding_Fault;

   -----------------------------
   -- Leave_Binding_Operation --
   -----------------------------

   overriding procedure Leave_Binding_Operation
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Binding_Operation_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.End_Element (WSDL_Namespace_URI, Operation_Element);
   end Leave_Binding_Operation;

   -----------------------
   -- Leave_Description --
   -----------------------

   overriding procedure Leave_Description
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Description_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.End_Element (WSDL_Namespace_URI, Description_Element);
      Self.Writer.End_Document;

      Ada.Wide_Wide_Text_IO.Put_Line (Self.Writer.Text.To_Wide_Wide_String);
   end Leave_Description;

   --------------------
   -- Leave_Endpoint --
   --------------------

   overriding procedure Leave_Endpoint
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Endpoints.Endpoint_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.End_Element (WSDL_Namespace_URI, Endpoint_Element);
   end Leave_Endpoint;

   ---------------------
   -- Leave_Interface --
   ---------------------

   overriding procedure Leave_Interface
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.End_Element (WSDL_Namespace_URI, Interface_Element);
   end Leave_Interface;

   -----------------------------
   -- Leave_Interface_Message --
   -----------------------------

   overriding procedure Leave_Interface_Message
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Message_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      case Node.Direction is
         when WSDL.AST.In_Message =>
            Self.Writer.End_Element (WSDL_Namespace_URI, Input_Element);

         when WSDL.AST.Out_Message =>
            Self.Writer.End_Element (WSDL_Namespace_URI, Output_Element);
      end case;
   end Leave_Interface_Message;

   -------------------------------
   -- Leave_Interface_Operation --
   -------------------------------

   overriding procedure Leave_Interface_Operation
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Interface_Operation_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.End_Element (WSDL_Namespace_URI, Operation_Element);
   end Leave_Interface_Operation;

   -------------------
   -- Leave_Service --
   -------------------

   overriding procedure Leave_Service
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Services.Service_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.End_Element (WSDL_Namespace_URI, Service_Element);
   end Leave_Service;

   -----------------
   -- Leave_Types --
   -----------------

   overriding procedure Leave_Types
    (Self    : in out WSDL_Printer;
     Node    : not null WSDL.AST.Types.Types_Access;
     Control : in out WSDL.Iterators.Traverse_Control) is
   begin
      Self.Writer.End_Element (WSDL_Namespace_URI, Types_Element);
   end Leave_Types;

end WSDL.Debug;
