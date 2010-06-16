------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2009, Vadim Godunko <vgodunko@gmail.com>                     --
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
