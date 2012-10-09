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
-- Copyright © 2009-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Command_Line;
with Ada.Text_IO;

with League.Application;
pragma Unreferenced (League.Application);
--  Package League.Application is included to allow selection of platform
--  specific implementation of string handling subprograms.
with League.Characters;
with League.Strings.Debug;

with Unicode_Data_File_Parsers;
with Unicode_Data_File_Utilities;

procedure Collation_Test is

   use League.Strings;
   use League.Strings.Debug;
   use Unicode_Data_File_Utilities;

   Unidata_Directory          : constant String
     := Ada.Command_Line.Argument (1);
   CollationTest_SHIFTED_Name : constant String
     := "CollationAuxiliary/CollationTest_CLDR_SHIFTED.txt";
   CollationTest_NON_IGNORABLE_Name : constant String
     := "CollationAuxiliary/CollationTest_CLDR_NON_IGNORABLE.txt";

   type Parser is
     new Unicode_Data_File_Parsers.Unicode_Data_File_Parser with
   record
      Last_String : Universal_String;
      Last_Key    : Sort_Key;
   end record;

   overriding procedure Data
    (Self   : in out Parser;
     Fields : Unicode_Data_File_Parsers.String_Vectors.Vector);

   ----------
   -- Data --
   ----------

   overriding procedure Data
    (Self   : in out Parser;
     Fields : Unicode_Data_File_Parsers.String_Vectors.Vector)
   is
      Current_String : Universal_String;
      Current_Key    : Sort_Key;
      Skip           : Boolean := False;

   begin
      --  Data file includes several code point not treated by the
      --  implementation as valid code points, surrogate characters for
      --  example. These testcases are ignored.

      declare
         Aux : constant Wide_Wide_String := Parse (Fields.Element (1));

      begin
         for J in Aux'Range loop
            if not League.Characters.To_Universal_Character
                    (Aux (J)).Is_Valid
            then
               Skip := True;

               exit;
            end if;
         end loop;

         if not Skip then
            Current_String := To_Universal_String (Parse (Fields.Element (1)));
         end if;
      end;

      if not Skip then
         Current_Key := Current_String.Collation;

         if Self.Last_Key > Current_Key then
            Ada.Text_IO.Put_Line
             (Debug_Image (Self.Last_String)
                & " => "
                & Debug_Image (Self.Last_Key));
            Ada.Text_IO.Put_Line
             (Debug_Image (Current_String)
                & " => "
                & Debug_Image (Current_Key));

            raise Program_Error;

         elsif Self.Last_Key = Current_Key
           and then Self.Last_String > Current_String
         then
            Ada.Text_IO.Put_Line
             (Debug_Image (Self.Last_String)
                & " => "
                & Debug_Image (Self.Last_Key));
            Ada.Text_IO.Put_Line
             (Debug_Image (Current_String)
                & " => "
                & Debug_Image (Current_Key));

            raise Program_Error;
         end if;

         Self.Last_String := Current_String;
         Self.Last_Key    := Current_Key;
      end if;
   end Data;

   Test_Non_Ignorable : Parser;
--   Test_Shifted       : Parser;

begin
   Test_Non_Ignorable.Open
    (Unidata_Directory & '/' & CollationTest_NON_IGNORABLE_Name);
   Test_Non_Ignorable.Parse;
   Test_Non_Ignorable.Close;

--   Test_Shifted.Open (Unidata_Directory & '/' & CollationTest_SHIFTED_Name);
--   Test_Shifted.Parse;
--   Test_Shifted.Close;
end Collation_Test;
