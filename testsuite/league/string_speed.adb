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
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Calendar;
with Ada.Strings.Fixed;
with Ada.Strings.Wide_Unbounded;
with Ada.Text_IO;
with League.Strings;

procedure String_Speed is

   use Ada.Calendar;
   use Ada.Strings;
   use Ada.Strings.Fixed;
   use Ada.Strings.Wide_Unbounded;
   use Ada.Text_IO;
   use League.Strings;

   procedure Test_Copy_Of_Empty_String;

   procedure Test_Copy;

   procedure Test_Compare;

   procedure Test_Append;

   procedure Test_Initialization;

   procedure Results
     (Name            : String;
      Ada_Duration    : Duration;
      League_Duration : Duration;
      Passes          : Positive);

   -------------
   -- Results --
   -------------

   procedure Results
     (Name            : String;
      Ada_Duration    : Duration;
      League_Duration : Duration;
      Passes          : Positive)
   is
      type Speedup is delta 0.01 range 0.0 .. 100.0;

      P : Speedup := Speedup (Ada_Duration / League_Duration);

   begin
      Put_Line (Name & " (" & Trim (Speedup'Image (P), Both) & ")");
      Put_Line
        ("  AUS : "
           & Duration'Image (Ada_Duration)
           & Duration'Image (Ada_Duration / Passes));
      Put_Line
        ("  LUS : "
           & Duration'Image (League_Duration)
           & Duration'Image (League_Duration / Passes));
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

      Results ("Append string", Ada_Duration, League_Duration, Passes);
   end Test_Append;

   ------------------
   -- Test_Compare --
   ------------------

   procedure Test_Compare is
      Equal_Passes    : constant := 7_500_000;
      Less_Passes     : constant := 10_500_000;
      Ada_Duration    : Duration;
      League_Duration : Duration;

   begin
      declare
         Start : Time;
         S1    : Unbounded_Wide_String :=
           To_Unbounded_Wide_String ("                               1");
         S2    : Unbounded_Wide_String :=
           To_Unbounded_Wide_String ("                               2");
         Y     : Boolean;

      begin
         Start := Clock;

         for J in 1 .. Equal_Passes loop
            Y := S1 = S2;
         end loop;

         Ada_Duration := Clock - Start;
      end;

      declare
         Start : Time;
         S1    : Universal_String :=
           To_Universal_String ("                               1");
         S2    : Universal_String :=
           To_Universal_String ("                               2");
         Y     : Boolean;

      begin
         Start := Clock;

         for J in 1 .. Equal_Passes loop
            Y := S1 = S2;
         end loop;

         League_Duration := Clock - Start;
      end;

      Results
        ("Compare for equality", Ada_Duration, League_Duration, Equal_Passes);

      declare
         Start : Time;
         S1    : Unbounded_Wide_String :=
           To_Unbounded_Wide_String ("                               1");
         S2    : Unbounded_Wide_String :=
           To_Unbounded_Wide_String ("                               2");
         Y     : Boolean;

      begin
         Start := Clock;

         for J in 1 .. Less_Passes loop
            Y := S1 < S2;
         end loop;

         Ada_Duration := Clock - Start;
      end;

      declare
         Start : Time;
         S1    : Universal_String :=
           To_Universal_String ("                               1");
         S2    : Universal_String :=
           To_Universal_String ("                               2");
         Y     : Boolean;

      begin
         Start := Clock;

         for J in 1 .. Less_Passes loop
            Y := S1 < S2;
         end loop;

         League_Duration := Clock - Start;
      end;

      Results ("Compare for less", Ada_Duration, League_Duration, Less_Passes);
   end Test_Compare;

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
        ("Copy of non-empty string", Ada_Duration, League_Duration, Passes);
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

      Results ("Copy of empty string", Ada_Duration, League_Duration, Passes);
   end Test_Copy_Of_Empty_String;

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
         Ada_Duration,
         League_Duration,
         Passes);
   end Test_Initialization;

begin
   Test_Initialization;
   Test_Copy_Of_Empty_String;
   Test_Copy;
   Test_Compare;
   Test_Append;
end String_Speed;
