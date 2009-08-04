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

package body Unicode_Data_File_Parsers is

   -----------
   -- Close --
   -----------

   not overriding procedure Close (Self : in out Unicode_Data_File_Parser) is
   begin
      if Ada.Text_IO.Is_Open (Self.File) then
         Ada.Text_IO.Close (Self.File);
      end if;
   end Close;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Unicode_Data_File_Parser) is
   begin
      Self.Close;
   end Finalize;

   ----------
   -- Open --
   ----------

   not overriding procedure Open
    (Self      : in out Unicode_Data_File_Parser;
     File_Name : String)
   is
   begin
      Ada.Text_IO.Open (Self.File, Ada.Text_IO.In_File, File_Name);
   end Open;

   -----------
   -- Parse --
   -----------

   not overriding procedure Parse (Self : in out Unicode_Data_File_Parser) is
      Separator : Natural;
      First     : Positive;
      Last      : Natural;
      Fields    : String_Vectors.Vector;
      Section   : Boolean := False;

   begin
      while not Ada.Text_IO.End_Of_File (Self.File) loop
         Ada.Text_IO.Get_Line (Self.File, Self.Line, Self.Last);

         --  Strip comment

         for J in 1 .. Self.Last loop
            if Self.Line (J) = '#' then
               Self.Last := J - 1;

               exit;
            end if;
         end loop;

         --  Strip trailing spaces

         for J in reverse 1 .. Self.Last loop
            if Self.Line (J) /= ' ' then
               Self.Last := J;

               exit;
            end if;
         end loop;

         if Self.Last /= 0 then
            if Self.Line (1) = '@' then
               if Section then
                  Unicode_Data_File_Parser'Class (Self).End_Section;
               end if;

               Unicode_Data_File_Parser'Class (Self).Start_Section
                (Self.Line (2 .. Self.Last));

               Section := True;

            else
               Separator := 0;
               Fields.Clear;

               while Separator <= Self.Last loop
                  First := Separator + 1;
                  Last  := First - 1;

                  while Last < Self.Last loop
                     Last := Last + 1;

                     if Self.Line (Last) = ';' then
                        Last := Last - 1;

                        exit;
                     end if;
                  end loop;

                  Separator := Last + 1;

                  while Self.Line (First) = ' ' loop
                     First := First + 1;
                  end loop;

                  while Self.Line (Last) = ' ' loop
                     Last := Last - 1;
                  end loop;

                  Fields.Append (Self.Line (First .. Last));
               end loop;

               Unicode_Data_File_Parser'Class (Self).Data (Fields);
            end if;
         end if;
      end loop;

      if Section then
         Unicode_Data_File_Parser'Class (Self).End_Section;
      end if;
   end Parse;

end Unicode_Data_File_Parsers;
