------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
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
with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Simple_Readers;

with Generator.Type_Mapping.Handlers;

package body Generator.Type_Mapping is

   --------------
   -- Ada_Type --
   --------------

   function Ada_Type
    (Element        : not null access AMF.CMOF.Elements.CMOF_Element'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String is
   begin
      return Mapping.Element (Element).Mapping (Representation).Ada_Type;
   end Ada_Type;

   ------------------
   -- Load_Mapping --
   ------------------

   procedure Load_Mapping is
      Reader  : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
      Input   : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
      Handler : aliased Generator.Type_Mapping.Handlers.Mapping_Handler;

   begin
      Input.Open ("mapping.xml");
      Reader.Set_Content_Handler (Handler'Unchecked_Access);
--      Reader.Set_Error_Handler (Handler'Unchecked_Access);
      Reader.Parse (Input'Unchecked_Access);
   end Load_Mapping;

   -----------------
   -- Member_Name --
   -----------------

   function Member_Name
    (Element        : not null access AMF.CMOF.Elements.CMOF_Element'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String is
   begin
      return Mapping.Element (Element).Mapping (Representation).Member_Name;
   end Member_Name;

end Generator.Type_Mapping;
