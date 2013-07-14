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
with Ada.Containers.Ordered_Maps;
with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with League.Strings;

with WSDL.AST.Bindings;
pragma Unreferenced (WSDL.AST.Bindings);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Descriptions;
pragma Unreferenced (WSDL.AST.Descriptions);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Interfaces;
pragma Unreferenced (WSDL.AST.Interfaces);
--  XXX GNAT 20130108 reports unreferenced unit.
with WSDL.AST.Messages;
pragma Unreferenced (WSDL.AST.Messages);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Operations;
pragma Unreferenced (WSDL.AST.Operations);
--  GNAT Pro 7.2.0w (20130423): package is needed to access to type's
--  components.
with WSDL.AST.Services;
with WSDL.Constants;
with WSDL.Generator.Naming_Conventions;

package body WSDL.Generator is

   use WSDL.Constants;

   package Operation_Maps is
     new Ada.Containers.Ordered_Maps
          (League.Strings.Universal_String,
           WSDL.AST.Interface_Operation_Access,
           League.Strings."<",
           WSDL.AST."=");

   procedure Put (Item : League.Strings.Universal_String);

   procedure Put_Line (Item : League.Strings.Universal_String);

   procedure Generate_Service
    (Service_Node : not null WSDL.AST.Services.Service_Access);

   procedure Lookup_Binding
    (Interface_Node : not null WSDL.AST.Interface_Access;
     Binding_Node   : out WSDL.AST.Binding_Access);

   function Compute_All_Operations
    (Interface_Node : not null WSDL.AST.Interface_Access)
       return Operation_Maps.Map;

   function Compute_SOAP_Action
    (Operation_Node : not null WSDL.AST.Interface_Operation_Access;
     Binding_Node   : WSDL.AST.Binding_Access)
       return League.Strings.Universal_String;

   ----------------------------
   -- Compute_All_Operations --
   ----------------------------

   function Compute_All_Operations
    (Interface_Node : not null WSDL.AST.Interface_Access)
       return Operation_Maps.Map
   is
      Result : Operation_Maps.Map;

      procedure Analyze_Interface
       (Interface_Node : not null WSDL.AST.Interface_Access);

      -----------------------
      -- Analyze_Interface --
      -----------------------

      procedure Analyze_Interface
       (Interface_Node : not null WSDL.AST.Interface_Access) is
      begin
         --  Fill result by own operations of the interface, but excluding
         --  all operations which names is in the result already because they
         --  come from extended interface.

         for Operation_Node of Interface_Node.Interface_Operations loop
            if not Result.Contains (Operation_Node.Local_Name) then
               Result.Insert (Operation_Node.Local_Name, Operation_Node);
            end if;
         end loop;

         for Extended_Interface_Node of Interface_Node.Extended_Interfaces loop
            Analyze_Interface (Extended_Interface_Node);
         end loop;
      end Analyze_Interface;

   begin
      Analyze_Interface (Interface_Node);

      return Result;
   end Compute_All_Operations;

   -------------------------
   -- Compute_SOAP_Action --
   -------------------------

   function Compute_SOAP_Action
    (Operation_Node : not null WSDL.AST.Interface_Operation_Access;
     Binding_Node   : WSDL.AST.Binding_Access)
       return League.Strings.Universal_String
   is
      use type WSDL.AST.Interface_Operation_Access;

   begin
      for Binding_Operation of Binding_Node.Binding_Operations loop
         if Binding_Operation.Interface_Operation = Operation_Node then
            return Binding_Operation.SOAP.Action;
         end if;
      end loop;

      return League.Strings.Empty_Universal_String;
   end Compute_SOAP_Action;

   --------------
   -- Generate --
   --------------

   procedure Generate
    (Description : not null WSDL.AST.Description_Access) is
   begin
      for Service_Node of Description.Services loop
         Generate_Service (Service_Node);
      end loop;
   end Generate;

   ----------------------
   -- Generate_Service --
   ----------------------

   procedure Generate_Service
    (Service_Node : not null WSDL.AST.Services.Service_Access)
   is
      use type League.Strings.Universal_String;
      use type WSDL.AST.Binding_Access;
      use type WSDL.AST.Message_Content_Models;
      use type WSDL.AST.Message_Directions;
      use type WSDL.AST.Interface_Message_Access;

      Binding_Node           : WSDL.AST.Binding_Access;
      Operations             : Operation_Maps.Map;
      Interface_Type_Name    : League.Strings.Universal_String;
      Interface_Package_Name : League.Strings.Universal_String;
      SOAP_Action            : League.Strings.Universal_String;
      Input_Message          : WSDL.AST.Interface_Message_Access;
      Output_Message         : WSDL.AST.Interface_Message_Access;
      First_Operation        : Boolean;

   begin
      --  Lookup for corresponding binding component.

      Lookup_Binding (Service_Node.Interface_Node, Binding_Node);

      if Binding_Node = null then
         --  There is no binding for interface element specified.

         raise Program_Error;
      end if;

      if Binding_Node.Binding_Type /= SOAP_Binding_Type then
         --  This binding type is not supported.

         raise Program_Error;
      end if;

      if Binding_Node.SOAP.Version /= SOAP_Version_12_Literal then
         --  This version of SOAP is not supported.

         raise Program_Error;
      end if;

      --  Compute set of all interface's operations, including inherited.

      Operations := Compute_All_Operations (Service_Node.Interface_Node);

      --  Generate specification of delegation package.

      Interface_Package_Name :=
        "Generic_"
          & Naming_Conventions.To_Ada_Identifier
             (Service_Node.Interface_Node.Local_Name);
      Interface_Type_Name :=
        Naming_Conventions.To_Ada_Identifier
         (Service_Node.Interface_Node.Local_Name);

      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--  This compilation unit was generated by WSDL2Ada translator.");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line ("pragma Style_Checks (""NM32766"");");
      New_Line;
      Put_Line ("with Web_Services.SOAP.Payloads.Faults;");
      Put_Line ("with Payloads;");
      New_Line;
      Put_Line ("generic");

      First_Operation := True;

      for Operation_Node of Operations loop
         if Operation_Node.Message_Exchange_Pattern.IRI /= In_Out_MEP
           and Operation_Node.Message_Exchange_Pattern.IRI /= Robust_In_Only_MEP
         then
            --  Only in-out and robust-in-only MEPs are supported.

            raise Program_Error;
         end if;

         --  All supported MEPs has at most one input and at most one output
         --  placeholder. Lookup for input and output messages to simplify
         --  code.

         Input_Message := null;
         Output_Message := null;

         for Message_Node of Operation_Node.Interface_Message_References loop
            case Message_Node.Direction is
               when WSDL.AST.In_Message =>
                  Input_Message := Message_Node;

               when WSDL.AST.Out_Message =>
                  Output_Message := Message_Node;
            end case;
         end loop;

         if not First_Operation then
            New_Line;

         else
            First_Operation := False;
         end if;

         Put
          ("   with procedure "
             & Naming_Conventions.To_Ada_Identifier
                (Operation_Node.Local_Name));

         --  Generate input parameter, if any.

         if Input_Message /= null then
            if Input_Message.Message_Content_Model
              not in WSDL.AST.None | WSDL.AST.Element
            then
               --  Only '#none' and '#element' message content models are
               --  supported.

               raise Program_Error;
            end if;

            if Input_Message.Message_Content_Model = WSDL.AST.Element then
               New_Line;
               Put
                ("    (Input  : Payloads."
                   & Naming_Conventions.To_Ada_Identifier
                      (Input_Message.Element.Local_Name)
                   & "'Class");
            end if;
         end if;

         --  Generate output parameter, if any.

         if Output_Message /= null then
            if Input_Message /= null
              and then Input_Message.Message_Content_Model = WSDL.AST.Element
            then
               Put_Line (";");
               Put ("     ");

            else
               New_Line;
               Put ("    (");
            end if;

            Put
             ("Output : out Payloads."
                & Naming_Conventions.To_Ada_Identifier
                   (Output_Message.Element.Local_Name)
                & "_Access");
         end if;

         --  Generate output fault parameter, if eny.

         if not Operation_Node.Interface_Fault_References.Is_Empty then
            Put_Line (";");
            Put
             ("     Fault  :"
                & " out Web_Services.SOAP.Payloads.Faults.SOAP_Fault_Access");
         end if;

         Put_Line (");");
      end loop;

      New_Line;
      Put_Line ("package " & Interface_Package_Name & " is");
      New_Line;
      Put_Line ("   procedure Register_Interface;");
      New_Line;
      Put_Line ("end " & Interface_Package_Name & ";");

      --  Generate package for invocation dispatching.

      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--  This compilation unit was generated by WSDL2Ada translator.");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line ("pragma Style_Checks (""NM32766"");");
      New_Line;
      Put_Line ("with League.Strings;");
      Put_Line ("with Web_Services.SOAP.Handler_Registry;");
      Put_Line ("with Web_Services.SOAP.Messages;");
      Put_Line ("with Web_Services.SOAP.Payloads;");
      New_Line;
      Put_Line ("package body " & Interface_Package_Name & " is");
      New_Line;
      Put_Line ("   use type League.Strings.Universal_String;");
      New_Line;
      Put_Line ("   function ""+""");
      Put_Line ("    (Item : Wide_Wide_String)");
      Put_Line ("       return League.Strings.Universal_String");
      Put_Line ("         renames League.Strings.To_Universal_String;");
      New_Line;
      Put_Line ("   procedure Dispatch");
      Put_Line ("    (Input   : Web_Services.SOAP.Messages.SOAP_Message;");
      Put_Line ("     Output  : out Web_Services.SOAP.Messages.SOAP_Message_Access;");
      Put_Line ("     Found   : in out Boolean);");
      New_Line;
      Put_Line ("   --------------");
      Put_Line ("   -- Dispatch --");
      Put_Line ("   --------------");
      New_Line;
      Put_Line ("   procedure Dispatch");
      Put_Line ("    (Input   : Web_Services.SOAP.Messages.SOAP_Message;");
      Put_Line ("     Output  : out Web_Services.SOAP.Messages.SOAP_Message_Access;");
      Put_Line ("     Found   : in out Boolean)");
      Put_Line ("   is");
      Put_Line ("      use type Web_Services.SOAP.Payloads.Faults.SOAP_Fault_Access;");
      New_Line;
      Put_Line ("      Fault : Web_Services.SOAP.Payloads.Faults.SOAP_Fault_Access;");
      New_Line;
      Put_Line ("   begin");

      First_Operation := True;

      for Operation_Node of Operations loop
         if Operation_Node.Message_Exchange_Pattern.IRI /= In_Out_MEP
           and Operation_Node.Message_Exchange_Pattern.IRI /= Robust_In_Only_MEP
         then
            --  Only in-out and robust-in-only MEPs are supported.

            raise Program_Error;
         end if;

         --  All supported MEPs has at most one input and at most one output
         --  placeholder. Lookup for input and output messages to simplify
         --  code.

         Input_Message := null;
         Output_Message := null;

         for Message_Node of Operation_Node.Interface_Message_References loop
            case Message_Node.Direction is
               when WSDL.AST.In_Message =>
                  Input_Message := Message_Node;

               when WSDL.AST.Out_Message =>
                  Output_Message := Message_Node;
            end case;
         end loop;

         SOAP_Action := Compute_SOAP_Action (Operation_Node, Binding_Node);

         if First_Operation then
            Put ("      if");

         else
            New_Line;
            Put ("      elsif");
         end if;

         --  Use SOAP Action to dispatch call when specified.

         if not SOAP_Action.Is_Empty then
            Put_Line (" Input.Action = +""" & SOAP_Action & """ then");

         else
            Put_Line
             (" Input.Namespace_URI = +"""
                & Input_Message.Element.Namespace_URI
                & '"');
            Put_Line
             ("        and Input.Local_Name = +"""
                & Input_Message.Element.Local_Name
                & '"');
            Put_Line ("      then");
         end if;

         First_Operation := False;

         Put_Line ("         declare");

         if Output_Message /= null then
            Put_Line
             ("            Aux : Payloads."
                & Naming_Conventions.To_Ada_Identifier
                   (Output_Message.Element.Local_Name)
                & "_Access;");
            New_Line;
         end if;

         Put_Line ("         begin");
         Put_Line ("            Found := True;");
         Put
          ("            "
             & Naming_Conventions.To_Ada_Identifier
                (Operation_Node.Local_Name));

         --  Generate input parameter, if any.

         if Input_Message /= null then
            if Input_Message.Message_Content_Model
              not in WSDL.AST.None | WSDL.AST.Element
            then
               --  Only '#none' and '#element' message content models are
               --  supported.

               raise Program_Error;
            end if;

            if Input_Message.Message_Content_Model = WSDL.AST.Element then
               New_Line;
               Put ("             (Payloads." 
                   & Naming_Conventions.To_Ada_Identifier
                      (Input_Message.Element.Local_Name)
                   & "'Class (Input.Payload.all)");
            end if;
         end if;

         --  Generate output parameter, if any.

         if Output_Message /= null then
            if Input_Message = null
              or else Input_Message.Message_Content_Model /= WSDL.AST.Element
            then
               New_Line;
               Put ("             (Aux");

            else
               Put_Line (",");
               Put ("              Aux");
            end if;
         end if;

         --  Generate output fault parameter, if eny.

         if not Operation_Node.Interface_Fault_References.Is_Empty then
            Put_Line (",");
            Put ("              Fault");
         end if;

         Put_Line (");");

         if Operation_Node.Message_Exchange_Pattern.IRI = In_Out_MEP then
            Put_Line
             ("            Output :="
                & " new Web_Services.SOAP.Messages.SOAP_Message;");

            if not Operation_Node.Interface_Fault_References.Is_Empty then
               New_Line;
               Put_Line ("            if Fault = null then");
               Put_Line ("               Output.Payload :=");
               Put_Line
                ("                 "
                   & "Web_Services.SOAP.Payloads.SOAP_Payload_Access (Aux);");
               New_Line;
               Put_Line ("            else");
               Put_Line ("               Output.Payload :=");
               Put_Line
                ("                 "
                   & "Web_Services.SOAP.Payloads.SOAP_Payload_Access (Fault);");
               Put_Line ("            end if;");

            else
               Put_Line
                ("            Output.Payload :=");
               Put_Line
                ("              "
                   & "Web_Services.SOAP.Payloads.SOAP_Payload_Access (Aux);");
            end if;

         elsif Operation_Node.Message_Exchange_Pattern.IRI = Robust_In_Only_MEP then
            --  Generate fault handling code when necessary.

            if not Operation_Node.Interface_Fault_References.Is_Empty then
               Put_Line
                ("            Output :="
                   & " new Web_Services.SOAP.Messages.SOAP_Message;");
               Put_Line ("            Output.Payload :=");
               Put_Line
                ("              "
                   & "Web_Services.SOAP.Payloads.SOAP_Payload_Access (Fault);");
            end if;
         end if;

         Put_Line ("         end;");
      end loop;

      Put_Line ("      end if;");

      Put_Line ("   end Dispatch;");
      New_Line;
      Put_Line ("   ------------------------");
      Put_Line ("   -- Register_Interface --");
      Put_Line ("   ------------------------");
      New_Line;
      Put_Line ("   procedure Register_Interface is");
      Put_Line ("   begin");
      Put_Line ("      Web_Services.SOAP.Handler_Registry.Register");
      Put_Line ("       (Dispatch'Unrestricted_Access);");
      Put_Line ("   end Register_Interface;");
      New_Line;
      Put_Line ("end " & Interface_Package_Name & ";");
   end Generate_Service;

   --------------------
   -- Lookup_Binding --
   --------------------

   procedure Lookup_Binding
    (Interface_Node : not null WSDL.AST.Interface_Access;
     Binding_Node   : out WSDL.AST.Binding_Access)
   is
      use type WSDL.AST.Interface_Access;

   begin
      Binding_Node := null;

      for Binding of Interface_Node.Parent.Bindings loop
         --  Use default binding when found. Default value will be overwritten
         --  when interface specific binding will be found.

         if Binding.Interface_Node = null then
            Binding_Node := Binding;
         end if;

         --  Use interface specific binding when found.

         if Binding.Interface_Node = Interface_Node then
            Binding_Node := Binding;

            exit;
         end if;
      end loop;
   end Lookup_Binding;

   ---------
   -- Put --
   ---------

   procedure Put (Item : League.Strings.Universal_String) is
   begin
      Put (Item.To_Wide_Wide_String);
   end Put;

   --------------
   -- Put_Line --
   --------------

   procedure Put_Line (Item : League.Strings.Universal_String) is
   begin
      Put_Line (Item.To_Wide_Wide_String);
   end Put_Line;

end WSDL.Generator;
