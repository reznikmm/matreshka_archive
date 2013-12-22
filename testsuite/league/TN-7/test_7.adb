------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                            Testsuite Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  Check whether regular expression compiler detect that expression use
--  delimiters of different styles.
------------------------------------------------------------------------------
with League.Application;
with League.Regexps;
with League.Strings;

procedure Main is
   use League.Regexps;
   use League.Strings;

   P1 : constant Universal_String := To_Universal_String ("\p{upper:]");
   P2 : constant Universal_String := To_Universal_String ("[:upper}");
   P3 : constant Universal_String := To_Universal_String ("\P{upper:]");
   P4 : constant Universal_String := To_Universal_String ("[:upper}");
   --  Constants are needed to workaround bug with to early finalization of
   --  temporary objects in GNAT GPL 2013 and GNAT Pro 7.2.
   R  : Regexp_Pattern;

begin
   begin
      R := Compile (P1);

      raise Program_Error;

   exception
      when Constraint_Error =>
         null;
   end;

   begin
      R := Compile (P2);

      raise Program_Error;

   exception
      when Constraint_Error =>
         null;
   end;

   begin
      R := Compile (P3);

      raise Program_Error;

   exception
      when Constraint_Error =>
         null;
   end;

   begin
      R := Compile (P4);

      raise Program_Error;

   exception
      when Constraint_Error =>
         null;
   end;
end Main;
