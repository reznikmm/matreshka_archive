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
with Ada.Strings.Fixed;
with Ada.Strings.Maps;
with Ada.Text_IO;

package body Configure is

   use Ada.Command_Line;
   use Ada.Directories;
   use Ada.Text_IO;

   --------------------------
   -- Convert_Windows_Path --
   --------------------------

   function Convert_Windows_Path
    (Path : Unbounded_String) return Unbounded_String
   is
      use Ada.Strings.Maps;

   begin
      if Is_Windows then
         return Translate (Path, To_Mapping ("\", "/"));

      else
         return Path;
      end if;
   end Convert_Windows_Path;

   -----------------
   -- Fatal_Error --
   -----------------

   procedure Fatal_Error (Message : String) is
   begin
      Put_Line
       (Standard_Error, Simple_Name (Command_Name) & ": (fatal) " & Message);

      raise Internal_Error;
   end Fatal_Error;

   -------------------
   -- Has_Parameter --
   -------------------

   function Has_Parameter
    (Arguments : Unbounded_String_Vector; Name : String) return Boolean is
   begin
      for J in Arguments.First_Index .. Arguments.Last_Index loop
         declare
            Arg : constant Unbounded_String := Arguments.Element (J);

         begin
            if Length (Arg) = Name'Length then
               return Arg = Name;

            elsif Length (Arg) > Name'Length
              and then Slice (Arg, 1, Name'Length) = Name
              and then Element (Arg, Name'Length + 1) = '='
            then
               return True;
            end if;
         end;
      end loop;

      return False;
   end Has_Parameter;

   -----------------
   -- Information --
   -----------------

   procedure Information (Message : String) is
   begin
      Put_Line
       (Standard_Error, Simple_Name (Command_Name) & ": (info) " & Message);
   end Information;

   ---------------------
   -- Parameter_Value --
   ---------------------

   function Parameter_Value
    (Arguments : Unbounded_String_Vector;
     Name      : String) return Unbounded_String is
   begin
      for J in Arguments.First_Index .. Arguments.Last_Index loop
         declare
            Arg : constant Unbounded_String := Arguments.Element (J);

         begin
            if Length (Arg) = Name'Length then
               return Null_Unbounded_String;

            elsif Length (Arg) > Name'Length
              and then Slice (Arg, 1, Name'Length) = Name
              and then Element (Arg, Name'Length + 1) = '='
            then
               return Unbounded_Slice (Arg, Name'Length + 2, Length (Arg));
            end if;
         end;
      end loop;

      return Null_Unbounded_String;
   end Parameter_Value;

   ----------------------
   -- Remove_Parameter --
   ----------------------

   procedure Remove_Parameter
    (Arguments : in out Unbounded_String_Vector; Name : String) is
   begin
      for J in Arguments.First_Index .. Arguments.Last_Index loop
         declare
            Arg : constant Unbounded_String := Arguments.Element (J);

         begin
            if Length (Arg) = Name'Length then
               Arguments.Delete (J);

               return;

            elsif Length (Arg) > Name'Length
              and then Slice (Arg, 1, Name'Length) = Name
              and then Element (Arg, Name'Length + 1) = '='
            then
               Arguments.Delete (J);

               return;
            end if;
         end;
      end loop;
   end Remove_Parameter;

   -------------
   -- Warning --
   -------------

   procedure Warning (Message : String) is
   begin
      Put_Line
       (Standard_Error, Simple_Name (Command_Name) & ": (warning) " & Message);
   end Warning;

end Configure;
