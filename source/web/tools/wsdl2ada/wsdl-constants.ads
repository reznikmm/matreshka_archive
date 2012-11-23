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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package defines namespace URIs, names of elements and attributes,
--  and literals.
------------------------------------------------------------------------------
with League.Strings;

package WSDL.Constants is

   WSDL_Namespace_URI  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("http://www.w3.org/ns/wsdl");

   --  Element names.

   Binding_Element       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("binding");
   Description_Element   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("description");
   Documentation_Element : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("documentation");
   Endpoint_Element : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("endpoint");
   Fault_Element         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("fault");
   Infault_Element       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("infault");
   Include_Element       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("include");
   Input_Element         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("input");
   Interface_Element     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("interface");
   Import_Element        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("import");
   Operation_Element     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("operation");
   Outfault_Element      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("outfault");
   Output_Element        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("output");
   Service_Element       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("service");
   Types_Element         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("types");

   --  Attribute names,

   Address_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("address");
   Binding_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("binding");
   Element_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("element");
   Extends_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("extends");
   Interface_Attribute        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("interface");
   Message_Label_Attribute    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("messageLabel");
   Name_Attribute             : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("name");
   Pattern_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("pattern");
   Ref_Attribute              : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("ref");
   Style_Attribute            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("style");
   Style_Default_Attribute    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("styleDefault");
   Target_Namespace_Attribute : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("targetNamespace");
   Type_Attribute             : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("type");
 
   --  Literals textual representation.

   Any_Literal   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("#any");
   None_Literal  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("#none");
   Other_Literal : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("#other");

   --  Predefined message exchange patterns.

   In_Only_MEP         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/ns/wsdl/in-only");
   In_Optional_Out_MEP : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/ns/wsdl/in-opt-out");
   In_Out_MEP          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/ns/wsdl/in-out");
   Out_In_MEP          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/ns/wsdl/out-in");
   Out_Only_MEP : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/ns/wsdl/out-only");
   Out_Optional_In_MEP : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/ns/wsdl/out-opt-in");
   Robust_In_Only_MEP  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/ns/wsdl/robust-in-only");
   Robust_Out_Only_MEP : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/ns/wsdl/robust-out-only");


   In_Label  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("In");
   Out_Label : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Out");

   --------------------
   --  SOAP Binding  --
   --------------------

   SOAP_Binding_Type : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("http://www.w3.org/ns/wsdl/soap");

   SOAP_Namespace_URI : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("http://www.w3.org/ns/wsdl/soap");

   Action_Attribute         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("action");
   MEP_Attribute         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("mep");
   MEP_Default_Attribute : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("mepDefault");
   Protocol_Attribute    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("protocol");
   Version_Attribute     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("version");

   SOAP_Version_12_Literal : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("1.2");

end WSDL.Constants;
