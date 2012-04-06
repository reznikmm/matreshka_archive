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
limited with AMF.UML.Elements;

package AMF.Utp.Managed_Elements is

   pragma Preelaborate;

   type Utp_Managed_Element is limited interface;

   type Utp_Managed_Element_Access is
     access all Utp_Managed_Element'Class;
   for Utp_Managed_Element_Access'Storage_Size use 0;

   not overriding function Get_Base_Element
    (Self : not null access constant Utp_Managed_Element)
       return AMF.UML.Elements.UML_Element_Access is abstract;
   --  Getter of ManagedElement::base_Element.
   --

   not overriding procedure Set_Base_Element
    (Self : not null access Utp_Managed_Element;
     To   : AMF.UML.Elements.UML_Element_Access) is abstract;
   --  Setter of ManagedElement::base_Element.
   --

   not overriding function Get_Owner
    (Self : not null access constant Utp_Managed_Element)
       return AMF.Optional_String is abstract;
   --  Getter of ManagedElement::owner.
   --

   not overriding procedure Set_Owner
    (Self : not null access Utp_Managed_Element;
     To   : AMF.Optional_String) is abstract;
   --  Setter of ManagedElement::owner.
   --

   not overriding function Get_Description
    (Self : not null access constant Utp_Managed_Element)
       return AMF.Optional_String is abstract;
   --  Getter of ManagedElement::description.
   --

   not overriding procedure Set_Description
    (Self : not null access Utp_Managed_Element;
     To   : AMF.Optional_String) is abstract;
   --  Setter of ManagedElement::description.
   --

   not overriding function Get_Version
    (Self : not null access constant Utp_Managed_Element)
       return AMF.Optional_String is abstract;
   --  Getter of ManagedElement::version.
   --

   not overriding procedure Set_Version
    (Self : not null access Utp_Managed_Element;
     To   : AMF.Optional_String) is abstract;
   --  Setter of ManagedElement::version.
   --

   not overriding function Get_Criticality
    (Self : not null access constant Utp_Managed_Element)
       return AMF.Optional_String is abstract;
   --  Getter of ManagedElement::criticality.
   --

   not overriding procedure Set_Criticality
    (Self : not null access Utp_Managed_Element;
     To   : AMF.Optional_String) is abstract;
   --  Setter of ManagedElement::criticality.
   --

end AMF.Utp.Managed_Elements;
