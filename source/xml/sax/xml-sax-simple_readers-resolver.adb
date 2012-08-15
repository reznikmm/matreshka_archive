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
with XML.SAX.Input_Sources.Streams.Files;

package body XML.SAX.Simple_Readers.Resolver is

   File_Scheme : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("file");

   --------------------
   -- Resolve_Entity --
   --------------------

   procedure Resolve_Entity
    (Public_Id     : League.Strings.Universal_String;
     Base_URI      : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Source        : out XML.SAX.Input_Sources.SAX_Input_Source_Access;
     Success       : in out Boolean;
     Error_Message : in out League.Strings.Universal_String)
   is
      pragma Unreferenced (Public_Id);
      --  XXX PublicId is not used to resolve extental entity right now. This
      --  can be changed in the future, when built-in entity resolver will be
      --  able to use XML Catalogs to resolve entities.

      use type League.Strings.Universal_String;

      Absolute_System_Id : constant League.IRIs.IRI
        := League.IRIs.From_Universal_String
            (Base_URI).Resolve
              (League.IRIs.From_Universal_String (System_Id));

   begin
      if Absolute_System_Id.Scheme = File_Scheme then
         Source := new XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
         XML.SAX.Input_Sources.Streams.Files.File_Input_Source'Class
          (Source.all).Open_By_URI (Absolute_System_Id.To_Universal_String);

      else
         Source := null;
         Success := False;
         Error_Message :=
           League.Strings.To_Universal_String ("unsupported IRI scheme");
      end if;
   end Resolve_Entity;

end XML.SAX.Simple_Readers.Resolver;
