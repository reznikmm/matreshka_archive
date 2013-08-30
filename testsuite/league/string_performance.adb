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
-- Copyright © 2010-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Calendar;
with Ada.Strings.Fixed;
with Ada.Strings.Wide_Fixed;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Strings.Wide_Unbounded;
with Ada.Text_IO;

with League.Application;
with League.Characters;
with League.Strings;

procedure String_Performance is

   use Ada.Calendar;
   use Ada.Strings;
   use Ada.Strings.Fixed;
   use Ada.Strings.Wide_Fixed;
   use Ada.Strings.Wide_Unbounded;
   use Ada.Strings.Wide_Wide_Fixed;
   use Ada.Text_IO;
   use League.Characters;
   use League.Strings;

   procedure Test_Copy_Of_Empty_String;

   procedure Test_Copy;

   procedure Test_Compare;

   procedure Test_Append;

   procedure Test_Index;

   procedure Test_Last_Index;

   procedure Test_Initialization;

   type Result_Type is record
      Ada_Duration    : Duration;
      League_Duration : Duration;
      Passes          : Positive;
   end record;

   type Result_Type_Array is array (Positive range <>) of Result_Type;

   procedure Results
     (Name   : String;
      Result : Result_Type);

   procedure Results
     (Name   : String;
      Result : Result_Type_Array);

   -------------
   -- Results --
   -------------

   procedure Results
     (Name   : String;
      Result : Result_Type)
   is
      type Speedup is delta 0.01 range 0.0 .. 100.0;

      P : Speedup := Speedup (Result.Ada_Duration / Result.League_Duration);

   begin
      Put_Line (Name & " (" & Trim (Speedup'Image (P), Both) & ")");
      Put_Line
        ("  AUS : "
           & Duration'Image (Result.Ada_Duration)
           & Duration'Image (Result.Ada_Duration / Result.Passes));
      Put_Line
        ("  LUS : "
           & Duration'Image (Result.League_Duration)
           & Duration'Image (Result.League_Duration / Result.Passes));
   end Results;

   -------------
   -- Results --
   -------------

   procedure Results
     (Name   : String;
      Result : Result_Type_Array)
   is
      type Speedup is delta 0.01 range 0.0 .. 1000.0;

   begin
      Put (Name & " (");

      for J in Result'Range loop
         if J /= Result'First then
            Put ('/');
         end if;

         Put
          (Trim
            (Speedup'Image
              (Speedup (Result (J).Ada_Duration / Result (J).League_Duration)),
             Both));
      end loop;

      Put_Line (")");

      Put ("  AUS :");

      for J in Result'Range loop
         if J /= Result'First then
            Put (" /");
         end if;

         Put
          (Duration'Image (Result (J).Ada_Duration)
             & Duration'Image (Result (J).Ada_Duration / Result (J).Passes));
      end loop;

      New_Line;

      Put ("  LUS :");

      for J in Result'Range loop
         if J /= Result'First then
            Put (" /");
         end if;

         Put
          (Duration'Image (Result (J).League_Duration)
             & Duration'Image
                (Result (J).League_Duration / Result (J).Passes));
      end loop;

      New_Line;
   end Results;

   -----------------
   -- Test_Append --
   -----------------

   procedure Test_Append is
      Passes          : constant := 5_000_000;
      Ada_Duration    : Duration;
      League_Duration : Duration;

   begin
      declare
         Start : Time;
         S1    : Unbounded_Wide_String;
         S2    : Unbounded_Wide_String :=
           To_Unbounded_Wide_String ("123");

      begin
         Start := Clock;

         for J in 1 .. Passes loop
            Append (S1, S2);
         end loop;

         Ada_Duration := Clock - Start;
      end;

      declare
         Start : Time;
         S1    : Universal_String;
         S2    : Universal_String :=
           To_Universal_String ("123");

      begin
         Start := Clock;

         for J in 1 .. Passes loop
            Append (S1, S2);
         end loop;

         League_Duration := Clock - Start;
      end;

      Results
       ("Append string", Result_Type'(Ada_Duration, League_Duration, Passes));
   end Test_Append;

   ------------------
   -- Test_Compare --
   ------------------

   procedure Test_Compare is
      generic
         with function Compare
          (Left  : Unbounded_Wide_String;
           Right : Unbounded_Wide_String) return Boolean;
         with function Compare
          (Left : Universal_String; Right : Universal_String) return Boolean;

      procedure Generic_Test
       (Size   : Positive;
        Passes : Positive;
        Result : out Result_Type);

      ------------------
      -- Generic_Test --
      ------------------

      procedure Generic_Test
       (Size   : Positive;
        Passes : Positive;
        Result : out Result_Type)
      is
         Start : Time;
         Y     : Boolean;

      begin
         declare
            S1 : Unbounded_Wide_String :=
              To_Unbounded_Wide_String (Size * ' ' & '1');
            S2 : Unbounded_Wide_String :=
              To_Unbounded_Wide_String (Size * ' ' & '2');

         begin
            Start := Clock;

            for J in 1 .. Passes loop
               Y := Compare (S1, S2);
            end loop;

            Result.Ada_Duration := Clock - Start;
         end;

         declare
            S1 : Universal_String :=
              To_Universal_String (Size * ' ' & '1');
            S2 : Universal_String :=
              To_Universal_String (Size * ' ' & '2');

         begin
            Start := Clock;

            for J in 1 .. Passes loop
               Y := Compare (S1, S2);
            end loop;

            Result.League_Duration := Clock - Start;
         end;

         Result.Passes := Passes;
      end Generic_Test;

      procedure Equal_Test is new Generic_Test ("=", "=");
      procedure Less_Test is new Generic_Test ("<", "<");

      Equal_Passes    : constant := 10_000_000;
      Less_Passes     : constant := 12_000_000;
      Size            : constant := 100;

      Result : Result_Type_Array (1 .. 5);

   begin
      Equal_Test (1, Equal_Passes, Result (1));
      Equal_Test (10, Equal_Passes, Result (2));
      Equal_Test (100, Equal_Passes / 2, Result (3));
      Equal_Test (1000, Equal_Passes / 10, Result (4));
      Equal_Test (10000, Equal_Passes / 50, Result (5));
      Results ("Compare for equality", Result);

      Less_Test (1, Less_Passes, Result (1));
      Less_Test (10, Less_Passes, Result (2));
      Less_Test (100, Less_Passes / 2, Result (3));
      Less_Test (1000, Less_Passes / 10, Result (4));
      Less_Test (10000, Less_Passes / 50, Result (5));
      Results ("Compare for less", Result);
   end Test_Compare;

   -----------------
   -- Test_Copy_2 --
   -----------------

   procedure Test_Copy_2 is
      Passes          : constant := 4_000_000;
      Ada_Duration    : Duration;
      League_Duration : Duration;

   begin
      declare
         Start : Time;

      begin
         Start := Clock;

         for J in 1 .. Passes loop
            declare
               S1    : Unbounded_Wide_String :=
                 To_Unbounded_Wide_String (" ");
               S2    : Unbounded_Wide_String;

            begin
               S2 := S1;
            end;
         end loop;

         Ada_Duration := Clock - Start;
      end;

      declare
         Start : Time;

      begin
         Start := Clock;

         for J in 1 .. Passes loop
            declare
               S1    : Universal_String :=
                 To_Universal_String (" ");
               S2    : Universal_String;

            begin
               S2 := S1;
            end;
         end loop;

         League_Duration := Clock - Start;
      end;

      Results
       ("Create/copy of non-empty string",
        Result_Type'(Ada_Duration, League_Duration, Passes));
   end Test_Copy_2;

   ---------------
   -- Test_Copy --
   ---------------

   procedure Test_Copy is
      Passes          : constant := 20_000_000;
      Ada_Duration    : Duration;
      League_Duration : Duration;

   begin
      declare
         Start : Time;
         S1    : Unbounded_Wide_String :=
           To_Unbounded_Wide_String ("                                ");
         S2    : Unbounded_Wide_String;

      begin
         Start := Clock;

         for J in 1 .. Passes loop
            S2 := S1;
         end loop;

         Ada_Duration := Clock - Start;
      end;

      declare
         Start : Time;
         S1    : Universal_String :=
           To_Universal_String ("                                ");
         S2    : Universal_String;

      begin
         Start := Clock;

         for J in 1 .. Passes loop
            S2 := S1;
         end loop;

         League_Duration := Clock - Start;
      end;

      Results
       ("Copy of non-empty string",
        Result_Type'(Ada_Duration, League_Duration, Passes));
   end Test_Copy;

   -------------------------------
   -- Test_Copy_Of_Empty_String --
   -------------------------------

   procedure Test_Copy_Of_Empty_String is
      Passes          : constant := 20_000_000;
      Ada_Duration    : Duration;
      League_Duration : Duration;

   begin
      declare
         Start : Time;
         S1    : Unbounded_Wide_String;
         S2    : Unbounded_Wide_String;

      begin
         Start := Clock;

         for J in 1 .. Passes loop
            S2 := S1;
         end loop;

         Ada_Duration := Clock - Start;
      end;

      declare
         Start : Time;
         S1    : Universal_String;
         S2    : Universal_String;

      begin
         Start := Clock;

         for J in 1 .. Passes loop
            S2 := S1;
         end loop;

         League_Duration := Clock - Start;
      end;

      Results
       ("Copy of empty string",
        Result_Type'(Ada_Duration, League_Duration, Passes));
   end Test_Copy_Of_Empty_String;

   ----------------
   -- Test_Index --
   ----------------

   procedure Test_Index is

      ----------
      -- Test --
      ----------

      procedure Test
       (Size   : Positive;
        Passes : Positive;
        Result : out Result_Type)
      is
         Start : Time;
         Y     : Natural;

      begin
         declare
            S : Unbounded_Wide_String :=
              To_Unbounded_Wide_String (Size * ' ' & '1');
            C : Wide_String := "1";

         begin
            Start := Clock;

            for J in 1 .. Passes loop
               Y := Index (S, C);
            end loop;

            Result.Ada_Duration := Clock - Start;
         end;

         declare
            S : Universal_String :=
              To_Universal_String (Size * ' ' & '1');
            C : Universal_Character := To_Universal_Character ('1');

         begin
            Start := Clock;

            for J in 1 .. Passes loop
               Y := Index (S, C);
            end loop;

            Result.League_Duration := Clock - Start;
         end;

         Result.Passes := Passes;
      end Test;

      Index_Passes : constant := 1_000_000;

      Result : Result_Type_Array (1 .. 5);

   begin
      Test (1, Index_Passes, Result (1));
      Test (10, Index_Passes, Result (2));
      Test (100, Index_Passes / 2, Result (3));
      Test (1000, Index_Passes / 10, Result (4));
      Test (10000, Index_Passes / 50, Result (5));
      Results ("Index", Result);
   end Test_Index;

   -------------------------
   -- Test_Initialization --
   -------------------------

   procedure Test_Initialization is
      Passes          : constant := 10_000_000;
      Ada_Duration    : Duration;
      League_Duration : Duration;

   begin
      declare
         Start : Time;

      begin
         Start := Clock;

         for J in 1 .. Passes loop
            declare
               S1 : Unbounded_Wide_String;
               S2 : Unbounded_Wide_String;
               X  : Boolean := S1 = S2;

            begin
               null;
            end;
         end loop;

         Ada_Duration := Clock - Start;
      end;

      declare
         Start : Time;

      begin
         Start := Clock;

         for J in 1 .. Passes loop
            declare
               S1 : Universal_String;
               S2 : Universal_String;
               X  : Boolean := S1 = S2;

            begin
               null;
            end;
         end loop;

         League_Duration := Clock - Start;
      end;

      Results
        ("Initialization of default object",
         Result_Type'(Ada_Duration, League_Duration, Passes));
   end Test_Initialization;

   ---------------------
   -- Test_Last_Index --
   ---------------------

   procedure Test_Last_Index is

      ----------
      -- Test --
      ----------

      procedure Test
       (Size   : Positive;
        Passes : Positive;
        Result : out Result_Type)
      is
         Start : Time;
         Y     : Natural;

      begin
         declare
            S : Unbounded_Wide_String :=
              To_Unbounded_Wide_String ('1' & Size * ' ');
            C : Wide_String := "1";

         begin
            Start := Clock;

            for J in 1 .. Passes loop
               Y := Index (S, C, Ada.Strings.Backward);
            end loop;

            Result.Ada_Duration := Clock - Start;
         end;

         declare
            S : Universal_String :=
              To_Universal_String ('1' & Size * ' ');
            C : Universal_Character := To_Universal_Character ('1');

         begin
            Start := Clock;

            for J in 1 .. Passes loop
               Y := Last_Index (S, C);
            end loop;

            Result.League_Duration := Clock - Start;
         end;

         Result.Passes := Passes;
      end Test;

      Index_Passes : constant := 1_000_000;

      Result : Result_Type_Array (1 .. 5);

   begin
      Test (1, Index_Passes, Result (1));
      Test (10, Index_Passes, Result (2));
      Test (100, Index_Passes / 2, Result (3));
      Test (1000, Index_Passes / 10, Result (4));
      Test (10000, Index_Passes / 50, Result (5));
      Results ("Last_Index", Result);
   end Test_Last_Index;

begin
   Test_Initialization;
   Test_Copy_Of_Empty_String;
   Test_Copy;
   Test_Copy_2;
   Test_Compare;
   Test_Append;
   Test_Index;
   Test_Last_Index;
end String_Performance;
