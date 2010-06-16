------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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

with Matreshka.SAX.Attributes;
with Matreshka.SAX.Locators;

package Matreshka.SAX.Content_Handlers is

   pragma Preelaborate;

   type SAX_Content_Handler is limited interface;

   not overriding function Characters
    (Self : not null access SAX_Content_Handler;
     Text : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding function End_Document
    (Self : not null access SAX_Content_Handler)
       return Boolean is abstract;

   not overriding function End_Element
    (Self           : not null access SAX_Content_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding function End_Prefix_Mapping
    (Self   : not null access SAX_Content_Handler;
     Prefix : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding function Error_String
    (Self : not null access SAX_Content_Handler)
       return League.Strings.Universal_String is abstract;

   not overriding function Ignorable_Whitespace
    (Self : not null access SAX_Content_Handler;
     Text : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding function Processing_Instruction
    (Self   : not null access SAX_Content_Handler;
     Target : League.Strings.Universal_String;
     Data   : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding procedure Set_Document_Locator
    (Self    : not null access SAX_Content_Handler;
     Locator : not null Matreshka.SAX.Locators.SAX_Locator_Access) is null;
   --  XXX This is can lead to dangling pointers, so it would be nice to
   --  review and change API.

   not overriding function Skipped_Entity
    (Self : not null access SAX_Content_Handler;
     Name : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding function Start_Document
    (Self : not null access SAX_Content_Handler)
       return Boolean is abstract;

   not overriding function Start_Element
    (Self           : not null access SAX_Content_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : Matreshka.SAX.Attributes.SAX_Attributes)
       return Boolean is abstract;

   not overriding function Start_Prefix_Mapping
    (Self   : not null access SAX_Content_Handler;
     Prefix : League.Strings.Universal_String;
     URI    : League.Strings.Universal_String)
       return Boolean is abstract;

end Matreshka.SAX.Content_Handlers;
