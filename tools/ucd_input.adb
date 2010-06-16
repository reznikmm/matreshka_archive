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

package body Ucd_Input is

   use Matreshka.Internals.Unicode;

   procedure Parse_Code_Point_Range
    (Text       : String;
     First_Code : out Code_Point;
     Last_Code  : out Code_Point);

   -----------
   -- Close --
   -----------

   procedure Close (File : in out File_Type) is
   begin
      Ada.Text_IO.Close (File.File);
   end Close;

   -----------------
   -- End_Of_Data --
   -----------------

   function End_Of_Data (File : File_Type) return Boolean is
   begin
      return File.End_Of_Data;
   end End_Of_Data;

   -----------
   -- Field --
   -----------

   function Field (File : File_Type) return String is
   begin
      return File.Line (File.F_First .. File.F_Last);
   end Field;

   ----------------------
   -- First_Code_Point --
   ----------------------

   function First_Code_Point (File : File_Type)
     return Matreshka.Internals.Unicode.Code_Point
   is
   begin
      return File.First_Code;
   end First_Code_Point;

   ---------------------
   -- Last_Code_Point --
   ---------------------

   function Last_Code_Point (File : File_Type)
     return Matreshka.Internals.Unicode.Code_Point
   is
   begin
      return File.Last_Code;
   end Last_Code_Point;

   ----------------
   -- Next_Field --
   ----------------

   procedure Next_Field (File : in out File_Type) is
   begin
      File.F_First := File.F_Separator + 1;
      File.F_Last  := File.F_First - 1;

      while File.F_Last < File.Last loop
         File.F_Last := File.F_Last + 1;

         if File.Line (File.F_Last) = ';' then
            File.F_Last := File.F_Last - 1;

            exit;
         end if;
      end loop;

      File.F_Separator := File.F_Last + 1;

      while File.Line (File.F_First) = ' ' loop
         File.F_First := File.F_First + 1;
      end loop;

      while File.Line (File.F_Last) = ' ' loop
         File.F_Last := File.F_Last - 1;
      end loop;
   end Next_Field;

   -----------------
   -- Next_Record --
   -----------------

   procedure Next_Record (File : in out File_Type) is
   begin
      File.Last := 0;

      while not Ada.Text_IO.End_Of_File (File.File) loop
         Ada.Text_IO.Get_Line (File.File, File.Line, File.Last);

         if File.Last /= 0 and then File.Line (File.Line'First) /= '#' then
            --  Drop comment

            for J in File.Line'First .. File.Last loop
               if File.Line (J) = '#' then
                  File.Last := J - 1;

                  exit;
               end if;
            end loop;

            File.F_Separator := 0;
            Next_Field (File);
            Parse_Code_Point_Range
             (File.Line (File.F_First .. File.F_Last),
              File.First_Code,
              File.Last_Code);
            Next_Field (File);

            exit;

         else
            File.Last := 0;
         end if;
      end loop;

      if Ada.Text_IO.End_Of_File (File.File) and then File.Last = 0 then
         File.End_Of_Data := True;
      end if;
   end Next_Record;

   ----------
   -- Open --
   ----------

   procedure Open (File : in out File_Type; Name : String) is
   begin
      Ada.Text_IO.Open (File.File, Ada.Text_IO.In_File, Name);
      File.End_Of_Data := False;
      Next_Record (File);
   end Open;

   ----------------------------
   -- Parse_Code_Point_Range --
   ----------------------------

   procedure Parse_Code_Point_Range
    (Text       : String;
     First_Code : out Code_Point;
     Last_Code  : out Code_Point)
   is
      First : Positive := Text'First;
      Last  : Natural;

      procedure Scan;

      ----------
      -- Scan --
      ----------

      procedure Scan is
      begin
         Last := First - 1;

         while Last < Text'Last loop
            Last := Last + 1;

            if Text (Last) not in '0' .. '9'
              and then Text (Last) not in 'A' .. 'F'
            then
               Last := Last - 1;

               exit;
            end if;
         end loop;
      end Scan;

   begin
      Scan;
      First_Code := Code_Point'Value ("16#" & Text (First .. Last) & "#");
      Last_Code := First_Code;

      First := Last + 1;

      if First < Text'Last and then Text (First .. First + 1) = ".." then
         First := First + 2;
         Scan;
         Last_Code := Code_Point'Value ("16#" & Text (First .. Last) & "#");
      end if;
   end Parse_Code_Point_Range;

end Ucd_Input;
