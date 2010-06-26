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
with League.Strings.Internals;
with Matreshka.Internals.Regexps.Compiler.Generator;
with Matreshka.Internals.Regexps.Engine.Pike;

package body League.Regexps is

   use Matreshka.Internals.Regexps;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Regexp_Match) is
   begin
      Reference (Self.Shared);
   end Adjust;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Regexp_Pattern) is
   begin
      Reference (Self.Shared);
   end Adjust;

   -------------
   -- Capture --
   -------------

   function Capture
    (Self : Regexp_Match'Class) return League.Strings.Universal_String is
   begin
      if not Self.Shared.Is_Matched then
         raise Constraint_Error;
      end if;

      return League.Strings.Internals.Wrap (Capture (Self.Shared, 0));
   end Capture;

   -------------
   -- Capture --
   -------------

   function Capture
    (Self   : Regexp_Match'Class;
     Number : Positive) return League.Strings.Universal_String is
   begin
      if not Self.Shared.Is_Matched
        or else Self.Shared.Number < Number
      then
         raise Constraint_Error;
      end if;

      return League.Strings.Internals.Wrap (Capture (Self.Shared, Number));
   end Capture;

   -------------------
   -- Capture_Count --
   -------------------

   function Capture_Count (Self : Regexp_Match'Class) return Natural is
   begin
      if not Self.Shared.Is_Matched then
         raise Constraint_Error;
      end if;

      return Self.Shared.Number;
   end Capture_Count;

   -------------
   -- Compile --
   -------------

   function Compile
    (Expression : League.Strings.Universal_String'Class)
       return Regexp_Pattern is
   begin
      return
        Regexp_Pattern'
         (Ada.Finalization.Controlled with
            Shared =>
              Matreshka.Internals.Regexps.Compiler.Compile
               (League.Strings.Internals.Get_Shared (Expression)));
   end Compile;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Regexp_Match) is
   begin
      --  Finalize can be called more than once (as specified by language
      --  standard), thus implementation should provide protection from
      --  multiple finalization.

      if Self.Shared /= null then
         Dereference (Self.Shared);
      end if;
   end Finalize;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Regexp_Pattern) is
   begin
      --  Finalize can be called more than once (as specified by language
      --  standard), thus implementation should provide protection from
      --  multiple finalization.

      if Self.Shared /= null then
         Dereference (Self.Shared);
      end if;
   end Finalize;

   ----------------
   -- Find_Match --
   ----------------

   function Find_Match
    (Self   : Regexp_Pattern'Class;
     String : League.Strings.Universal_String'Class)
       return Regexp_Match is
   begin
      return
        Regexp_Match'
         (Ada.Finalization.Controlled with
            Shared =>
              Matreshka.Internals.Regexps.Engine.Pike.Execute
               (Matreshka.Internals.Regexps.Compiler.Generator.Generate
                 (Self.Shared),
                League.Strings.Internals.Get_Shared (String)));
   end Find_Match;

   -----------------
   -- First_Index --
   -----------------

   function First_Index (Self : Regexp_Match'Class) return Positive is
   begin
      if not Self.Shared.Is_Matched then
         raise Constraint_Error;
      end if;

      return Self.Shared.Slices (0).First_Index;
   end First_Index;

   -----------------
   -- First_Index --
   -----------------

   function First_Index
    (Self   : Regexp_Match'Class;
     Number : Positive) return Natural is
   begin
      if not Self.Shared.Is_Matched
        or else Self.Shared.Number < Number
      then
         raise Constraint_Error;
      end if;

      return Self.Shared.Slices (Number).First_Index;
   end First_Index;

   ----------------
   -- Is_Matched --
   ----------------

   function Is_Matched (Self : Regexp_Match'Class) return Boolean is
   begin
      return Self.Shared.Is_Matched;
   end Is_Matched;

   ----------------
   -- Last_Index --
   ----------------

   function Last_Index (Self : Regexp_Match'Class) return Natural is
   begin
      if not Self.Shared.Is_Matched then
         raise Constraint_Error;
      end if;

      return Self.Shared.Slices (0).Next_Index - 1;
   end Last_Index;

   ----------------
   -- Last_Index --
   ----------------

   function Last_Index
    (Self   : Regexp_Match'Class;
     Number : Positive) return Natural is
   begin
      if not Self.Shared.Is_Matched
        or else Self.Shared.Number < Number
      then
         raise Constraint_Error;
      end if;

      return Self.Shared.Slices (Number).Next_Index - 1;
   end Last_Index;

end League.Regexps;
