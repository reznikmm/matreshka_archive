------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
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
--  Text output utilities.
------------------------------------------------------------------------------
with Ada.Strings.Wide_Wide_Fixed;

package body Generator.Wide_Wide_Text_IO is

   use Ada.Strings;
   use Ada.Strings.Wide_Wide_Fixed;
   use Ada.Wide_Wide_Text_IO;

   ---------
   -- Put --
   ---------

   procedure Put (Item : League.Strings.Universal_String) is
   begin
      Put (Item.To_Wide_Wide_String);
   end Put;

   ----------------
   -- Put_Header --
   ----------------

   procedure Put_Header (First_Year : Positive; Last_Year : Positive) is
   begin
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--                            Matreshka Project                     "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--                          Ada Modeling Framework                  "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--                        Runtime Library Component                 "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--                                                                  "
          & "        --");

      if First_Year = Last_Year then
         Put_Line
          ("-- Copyright © "
             & Trim (Integer'Wide_Wide_Image (First_Year), Both)
             & ", Vadim Godunko <vgodunko@gmail.com>                     --");

      else
         Put_Line
          ("-- Copyright © "
             & Trim (Integer'Wide_Wide_Image (First_Year), Both)
             & "-"
             & Trim (Integer'Wide_Wide_Image (Last_Year), Both)
             & ", Vadim Godunko <vgodunko@gmail.com>                --");
      end if;

      Put_Line
       ("-- All rights reserved.                                             "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("-- Redistribution and use in source and binary forms, with or withou"
          & "t       --");
      Put_Line
       ("-- modification, are permitted provided that the following condition"
          & "s       --");
      Put_Line
       ("-- are met:                                                         "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--  * Redistributions of source code must retain the above copyright"
          & "        --");
      Put_Line
       ("--    notice, this list of conditions and the following disclaimer. "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--  * Redistributions in binary form must reproduce the above copyri"
          & "ght     --");
      Put_Line
       ("--    notice, this list of conditions and the following disclaimer i"
          & "n the   --");
      Put_Line
       ("--    documentation and/or other materials provided with the distrib"
          & "ution.  --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--  * Neither the name of the Vadim Godunko, IE nor the names of its"
          & "        --");
      Put_Line
       ("--    contributors may be used to endorse or promote products derive"
          & "d from  --");
      Put_Line
       ("--    this software without specific prior written permission.      "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTO"
          & "RS      --");
      Put_Line
       ("-- ""AS IS"" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT N"
          & "OT        --");
      Put_Line
       ("-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS"
          & " FOR    --");
      Put_Line
       ("-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRI"
          & "GHT     --");
      Put_Line
       ("-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDE"
          & "NTAL,   --");
      Put_Line
       ("-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT "
          & "LIMITED --");
      Put_Line
       ("-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DAT"
          & "A, OR   --");
      Put_Line
       ("-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEO"
          & "RY OF   --");
      Put_Line
       ("-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUD"
          & "ING     --");
      Put_Line
       ("-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THI"
          & "S       --");
      Put_Line
       ("-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--  $" & "Revision$ $" & "Date$");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--  This file is generated, don't edit it.");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
   end Put_Header;

   ----------------
   -- Put_Header --
   ----------------

   procedure Put_Header
    (Name   : Wide_Wide_String;
     Column : Ada.Wide_Wide_Text_IO.Positive_Count)
   is
      Indent    : constant Wide_Wide_String := Integer (Column) * ' ';
      Separator : constant Wide_Wide_String
        := Indent & (Integer (Name'Length + 6) * '-');

   begin
      New_Line;
      Put_Line (Separator);
      Put_Line (Indent & "-- " & Name & " --");
      Put_Line (Separator);
   end Put_Header;

   --------------
   -- Put_Line --
   --------------

   procedure Put_Line (Item : League.Strings.Universal_String) is
   begin
      Put_Line (Item.To_Wide_Wide_String);
   end Put_Line;

end Generator.Wide_Wide_Text_IO;
