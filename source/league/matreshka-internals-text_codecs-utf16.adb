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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Text_Codecs.UTF16 is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   --  Common states for both BE and LE variants.

   Accept_State                   : constant := 0;
   Reject_State                   : constant := 1;

   --  States of BE variant.

   BE_Second_Byte_Ordinary_State  : constant := 2;
   BE_Second_Byte_Surrogate_State : constant := 3;
   BE_Surrogate_First_Byte_State  : constant := 4;
   BE_Surrogate_Second_Byte_State : constant := 5;

   --  States of LE variant.

   LE_Second_Byte_State           : constant := 2;
   LE_Surrogate_First_Byte_State  : constant := 3;
   LE_Surrogate_Second_Byte_State : constant := 4;

   Meta_Class : constant
     array (Ada.Streams.Stream_Element) of UTF16_Meta_Class
       := ( 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0x00
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0x10
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0x20
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0x30
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0x40
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0x50
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0x60
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0x70

            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0x80
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0x90
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0xA0
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0xB0
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0xC0
            0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2,   --  0xD0
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,   --  0xE0
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);  --  0xF0

   BE_Transition : constant
     array (UTF16_DFA_State range 0 .. 23) of UTF16_DFA_State
       := (2, 3, 1, 1,   --  Accept
           1, 1, 1, 1,   --  Reject
           0, 0, 0, 1,   --  Second_Ordinary,
           4, 4, 4, 1,   --  Second_Surrogate,
           1, 1, 5, 1,   --  Surrogate_First
           0, 0, 0, 1);  --  Surrogate_Second

   LE_Transition : constant
     array (UTF16_DFA_State range 0 .. 19) of UTF16_DFA_State
       := (2, 2, 2, 1,   --  Accept
           1, 1, 1, 1,   --  Reject
           0, 3, 1, 1,   --  Second_Byte
           4, 4, 4, 1,   --  Surrogate_First
           1, 1, 0, 1);  --  Surrogate_Second

   ------------------
   -- Create_State --
   ------------------

   overriding function Create_State
    (Self : UTF16BE_Decoder;
     Mode : Decoder_Mode) return Abstract_Decoder_State'Class
   is
      pragma Unreferenced (Self);
      --  Used for dispatching of call only.

   begin
      return
        UTF16BE_Decoder_State'
         (Mode    => Mode,
          Skip_LF => False,
          State   => Accept_State,
          Code    => 0,
          Low     => 0);
   end Create_State;

   ------------------
   -- Create_State --
   ------------------

   overriding function Create_State
    (Self : UTF16LE_Decoder;
     Mode : Decoder_Mode) return Abstract_Decoder_State'Class
   is
      pragma Unreferenced (Self);
      --  Used for dispatching of call only.

   begin
      return
        UTF16LE_Decoder_State'
         (Mode    => Mode,
          Skip_LF => False,
          State   => Accept_State,
          Code    => 0,
          Low     => 0);
   end Create_State;

   ------------
   -- Decode --
   ------------

   overriding procedure Decode
    (Self   : UTF16BE_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     State  : in out Abstract_Decoder_State'Class;
     String : out Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      String := Matreshka.Internals.Strings.Allocate (Data'Length);
      Decode_Append (Self, Data, State, String);

      if String.Unused = 0 then
         Matreshka.Internals.Strings.Dereference (String);
         String := Matreshka.Internals.Strings.Shared_Empty'Access;
      end if;
   end Decode;

   ------------
   -- Decode --
   ------------

   overriding procedure Decode
    (Self   : UTF16LE_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     State  : in out Abstract_Decoder_State'Class;
     String : out Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      String := Matreshka.Internals.Strings.Allocate (Data'Length);
      Decode_Append (Self, Data, State, String);

      if String.Unused = 0 then
         Matreshka.Internals.Strings.Dereference (String);
         String := Matreshka.Internals.Strings.Shared_Empty'Access;
      end if;
   end Decode;

   -------------------
   -- Decode_Append --
   -------------------

   overriding procedure Decode_Append
    (Self   : UTF16BE_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     State  : in out Abstract_Decoder_State'Class;
     String : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      UTF16_State   : UTF16BE_Decoder_State
        renames UTF16BE_Decoder_State (State);

      Current_State : UTF16_DFA_State := UTF16_State.State;
      Current_Code  : Matreshka.Internals.Unicode.Code_Unit_32
        := UTF16_State.Code;
      Current_Low   : Matreshka.Internals.Unicode.Code_Unit_16
        := UTF16_State.Low;

   begin
      for J in Data'Range loop
         declare
            M : constant UTF16_Meta_Class := Meta_Class (Data (J));

         begin
            case Current_State is
               when Accept_State =>
                  Current_Code := Code_Unit_32 (Data (J));

               when BE_Second_Byte_Ordinary_State
                 | BE_Second_Byte_Surrogate_State
               =>
                  Current_Code :=
                    (Current_Code * 16#100#) or Code_Unit_32 (Data (J));

               when BE_Surrogate_First_Byte_State =>
                  Current_Low := Code_Unit_16 (Data (J));

               when BE_Surrogate_Second_Byte_State =>
                  Current_Code :=
                    Unchecked_Surrogate_Pair_To_Code_Point
                     (Code_Unit_16 (Current_Code),
                      (Current_Low * 16#100#) or Code_Unit_16 (Data (J)));

               when others =>
                  null;
            end case;

            Current_State :=
              BE_Transition (Current_State * 4 + UTF16_DFA_State (M));

            if Current_State = Accept_State then
               Unterminated_Append (String, State, Current_Code);
            end if;
         end;
      end loop;

      UTF16_State.State := Current_State;
      UTF16_State.Code  := Current_Code;
      UTF16_State.Low   := Current_Low;
      Matreshka.Internals.Strings.Fill_Null_Terminator (String);
   end Decode_Append;

   -------------------
   -- Decode_Append --
   -------------------

   overriding procedure Decode_Append
    (Self   : UTF16LE_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     State  : in out Abstract_Decoder_State'Class;
     String : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      UTF16_State   : UTF16LE_Decoder_State
        renames UTF16LE_Decoder_State (State);

      Current_State : UTF16_DFA_State := UTF16_State.State;
      Current_Code  : Matreshka.Internals.Unicode.Code_Unit_32
        := UTF16_State.Code;
      Current_Low   : Matreshka.Internals.Unicode.Code_Unit_16
        := UTF16_State.Low;

   begin
      for J in Data'Range loop
         declare
            M : constant UTF16_Meta_Class := Meta_Class (Data (J));

         begin
            case Current_State is
               when Accept_State =>
                  Current_Code := Code_Unit_32 (Data (J));

               when LE_Second_Byte_State =>
                  Current_Code :=
                    (Code_Unit_32 (Data (J)) * 16#100#) or Current_Code;

               when LE_Surrogate_First_Byte_State =>
                  Current_Low := Code_Unit_16 (Data (J));

               when LE_Surrogate_Second_Byte_State =>
                  Current_Code :=
                    Unchecked_Surrogate_Pair_To_Code_Point
                     (Code_Unit_16 (Current_Code),
                      (Code_Unit_16 (Data (J)) * 16#100#) or Current_Low);

               when others =>
                  null;
            end case;

            Current_State :=
              LE_Transition (Current_State * 4 + UTF16_DFA_State (M));

            if Current_State = Accept_State then
               Unterminated_Append (String, State, Current_Code);
            end if;
         end;
      end loop;

      UTF16_State.State := Current_State;
      UTF16_State.Code  := Current_Code;
      UTF16_State.Low   := Current_Low;
      Matreshka.Internals.Strings.Fill_Null_Terminator (String);
   end Decode_Append;

   --------------
   -- Is_Error --
   --------------

   overriding function Is_Error
    (Self : UTF16BE_Decoder_State) return Boolean is
   begin
      return Self.State = Reject_State;
   end Is_Error;

   --------------
   -- Is_Error --
   --------------

   overriding function Is_Error
    (Self : UTF16LE_Decoder_State) return Boolean is
   begin
      return Self.State = Reject_State;
   end Is_Error;

   -------------------
   -- Is_Mailformed --
   -------------------

   overriding function Is_Mailformed
    (Self : UTF16BE_Decoder_State) return Boolean is
   begin
      return Self.State /= Accept_State;
   end Is_Mailformed;

   -------------------
   -- Is_Mailformed --
   -------------------

   overriding function Is_Mailformed
    (Self : UTF16LE_Decoder_State) return Boolean is
   begin
      return Self.State /= Accept_State;
   end Is_Mailformed;

end Matreshka.Internals.Text_Codecs.UTF16;
