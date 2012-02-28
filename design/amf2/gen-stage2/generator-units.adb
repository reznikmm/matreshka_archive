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
with Ada.Strings.Wide_Wide_Fixed;

package body Generator.Units is

   use type League.Strings.Universal_String;

   ---------
   -- Add --
   ---------

   procedure Add
    (Self : in out Unit; Item : League.Strings.Universal_String) is
   begin
      if Self.Lines.Is_Empty then
         Self.Lines.Append (Item);

      else
         Self.Lines.Replace
          (Self.Lines.Length, Self.Lines.Element (Self.Lines.Length) & Item);
      end if;
   end Add;

   --------------
   -- Add_Line --
   --------------

   procedure Add_Line
    (Self : in out Unit;
     Item : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String) is
   begin
      Self.Add (Item);
      Self.Lines.Append (League.Strings.Empty_Universal_String);
   end Add_Line;

   ----------------------
   -- Add_Unit_Comment --
   ----------------------

   procedure Add_Unit_Comment
    (Self    : in out Unit;
     Comment : League.String_Vectors.Universal_String_Vector) is
   begin
      for J in 1 .. Comment.Length loop
         Self.Header_Lines.Append ("--  " & Comment.Element (J));
      end loop;

      Self.Header_Lines.Append
       (+"-------------------------------------------------------------------"
           & "-----------");
   end Add_Unit_Comment;

   ---------------------
   -- Add_Unit_Header --
   ---------------------

   procedure Add_Unit_Header
    (Self       : in out Unit;
     First_Year : Positive;
     Last_Year  : Positive) is
   begin
      Self.Header_Lines.Append
       (+"--------------------------------------------------------------------"
           & "----------");
      Self.Header_Lines.Append
       (+"--                                                                  "
           & "        --");
      Self.Header_Lines.Append
       (+"--                            Matreshka Project                     "
           & "        --");
      Self.Header_Lines.Append
       (+"--                                                                  "
           & "        --");
      Self.Header_Lines.Append
       (+"--                          Ada Modeling Framework                  "
           & "        --");
      Self.Header_Lines.Append
       (+"--                                                                  "
           & "        --");
      Self.Header_Lines.Append
       (+"--                        Runtime Library Component                 "
           & "        --");
      Self.Header_Lines.Append
       (+"--                                                                  "
           & "        --");
      Self.Header_Lines.Append
       (+"--------------------------------------------------------------------"
           & "----------");
      Self.Header_Lines.Append
       (+"--                                                                  "
           & "        --");

      if First_Year = Last_Year then
         Self.Header_Lines.Append
          (+"-- Copyright © "
              & Ada.Strings.Wide_Wide_Fixed.Trim
                 (Integer'Wide_Wide_Image (First_Year), Ada.Strings.Both)
              & ", Vadim Godunko <vgodunko@gmail.com>                     --");

      else
         Self.Header_Lines.Append
          (+"-- Copyright © "
              & Ada.Strings.Wide_Wide_Fixed.Trim
                 (Integer'Wide_Wide_Image (First_Year), Ada.Strings.Both)
              & "-"
              & Ada.Strings.Wide_Wide_Fixed.Trim
                 (Integer'Wide_Wide_Image (Last_Year), Ada.Strings.Both)
              & ", Vadim Godunko <vgodunko@gmail.com>                --");
      end if;

      Self.Header_Lines.Append
       (+"-- All rights reserved.                                             "
           & "        --");
      Self.Header_Lines.Append
       (+"--                                                                  "
           & "        --");
      Self.Header_Lines.Append
       (+"-- Redistribution and use in source and binary forms, with or withou"
           & "t       --");
      Self.Header_Lines.Append
       (+"-- modification, are permitted provided that the following condition"
           & "s       --");
      Self.Header_Lines.Append
       (+"-- are met:                                                         "
           & "        --");
      Self.Header_Lines.Append
       (+"--                                                                  "
           & "        --");
      Self.Header_Lines.Append
       (+"--  * Redistributions of source code must retain the above copyright"
           & "        --");
      Self.Header_Lines.Append
       (+"--    notice, this list of conditions and the following disclaimer. "
           & "        --");
      Self.Header_Lines.Append
       (+"--                                                                  "
           & "        --");
      Self.Header_Lines.Append
       (+"--  * Redistributions in binary form must reproduce the above copyri"
           & "ght     --");
      Self.Header_Lines.Append
       (+"--    notice, this list of conditions and the following disclaimer i"
           & "n the   --");
      Self.Header_Lines.Append
       (+"--    documentation and/or other materials provided with the distrib"
           & "ution.  --");
      Self.Header_Lines.Append
       (+"--                                                                  "
           & "        --");
      Self.Header_Lines.Append
       (+"--  * Neither the name of the Vadim Godunko, IE nor the names of its"
           & "        --");
      Self.Header_Lines.Append
       (+"--    contributors may be used to endorse or promote products derive"
           & "d from  --");
      Self.Header_Lines.Append
       (+"--    this software without specific prior written permission.      "
           & "        --");
      Self.Header_Lines.Append
       (+"--                                                                  "
           & "        --");
      Self.Header_Lines.Append
       (+"-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTO"
           & "RS      --");
      Self.Header_Lines.Append
       (+"-- ""AS IS"" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT N"
           & "OT        --");
      Self.Header_Lines.Append
       (+"-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS"
           & " FOR    --");
      Self.Header_Lines.Append
       (+"-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRI"
           & "GHT     --");
      Self.Header_Lines.Append
       (+"-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDE"
           & "NTAL,   --");
      Self.Header_Lines.Append
       (+"-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT "
           & "LIMITED --");
      Self.Header_Lines.Append
       (+"-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DAT"
           & "A, OR   --");
      Self.Header_Lines.Append
       (+"-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEO"
           & "RY OF   --");
      Self.Header_Lines.Append
       (+"-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUD"
           & "ING     --");
      Self.Header_Lines.Append
       (+"-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THI"
           & "S       --");
      Self.Header_Lines.Append
       (+"-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     "
           & "        --");
      Self.Header_Lines.Append
       (+"--                                                                  "
           & "        --");
      Self.Header_Lines.Append
       (+"--------------------------------------------------------------------"
           & "----------");
      Self.Header_Lines.Append
       (+"--  $" & "Revision$ $" & "Date$");
      Self.Header_Lines.Append
       (+"--------------------------------------------------------------------"
           & "----------");
      Self.Header_Lines.Append
       (+"--  This file is generated, don't edit it.");
      Self.Header_Lines.Append
       (+"--------------------------------------------------------------------"
           & "----------");
   end Add_Unit_Header;

   -------------
   -- Context --
   -------------

   function Context
    (Self : in out Unit)
       return not null access Generator.Contexts.Context'Class is
   begin
      return Self.Context'Unchecked_Access;
   end Context;

   ---------
   -- Put --
   ---------

   procedure Put
    (Self : Unit;
     File : Ada.Wide_Wide_Text_IO.File_Type
       := Ada.Wide_Wide_Text_IO.Standard_Output)
   is
      procedure Put_With_Clause
       (Name       : League.Strings.Universal_String;
        Is_Limited : Boolean;
        Is_Private : Boolean);
      --  Outputs context clause.

      ---------------------
      -- Put_With_Clause --
      ---------------------

      procedure Put_With_Clause
       (Name       : League.Strings.Universal_String;
        Is_Limited : Boolean;
        Is_Private : Boolean) is
      begin
         if Is_Limited then
            Ada.Wide_Wide_Text_IO.Put ("limited ");

         elsif Is_Private then
            Ada.Wide_Wide_Text_IO.Put ("private ");
         end if;

         Ada.Wide_Wide_Text_IO.Put ("with ");
         Ada.Wide_Wide_Text_IO.Put (Name.To_Wide_Wide_String);
         Ada.Wide_Wide_Text_IO.Put_Line (";");
      end Put_With_Clause;

   begin
      for J in 1 .. Self.Header_Lines.Length loop
         Ada.Wide_Wide_Text_IO.Put_Line
          (Self.Header_Lines.Element (J).To_Wide_Wide_String);
      end loop;

      Self.Context.Iterate (Put_With_Clause'Access);

      for J in 1 .. Self.Lines.Length loop
         if J /= Self.Lines.Length
           or else not Self.Lines.Element (J).Is_Empty
         then
            Ada.Wide_Wide_Text_IO.Put_Line
             (Self.Lines.Element (J).To_Wide_Wide_String);
         end if;
      end loop;
   end Put;

end Generator.Units;
