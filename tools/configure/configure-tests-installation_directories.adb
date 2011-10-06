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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Directories;

package body Configure.Tests.Installation_Directories is

   Prefix_Switch : constant String := "--prefix=";
   Libdir_Switch : constant String := "--libdir=";

   Prefix_Name : constant Unbounded_String := +"PREFIX";
   Libdir_Name : constant Unbounded_String := +"LIBDIR";

   function Starts_With (Item : String; Prefix : String) return Boolean;

   -------------
   -- Execute --
   -------------

   overriding procedure Execute
    (Self : in out Installation_Directories_Test) is
   begin
      --  Set default value for PREFIX.

      Substitutions.Insert
       (Prefix_Name, Ada.Strings.Unbounded.To_Unbounded_String ("/usr/local"));

      --  Looking for '--prefix=' and otherwrite default value when found.

      for J in 1 .. Ada.Command_Line.Argument_Count loop
         declare
            Arg : constant String := Ada.Command_Line.Argument (J);

         begin
            if Starts_With (Arg, Prefix_Switch) then
               Substitutions.Replace
                (Prefix_Name,
                 +Arg (Arg'First + Prefix_Switch'Length .. Arg'Last));

               exit;
            end if;
         end;
      end loop;

      --  Compute other directories.

      Substitutions.Insert
       (Libdir_Name,
        +Ada.Directories.Compose
          (+Substitutions.Element (Prefix_Name), "lib"));

      --  Looking for '--libdir=' and otherwrite default value when found.

      for J in 1 .. Ada.Command_Line.Argument_Count loop
         declare
            Arg : constant String := Ada.Command_Line.Argument (J);

         begin
            if Starts_With (Arg, Libdir_Switch) then
               Substitutions.Replace
                (Libdir_Name,
                 Ada.Strings.Unbounded.To_Unbounded_String
                  (Arg (Arg'First + Prefix_Switch'Length .. Arg'Last)));

               exit;
            end if;
         end;
      end loop;
   end Execute;

   ----------
   -- Help --
   ----------

   overriding function Help
    (Self : Installation_Directories_Test) return Unbounded_String_Vector is
   begin
      return Result : Unbounded_String_Vector do
         Result.Append (+"Installation directories:");
         Result.Append
          (+"  --prefix=PREFIX         "
              & "install architecture-independent files in PREFIX");
         Result.Append (+"                          [/usr/local]");
         Result.Append (Null_Unbounded_String);
         Result.Append (+"Fine tuning of the installation directories:");
         Result.Append
          (+"  --libdir=DIR            "
              & "object code libraries [EPREFIX/lib]");
      end return;
   end Help;

   -----------------
   -- Starts_With --
   -----------------

   function Starts_With (Item : String; Prefix : String) return Boolean is
   begin
      return
        Item'Length >= Prefix'Length
          and then Item (Item'First .. Item'First + Prefix'Length - 1)
                     = Prefix;
   end Starts_With;

end Configure.Tests.Installation_Directories;
