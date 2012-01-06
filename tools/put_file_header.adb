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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  Outputs standard file header.
with Ada.Strings.Fixed;
with Ada.Text_IO;

procedure Put_File_Header
 (Module : String;
  First  : Positive;
  Last   : Positive)
is
   use Ada.Strings.Fixed;

   function Years return String;
   --  Construct copyright years string.

   -----------
   -- Years --
   -----------

   function Years return String is
      F : constant String := Positive'Image (First);
      L : constant String := Positive'Image (Last);

   begin
      if First = Last then
         return F (F'First + 1 .. F'Last);

      else
         return F (F'First + 1 .. F'Last) & '-' & L (L'First + 1 .. L'Last);
      end if;
   end Years;

   Copyright : constant String :=
     "-- Copyright © " & Years & ", Vadim Godunko <vgodunko@gmail.com>";

   Unused : Natural;
   Half   : Natural;

begin
   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                            Matreshka Project                        "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");

   --  Format module identification string.

   Unused := 78 - Module'Length - 4;
   Half   := Unused / 2;
   Ada.Text_IO.Put ("--");
   Ada.Text_IO.Put (Half * ' ');
   Ada.Text_IO.Put (Module);
   Ada.Text_IO.Put ((Unused - Half) * ' ');
   Ada.Text_IO.Put_Line ("--");

   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                              Tools Component                        "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");

   --  Format copyright string.

   Ada.Text_IO.Put (Copyright);
   Ada.Text_IO.Put ((78 - 1 - Copyright'Length) * ' ');
   Ada.Text_IO.Put_Line ("--");

   Ada.Text_IO.Put_Line
    ("-- All rights reserved.                                                "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- Redistribution and use in source and binary forms, with or without  "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- modification, are permitted provided that the following conditions  "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- are met:                                                            "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--  * Redistributions of source code must retain the above copyright   "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--    notice, this list of conditions and the following disclaimer.    "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--  * Redistributions in binary form must reproduce the above copyright"
       & "     --");
   Ada.Text_IO.Put_Line
    ("--    notice, this list of conditions and the following disclaimer in t"
       & "he   --");
   Ada.Text_IO.Put_Line
    ("--    documentation and/or other materials provided with the distributi"
       & "on.  --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--  * Neither the name of the Vadim Godunko, IE nor the names of its   "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--    contributors may be used to endorse or promote products derived f"
       & "rom  --");
   Ada.Text_IO.Put_Line
    ("--    this software without specific prior written permission.         "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- ""AS IS"" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT "
       & "       --");
   Ada.Text_IO.Put_Line
    ("-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FO"
       & "R    --");
   Ada.Text_IO.Put_Line
    ("-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT"
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTA"
       & "L,   --");
   Ada.Text_IO.Put_Line
    ("-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIM"
       & "ITED --");
   Ada.Text_IO.Put_Line
    ("-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, "
       & "OR   --");
   Ada.Text_IO.Put_Line
    ("-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY "
       & "OF   --");
   Ada.Text_IO.Put_Line
    ("-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING"
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS  "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.        "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    ("--  $Revision$ $Date$");
   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
end Put_File_Header;
