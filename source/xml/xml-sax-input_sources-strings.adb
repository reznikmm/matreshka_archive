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
with League.Strings.Internals;
with Matreshka.Internals.Strings.Operations;

package body XML.SAX.Input_Sources.Strings is

   ----------
   -- Next --
   ----------

   overriding procedure Next
    (Self        : in out String_Input_Source;
     Buffer      : in out
       not null Matreshka.Internals.Strings.Shared_String_Access;
     End_Of_Data : out Boolean) is
   begin
      Matreshka.Internals.Strings.Operations.Append
       (Buffer,
        League.Strings.Internals.Get_Shared (Self.String));
      Self.String.Clear;
      End_Of_Data := True;
   end Next;

   ---------------
   -- Public_Id --
   ---------------

   overriding function Public_Id
    (Self : String_Input_Source) return League.Strings.Universal_String is
   begin
      return Self.Public_Id;
   end Public_Id;

   -----------
   -- Reset --
   -----------

   overriding procedure Reset
    (Self     : in out String_Input_Source;
     Version  : League.Strings.Universal_String;
     Encoding : League.Strings.Universal_String;
     Rescan   : out Boolean;
     Success  : out Boolean)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Version);
      pragma Unreferenced (Encoding);

   begin
      Rescan := False;
      Success := True;
   end Reset;

   -------------------
   -- Set_Public_Id --
   -------------------

   not overriding procedure Set_Public_Id
    (Self : in out String_Input_Source;
     Id   : League.Strings.Universal_String) is
   begin
      Self.Public_Id := Id;
   end Set_Public_Id;

   ----------------
   -- Set_String --
   ----------------

   not overriding procedure Set_String
    (Self   : in out String_Input_Source;
     String : League.Strings.Universal_String) is
   begin
      Self.String := String;
   end Set_String;

   -------------------
   -- Set_System_Id --
   -------------------

   not overriding procedure Set_System_Id
    (Self : in out String_Input_Source;
     Id   : League.Strings.Universal_String) is
   begin
      Self.System_Id := Id;
   end Set_System_Id;

   -----------------
   -- Set_Version --
   -----------------

   overriding procedure Set_Version
    (Self    : in out String_Input_Source;
     Version : League.Strings.Universal_String) is
   begin
      Self.Version := Version;
   end Set_Version;

   ---------------
   -- System_Id --
   ---------------

   overriding function System_Id
    (Self : String_Input_Source) return League.Strings.Universal_String is
   begin
      return Self.System_Id;
   end System_Id;

end XML.SAX.Input_Sources.Strings;
