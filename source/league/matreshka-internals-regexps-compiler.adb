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
with Matreshka.Internals.Regexps.Compiler.Parser;

package body Matreshka.Internals.Regexps.Compiler is

   use Matreshka.Internals.Regexps.Compiler.Parser;

   ---------
   -- Add --
   ---------

   procedure Add
    (Pattern : in out Shared_Pattern;
     Class   : Positive;
     Member  : Positive) is
   begin
      if Pattern.AST (Class).Members = 0 then
         Pattern.AST (Class).Members := Member;

      else
         Attach (Pattern, Pattern.AST (Class).Members, Member);
      end if;
   end Add;

   ------------
   -- Attach --
   ------------

   procedure Attach
    (Pattern : in out Shared_Pattern;
     Head    : Positive;
     Node    : Positive)
   is
      J : Positive := Head;

   begin
      while Pattern.AST (J).Next /= 0 loop
         J := Pattern.AST (J).Next;
      end loop;

      Pattern.AST (J).Next := Node;
   end Attach;

   -------------
   -- Compile --
   -------------

   function Compile
    (Expression : not null Matreshka.Internals.Strings.Shared_String_Access)
       return not null Shared_Pattern_Access
   is
      State : aliased Compiler_State;

   begin
      State.Data                 := Expression;
      State.Character_Class_Mode := False;

      return YYParse (State'Access);
   end Compile;

   -------------
   -- YYError --
   -------------

   procedure YYError
    (Self : not null access Compiler_State; Error : YY_Errors; Index : Natural) is
   begin
      if Self.YY_Error.Error = No_Error then
         Self.YY_Error := (Error, Index);
      end if;
   end YYError;

end Matreshka.Internals.Regexps.Compiler;
