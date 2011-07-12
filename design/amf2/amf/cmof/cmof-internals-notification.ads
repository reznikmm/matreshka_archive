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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  Helper subprograms for element modification notification.
------------------------------------------------------------------------------
with League.Strings;
with Matreshka.Internals.Strings;

with AMF.CMOF;

package CMOF.Internals.Notification is

   procedure Notify_Attribute_Set
    (Element   : CMOF.CMOF_Element;
     Property  : CMOF.CMOF_Property;
     Old_Value : Boolean;
     New_Value : Boolean);

   procedure Notify_Attribute_Set
    (Element   : CMOF.CMOF_Element;
     Property  : CMOF.CMOF_Property;
     Old_Value : League.Strings.Universal_String;
     New_Value : League.Strings.Universal_String);

   procedure Notify_Attribute_Set
    (Element   : CMOF.CMOF_Element;
     Property  : CMOF.CMOF_Property;
     Old_Value : Matreshka.Internals.Strings.Shared_String_Access;
     New_Value : Matreshka.Internals.Strings.Shared_String_Access);

   procedure Notify_Attribute_Set
    (Element   : CMOF.CMOF_Element;
     Property  : CMOF.CMOF_Property;
     Old_Value : AMF.Optional_String;
     New_Value : AMF.Optional_String);

   procedure Notify_Attribute_Set
    (Element   : CMOF.CMOF_Element;
     Property  : CMOF.CMOF_Property;
     Old_Value : AMF.Optional_Integer;
     New_Value : AMF.Optional_Integer);

   procedure Notify_Attribute_Set
    (Element   : CMOF.CMOF_Element;
     Property  : CMOF.CMOF_Property;
     Old_Value : AMF.Optional_Unlimited_Natural;
     New_Value : AMF.Optional_Unlimited_Natural);

   procedure Notify_Attribute_Set
    (Element   : CMOF.CMOF_Element;
     Property  : CMOF.CMOF_Property;
     Old_Value : CMOF.CMOF_Element;
     New_Value : CMOF.CMOF_Element);

   procedure Notify_Attribute_Set
    (Element   : CMOF.CMOF_Element;
     Property  : CMOF.CMOF_Property;
     Old_Value : AMF.CMOF.CMOF_Parameter_Direction_Kind;
     New_Value : AMF.CMOF.CMOF_Parameter_Direction_Kind);

   procedure Notify_Attribute_Set
    (Element   : CMOF.CMOF_Element;
     Property  : CMOF.CMOF_Property;
     Old_Value : AMF.CMOF.Optional_CMOF_Visibility_Kind;
     New_Value : AMF.CMOF.Optional_CMOF_Visibility_Kind);

   procedure Notify_Attribute_Set
    (Element   : CMOF.CMOF_Element;
     Property  : CMOF.CMOF_Property;
     Old_Value : AMF.CMOF.CMOF_Visibility_Kind;
     New_Value : AMF.CMOF.CMOF_Visibility_Kind);

end CMOF.Internals.Notification;
