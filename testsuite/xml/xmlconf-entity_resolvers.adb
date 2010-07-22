------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                            Testsuite Component                           --
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
with Ada.Characters.Conversions;

with Read_File;

package body XMLConf.Entity_Resolvers is

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Entity_Resolver)
       return League.Strings.Universal_String is
   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

   --------------------
   -- Resolve_Entity --
   --------------------

   overriding procedure Resolve_Entity
    (Self      : in out Entity_Resolver;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Source    : out XML.SAX.Input_Sources.SAX_Input_Source_Access;
     Success   : in out Boolean) is
   begin
      Source := new XML.SAX.Input_Sources.SAX_Input_Source;
      Source.Set_String
       (Read_File
         (Ada.Characters.Conversions.To_String
           (System_Id.To_Wide_Wide_String)));
   end Resolve_Entity;

end XMLConf.Entity_Resolvers;
