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
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
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
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Matreshka.Strings.Iterators.Characters;

procedure Character_Iterator_Test is

   use Matreshka.Strings;
   use Matreshka.Strings.Iterators.Characters;

   C1 : constant Wide_Wide_String := "123";
   C2 : constant Wide_Wide_String
     := Wide_Wide_Character'Val (16#10000#)
          & "b"
          & Wide_Wide_Character'Val (16#10001#);

   procedure Do_Test (C : Wide_Wide_String);

   procedure Do_Test (C : Wide_Wide_String) is
      S : Universal_String := To_Universal_String (C);
      J : Character_Iterator;
      N : Natural;

   begin
      --  Test forward iterator and backward iterator.

      J.First (S);
      N := C'First;

      while J.Has_Element loop
         if C (N) /= J.Element then
            raise Program_Error;
         end if;

         J.Next;
         N := N + 1;
      end loop;

      J.Previous;
      N := N - 1;

      while J.Has_Element loop
         if C (N) /= J.Element then
            raise Program_Error;
         end if;

         J.Previous;
         N := N - 1;
      end loop;

      --  Test backward iterator and forward iterator.

      J.Last (S);
      N := C'Last;

      while J.Has_Element loop
         if C (N) /= J.Element then
            raise Program_Error;
         end if;

         J.Previous;
         N := N - 1;
      end loop;

      J.Next;
      N := N + 1;

      while J.Has_Element loop
         if C (N) /= J.Element then
            raise Program_Error;
         end if;

         J.Next;
         N := N + 1;
      end loop;
   end Do_Test;

begin
   Do_Test (C1);
   Do_Test (C2);
end Character_Iterator_Test;
