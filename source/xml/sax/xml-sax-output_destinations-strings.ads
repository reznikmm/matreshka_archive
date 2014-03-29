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
-- Copyright © 2013-2014, Vadim Godunko <vgodunko@gmail.com>                --
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

package XML.SAX.Output_Destinations.Strings is

   pragma Preelaborate;

   type String_Output_Destination is
     limited new XML.SAX.Output_Destinations.SAX_Output_Destination
       with private;

   type SAX_Output_Destination is limited interface;

   function Get_Text
    (Self : String_Output_Destination)
       return League.Strings.Universal_String;
   --  Returns accumulated text.

   procedure Clear (Self : in out String_Output_Destination);
   --  Reset Self to empty state

   overriding function Get_Encoding
    (Self : String_Output_Destination)
       return League.Strings.Universal_String;
   --  Returns character encoding used to convert Unicode character code point
   --  into the external items.

   overriding procedure Put
    (Self : in out String_Output_Destination;
     Text : League.Strings.Universal_String);
   overriding procedure Put
    (Self : in out String_Output_Destination;
     Text : Wide_Wide_String);
   overriding procedure Put
    (Self : in out String_Output_Destination;
     Char : League.Characters.Universal_Character);
   overriding procedure Put
    (Self : in out String_Output_Destination;
     Char : Wide_Wide_Character);

private

   type String_Output_Destination is
     limited new XML.SAX.Output_Destinations.SAX_Output_Destination with record
      Text : League.Strings.Universal_String;
   end record;

end XML.SAX.Output_Destinations.Strings;
