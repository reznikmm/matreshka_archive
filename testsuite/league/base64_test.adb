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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.Base_64;
with League.Stream_Element_Vectors;
with League.Strings;

procedure Base64_Test is

   type Test_Data is record
      Source  : League.Stream_Element_Vectors.Stream_Element_Vector;
      Encoded : League.Strings.Universal_String;
   end record;

   procedure Do_Test (Data : Test_Data);

   Test_1 : constant Test_Data
     := (League.Stream_Element_Vectors.To_Stream_Element_Vector
          ((0 => Character'Pos ('H'))),
         League.Strings.To_Universal_String ("SA=="));
   Test_2 : constant Test_Data
     := (League.Stream_Element_Vectors.To_Stream_Element_Vector
          ((0 => Character'Pos ('H'),
            1 => Character'Pos ('e'))),
         League.Strings.To_Universal_String ("SGU="));
   Test_3 : constant Test_Data
     := (League.Stream_Element_Vectors.To_Stream_Element_Vector
          ((0 => Character'Pos ('H'),
            1 => Character'Pos ('e'),
            2 => Character'Pos ('l'))),
         League.Strings.To_Universal_String ("SGVs"));
   Test_4 : constant Test_Data
     := (League.Stream_Element_Vectors.To_Stream_Element_Vector
          ((0 => Character'Pos ('H'),
            1 => Character'Pos ('e'),
            2 => Character'Pos ('l'),
            3 => Character'Pos ('l'))),
         League.Strings.To_Universal_String ("SGVsbA=="));
   Test_5 : constant Test_Data
     := (League.Stream_Element_Vectors.To_Stream_Element_Vector
          ((0 => Character'Pos ('H'),
            1 => Character'Pos ('e'),
            2 => Character'Pos ('l'),
            3 => Character'Pos ('l'),
            4 => Character'Pos ('o'))),
         League.Strings.To_Universal_String ("SGVsbG8="));
   Test_6 : constant Test_Data
     := (League.Stream_Element_Vectors.To_Stream_Element_Vector
          ((0 => Character'Pos ('H'),
            1 => Character'Pos ('e'),
            2 => Character'Pos ('l'),
            3 => Character'Pos ('l'),
            4 => Character'Pos ('o'),
            5 => Character'Pos (ASCII.NUL))),
         League.Strings.To_Universal_String ("SGVsbG8A"));
   Test_7 : constant Test_Data
     := (League.Stream_Element_Vectors.To_Stream_Element_Vector
          ((0 => 16#FF#,
            1 => 16#FF#,
            2 => 16#FF#,
            3 => 16#FF#)),
         League.Strings.To_Universal_String ("/////w=="));

   -------------
   -- Do_Test --
   -------------

   procedure Do_Test (Data : Test_Data) is
      use type League.Stream_Element_Vectors.Stream_Element_Vector;
      use type League.Strings.Universal_String;

      X : constant League.Strings.Universal_String
        := League.Base_64.To_Base_64 (Data.Source);
      Y : constant League.Stream_Element_Vectors.Stream_Element_Vector
        := League.Base_64.From_Base_64 (X);

   begin
      if Data.Encoded /= X then
         raise Program_Error;
      end if;

      if Data.Source /= Y then
         raise Program_Error;
      end if;
   end Do_Test;

begin
   Do_Test (Test_1);
   Do_Test (Test_2);
   Do_Test (Test_3);
   Do_Test (Test_4);
   Do_Test (Test_5);
   Do_Test (Test_6);
   Do_Test (Test_7);
end Base64_Test;
