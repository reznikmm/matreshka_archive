------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
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
private with Ada.Finalization;

with League.Strings;
private with Matreshka.Internals.Regexps;

package League.Regexps is

   pragma Preelaborate;

   type Regexp_Pattern is tagged private;
   pragma Preelaborable_Initialization (Regexp_Pattern);

   type Regexp_Match is tagged private;
   pragma Preelaborable_Initialization (Regexp_Match);

   --------------------
   -- Regexp_Pattern --
   --------------------

   function Compile
    (Expression : League.Strings.Universal_String'Class) return Regexp_Pattern;

   function Find_Match
    (Self   : Regexp_Pattern'Class;
     String : League.Strings.Universal_String'Class)
       return Regexp_Match;

   ------------------
   -- Regexp_Match --
   ------------------

   function Is_Matched (Self : Regexp_Match'Class) return Boolean;

   function Capture_Count (Self : Regexp_Match'Class) return Natural;

   function Capture
    (Self : Regexp_Match'Class) return League.Strings.Universal_String;

   function Capture
    (Self   : Regexp_Match'Class;
     Number : Positive) return League.Strings.Universal_String;

   function First_Index (Self : Regexp_Match'Class) return Positive;

   function First_Index
    (Self   : Regexp_Match'Class;
     Number : Positive) return Natural;

   function Last_Index (Self : Regexp_Match'Class) return Natural;

   function Last_Index
    (Self   : Regexp_Match'Class;
     Number : Positive) return Natural;

private

   type Regexp_Pattern is new Ada.Finalization.Controlled with record
      Shared : Matreshka.Internals.Regexps.Shared_Pattern_Access
        := Matreshka.Internals.Regexps.Empty_Shared_Pattern'Access;
   end record;

   overriding procedure Adjust (Self : in out Regexp_Pattern);
   overriding procedure Finalize (Self : in out Regexp_Pattern);

   type Regexp_Match is new Ada.Finalization.Controlled with record
      Shared : Matreshka.Internals.Regexps.Shared_Match_Access
        := Matreshka.Internals.Regexps.Empty_Shared_Match'Access;
   end record;

   overriding procedure Adjust (Self : in out Regexp_Match);
   overriding procedure Finalize (Self : in out Regexp_Match);

end League.Regexps;
