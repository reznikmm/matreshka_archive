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
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Wide_Wide_Text_IO;

with League.Strings.Internals;
with Matreshka.Internals.Regexps.Compiler.Generator;
with Matreshka.Internals.Regexps.Compiler.Parser;
with Matreshka.Internals.Regexps.Engine;

package body League.Regexps is

   use Matreshka.Internals.Regexps;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Regexp_Match) is
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

      return League.Strings.Internals.Create (Capture (Self.Shared, 0));
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

      return League.Strings.Internals.Create (Capture (Self.Shared, Number));
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
      Matreshka.Internals.Regexps.Compiler.Data :=
        League.Strings.Internals.Get_Shared (Expression);
      Matreshka.Internals.Regexps.Compiler.Parser.YYParse;

      Ada.Wide_Wide_Text_IO.Put_Line ("---------- AST ----------");
      Matreshka.Internals.Regexps.Compiler.Dump;

      return Regexp_Pattern'(Ada.Finalization.Controlled with null record);
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

   ----------------
   -- Find_Match --
   ----------------

   function Find_Match
    (Self   : Regexp_Pattern'Class;
     String : League.Strings.Universal_String'Class)
       return Regexp_Match
   is
      P : Matreshka.Internals.Regexps.Engine.Instruction_Array :=
        Matreshka.Internals.Regexps.Compiler.Generator.Generate;

   begin
      Ada.Wide_Wide_Text_IO.Put_Line ("---------- Code ----------");
      Matreshka.Internals.Regexps.Engine.Dump (P);

      return
        Regexp_Match'
         (Ada.Finalization.Controlled with
            Shared => Matreshka.Internals.Regexps.Engine.Execute
                       (P,
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

   function Last_Index (Self : Regexp_Match'Class) return Positive is
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
