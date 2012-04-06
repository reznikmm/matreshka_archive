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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Elements;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.Utp_Attributes;
with AMF.UML.Namespaces;
with AMF.UML.Properties;
with AMF.UML.Value_Specifications;
with AMF.Visitors.Utp_Iterators;
with AMF.Visitors.Utp_Visitors;
with League.Strings.Internals;

package body AMF.Internals.Utp_Coding_Rules is

   ----------------------------------
   -- Get_Base_Value_Specification --
   ----------------------------------

   overriding function Get_Base_Value_Specification
    (Self : not null access constant Utp_Coding_Rule_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is
   begin
      return
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.Utp_Attributes.Internal_Get_Base_Value_Specification
             (Self.Element)));
   end Get_Base_Value_Specification;

   ----------------------------------
   -- Set_Base_Value_Specification --
   ----------------------------------

   overriding procedure Set_Base_Value_Specification
    (Self : not null access Utp_Coding_Rule_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is
   begin
      AMF.Internals.Tables.Utp_Attributes.Internal_Set_Base_Value_Specification
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Base_Value_Specification;

   ------------------------
   -- Get_Base_Namespace --
   ------------------------

   overriding function Get_Base_Namespace
    (Self : not null access constant Utp_Coding_Rule_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      return
        AMF.UML.Namespaces.UML_Namespace_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.Utp_Attributes.Internal_Get_Base_Namespace
             (Self.Element)));
   end Get_Base_Namespace;

   ------------------------
   -- Set_Base_Namespace --
   ------------------------

   overriding procedure Set_Base_Namespace
    (Self : not null access Utp_Coding_Rule_Proxy;
     To   : AMF.UML.Namespaces.UML_Namespace_Access) is
   begin
      AMF.Internals.Tables.Utp_Attributes.Internal_Set_Base_Namespace
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Base_Namespace;

   -----------------------
   -- Get_Base_Property --
   -----------------------

   overriding function Get_Base_Property
    (Self : not null access constant Utp_Coding_Rule_Proxy)
       return AMF.UML.Properties.UML_Property_Access is
   begin
      return
        AMF.UML.Properties.UML_Property_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.Utp_Attributes.Internal_Get_Base_Property
             (Self.Element)));
   end Get_Base_Property;

   -----------------------
   -- Set_Base_Property --
   -----------------------

   overriding procedure Set_Base_Property
    (Self : not null access Utp_Coding_Rule_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access) is
   begin
      AMF.Internals.Tables.Utp_Attributes.Internal_Set_Base_Property
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Base_Property;

   ----------------
   -- Get_Coding --
   ----------------

   overriding function Get_Coding
    (Self : not null access constant Utp_Coding_Rule_Proxy)
       return League.Strings.Universal_String is
   begin
      null;
      return
        League.Strings.Internals.Create
         (AMF.Internals.Tables.Utp_Attributes.Internal_Get_Coding (Self.Element));
   end Get_Coding;

   ----------------
   -- Set_Coding --
   ----------------

   overriding procedure Set_Coding
    (Self : not null access Utp_Coding_Rule_Proxy;
     To   : League.Strings.Universal_String) is
   begin
      AMF.Internals.Tables.Utp_Attributes.Internal_Set_Coding
       (Self.Element,
        League.Strings.Internals.Internal (To));
   end Set_Coding;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant Utp_Coding_Rule_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.Utp_Visitors.Utp_Visitor'Class then
         AMF.Visitors.Utp_Visitors.Utp_Visitor'Class
          (Visitor).Enter_Coding_Rule
            (AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant Utp_Coding_Rule_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.Utp_Visitors.Utp_Visitor'Class then
         AMF.Visitors.Utp_Visitors.Utp_Visitor'Class
          (Visitor).Leave_Coding_Rule
            (AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant Utp_Coding_Rule_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.Utp_Iterators.Utp_Iterator'Class then
         AMF.Visitors.Utp_Iterators.Utp_Iterator'Class
          (Iterator).Visit_Coding_Rule
            (Visitor,
             AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.Utp_Coding_Rules;
