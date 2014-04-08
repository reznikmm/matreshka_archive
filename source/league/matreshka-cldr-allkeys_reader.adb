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
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Wide_Wide_Text_IO;

with Matreshka.Internals.Unicode.Ucd;

package body Matreshka.CLDR.AllKeys_Reader is

   function Parse_Code_Points
    (Image : Wide_Wide_String;
     Index : in out Positive)
       return Matreshka.CLDR.Collation_Data.Code_Point_Array_Access;

   function Parse_Collation_Elements
    (Image : Wide_Wide_String;
     Index : in out Positive)
       return Matreshka.CLDR.Collation_Data.Collation_Element_Array_Access;

   procedure Parse_Code_Point
    (Buffer  : Wide_Wide_String;
     Index   : in out Positive;
     Last    : Natural;
     Value   : out Matreshka.Internals.Unicode.Code_Point;
     Success : out Boolean);
   --  Parses single collation element.

   procedure Parse_Collation_Element
    (Buffer  : Wide_Wide_String;
     Index   : in out Positive;
     Last    : Natural;
     Value   : out Matreshka.CLDR.Collation_Data.Collation_Element;
     Success : out Boolean);
   --  Parses single collation element.

   procedure Parse_Collation_Weight
    (Buffer  : Wide_Wide_String;
     Index   : in out Positive;
     Last    : Natural;
     Value   : out Matreshka.Internals.Unicode.Ucd.Collation_Weight;
     Success : out Boolean);
   --  Parses hexadecimal collation weight value.

   procedure Skip_Spaces
    (Buffer : Wide_Wide_String;
     Index  : in out Positive;
     Last   : Natural);
   --  Skip spaces and comments.

   -----------------------
   -- Load_AllKeys_File --
   -----------------------

   function Load_AllKeys_File
    (File_Name : League.Strings.Universal_String)
       return Matreshka.CLDR.Collation_Data.Collation_Information_Access
   is
      use type Matreshka.CLDR.Collation_Data.Collation_Record_Access;

      Result         :
        Matreshka.CLDR.Collation_Data.Collation_Information_Access;
      File           : Ada.Wide_Wide_Text_IO.File_Type;
      Buffer         : Wide_Wide_String (1 .. 1024);
      Last           : Natural;
      Current_Record : Matreshka.CLDR.Collation_Data.Collation_Record_Access;
      Aux_Record     : Matreshka.CLDR.Collation_Data.Collation_Record_Access;
      Index          : Positive;

   begin
      Result := new Matreshka.CLDR.Collation_Data.Collation_Information;

      Ada.Wide_Wide_Text_IO.Open
       (File,
        Ada.Wide_Wide_Text_IO.In_File,
        File_Name.To_UTF_8_String,
        "wcem=8");

      while not Ada.Wide_Wide_Text_IO.End_Of_File (File) loop
         Index := Buffer'First;
         Ada.Wide_Wide_Text_IO.Get_Line (File, Buffer, Last);

         Skip_Spaces (Buffer, Index, Last);

         if Index > Last then
            --  Skip empty or comment line.

            null;

         elsif Buffer (Index) = '@' then
            --  Ignore @version line.

            null;

         else
            Current_Record :=
              new Matreshka.CLDR.Collation_Data.Collation_Record;
            Current_Record.Contractors :=
              Parse_Code_Points (Buffer (Index .. Last), Index);

            Index := Index + 1;

            Current_Record.Collations :=
              Parse_Collation_Elements (Buffer (Index .. Last), Index);

            --  Link collation is sorting order.

            if Result.Lower_Record = null then
               Result.Lower_Record := Current_Record;
               Result.Greater_Record := Current_Record;

            else
               Current_Record.Less_Or_Equal := Result.Greater_Record;
               Result.Greater_Record.Greater_Or_Equal := Current_Record;
               Result.Greater_Record := Current_Record;
            end if;

            --  Link collation into the list of code point's collation.

            Aux_Record := Result.Collations (Current_Record.Contractors (1));

            if Aux_Record = null then
               Result.Collations (Current_Record.Contractors (1)) :=
                 Current_Record;

            else
               while Aux_Record.Next /= null loop
                  Aux_Record := Aux_Record.Next;
               end loop;

               Aux_Record.Next := Current_Record;
            end if;
         end if;
      end loop;

      Ada.Wide_Wide_Text_IO.Close (File);

      return Result;
   end Load_AllKeys_File;

   ----------------------
   -- Parse_Code_Point --
   ----------------------

   procedure Parse_Code_Point
    (Buffer  : Wide_Wide_String;
     Index   : in out Positive;
     Last    : Natural;
     Value   : out Matreshka.Internals.Unicode.Code_Point;
     Success : out Boolean)
   is
      use type Matreshka.Internals.Unicode.Code_Point;

   begin
      Success := False;
      Value   := 0;

      Skip_Spaces (Buffer, Index, Last);

      while Index <= Last loop
         case Buffer (Index) is
            when '0' .. '9' =>
               Success := True;
               Value :=
                 Value * 16
                   + Wide_Wide_Character'Pos (Buffer (Index))
                   - Wide_Wide_Character'Pos ('0');

            when 'A' .. 'F' =>
               Success := True;
               Value :=
                 Value * 16
                   + Wide_Wide_Character'Pos (Buffer (Index))
                   - Wide_Wide_Character'Pos ('A')
                   + 10;

            when 'a' .. 'f' =>
               Success := True;
               Value :=
                 Value * 16
                   + Wide_Wide_Character'Pos (Buffer (Index))
                   - Wide_Wide_Character'Pos ('a')
                   + 10;

            when others =>
               exit;
         end case;

         Index := Index + 1;
      end loop;
   end Parse_Code_Point;

   -----------------------
   -- Parse_Code_Points --
   -----------------------

   function Parse_Code_Points
    (Image : Wide_Wide_String;
     Index : in out Positive)
       return Matreshka.CLDR.Collation_Data.Code_Point_Array_Access
   is
      Result  : Matreshka.CLDR.Collation_Data.Code_Point_Array (1 .. 3);
      Used    : Natural := 0;
      Success : Boolean;

   begin
      loop
         Skip_Spaces (Image, Index, Image'Last);

         exit when Index > Image'Last;

         exit when Image (Index) = ';';

         Parse_Code_Point
          (Image, Index, Image'Last, Result (Used + 1), Success);

         if not Success then
            raise Program_Error;
         end if;

         Used := Used + 1;
      end loop;

      return
        new Matreshka.CLDR.Collation_Data.Code_Point_Array'
             (Result (1 .. Used));
   end Parse_Code_Points;

   -----------------------------
   -- Parse_Collation_Element --
   -----------------------------

   procedure Parse_Collation_Element
    (Buffer  : Wide_Wide_String;
     Index   : in out Positive;
     Last    : Natural;
     Value   : out Matreshka.CLDR.Collation_Data.Collation_Element;
     Success : out Boolean) is
   begin
      Value   := (False, 0, 0, 0, 0);
      Success := False;

      if Index > Last or else Buffer (Index) /= '[' then
         return;
      end if;

      Index := Index + 1;

      case Buffer (Index) is
         when '*' =>
            Value.Is_Variable := True;

         when '.' =>
            Value.Is_Variable := False;

         when others =>
            return;
      end case;

      Index := Index + 1;

      Parse_Collation_Weight (Buffer, Index, Last, Value.Primary, Success);

      if not Success then
         return;
      end if;

      if Buffer (Index) /= '.' then
         Success := False;

         return;
      end if;

      Index := Index + 1;

      Parse_Collation_Weight (Buffer, Index, Last, Value.Secondary, Success);

      if not Success then
         return;
      end if;

      if Buffer (Index) /= '.' then
         Success := False;

         return;
      end if;

      Index := Index + 1;

      Parse_Collation_Weight (Buffer, Index, Last, Value.Trinary, Success);

      if not Success then
         return;
      end if;

      if Buffer (Index) /= '.' then
         Success := False;

         return;
      end if;

      Index := Index + 1;

      Parse_Code_Point (Buffer, Index, Last, Value.Code, Success);

      if not Success then
         return;
      end if;

      if Buffer (Index) /= ']' then
         Success := False;

         return;
      end if;

      Index := Index + 1;
   end Parse_Collation_Element;

   ------------------------------
   -- Parse_Collation_Elements --
   ------------------------------

   function Parse_Collation_Elements
    (Image : Wide_Wide_String;
     Index : in out Positive)
       return Matreshka.CLDR.Collation_Data.Collation_Element_Array_Access
   is
      Result  :
        Matreshka.CLDR.Collation_Data.Collation_Element_Array (1 .. 18);
      Used    : Natural := 0;
      Success : Boolean;

   begin
      loop
         Skip_Spaces (Image, Index, Image'Last);

         exit when Index > Image'Last;

         Parse_Collation_Element
          (Image, Index, Image'Last, Result (Used + 1), Success);

         if not Success then
            raise Program_Error;
         end if;

         Used := Used + 1;
      end loop;

      return
        new Matreshka.CLDR.Collation_Data.Collation_Element_Array'
             (Result (1 .. Used));
   end Parse_Collation_Elements;

   ----------------------------
   -- Parse_Collation_Weight --
   ----------------------------

   procedure Parse_Collation_Weight
    (Buffer  : Wide_Wide_String;
     Index   : in out Positive;
     Last    : Natural;
     Value   : out Matreshka.Internals.Unicode.Ucd.Collation_Weight;
     Success : out Boolean)
   is
      use type Matreshka.Internals.Unicode.Ucd.Collation_Weight;

   begin
      Value   := 0;
      Success := False;

      while Index <= Last loop
         case Buffer (Index) is
            when '0' .. '9' =>
               Success := True;
               Value :=
                 Value * 16
                   + Wide_Wide_Character'Pos (Buffer (Index))
                   - Wide_Wide_Character'Pos ('0');

            when 'A' .. 'F' =>
               Success := True;
               Value :=
                 Value * 16
                   + Wide_Wide_Character'Pos (Buffer (Index))
                   - Wide_Wide_Character'Pos ('A')
                   + 10;

            when 'a' .. 'f' =>
               Success := True;
               Value :=
                 Value * 16
                   + Wide_Wide_Character'Pos (Buffer (Index))
                   - Wide_Wide_Character'Pos ('a')
                   + 10;

            when others =>
               exit;
         end case;

         Index := Index + 1;
      end loop;
   end Parse_Collation_Weight;

   -----------------
   -- Skip_Spaces --
   -----------------

   procedure Skip_Spaces
    (Buffer : Wide_Wide_String;
     Index  : in out Positive;
     Last   : Natural) is
   begin
      while Index <= Last loop
         case Buffer (Index) is
            when ' ' =>
               Index := Index + 1;

            when '#' | '%' =>
               Index := Last + 1;

               return;

            when others =>
               return;
         end case;
      end loop;
   end Skip_Spaces;

end Matreshka.CLDR.AllKeys_Reader;
