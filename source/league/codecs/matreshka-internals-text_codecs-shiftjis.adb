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
--  The http://x0213.org/codetable/sjis-0213-2004-std.txt file was used to
--  construct conversion tables:
--
--  Shift_JIS-2004 (JIS X 0213:2004 Appendix 1) vs Unicode mapping table
--  
--  Date: 3 May 2009
--  License:
--  	Copyright (C) 2001 earthian@tama.or.jp, All Rights Reserved.
--  	Copyright (C) 2001 I'O, All Rights Reserved.
--  	Copyright (C) 2006, 2009 Project X0213, All Rights Reserved.
--  	You can use, modify, distribute this table freely.
------------------------------------------------------------------------------
with Matreshka.Internals.Strings.Configuration;
with Matreshka.Internals.Text_Codecs.SHIFTJIS.Tables;
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Text_Codecs.SHIFTJIS is

   Accept_Single_State : constant SHIFTJIS_DFA_State := 0;
   Accept_Double_State : constant SHIFTJIS_DFA_State := 1;
   Reject_State        : constant SHIFTJIS_DFA_State := 2;

   Transition : constant
     array (SHIFTJIS_DFA_State range 0 .. 31) of SHIFTJIS_DFA_State
       := (0, 0, 3, 3, 2, 2, 2, 2,
           0, 0, 3, 3, 2, 2, 2, 2,
           2, 2, 2, 2, 2, 2, 2, 2,
           1, 2, 1, 2, 1, 2, 2, 2);

   -------------------
   -- Decode_Append --
   -------------------

   overriding procedure Decode_Append
    (Self   : in out SHIFTJIS_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     String : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      use type Matreshka.Internals.Unicode.Code_Point;
      use type Matreshka.Internals.Utf16.Utf16_String_Index;

      Current_State : SHIFTJIS_DFA_State         := Self.State;
      Current_First : Ada.Streams.Stream_Element := Self.First;
      Current_Code  : Matreshka.Internals.Unicode.Code_Unit_32;

   begin
      Matreshka.Internals.Strings.Mutate (String, String.Unused + Data'Length);

      for J in Data'Range loop
         declare
            M : constant SHIFTJIS_Meta_Class := Tables.Meta_Class (Data (J));

         begin
            Current_State :=
              Transition (Current_State * 8 + SHIFTJIS_DFA_State (M));

            if Current_State = Accept_Single_State then
               Self.Unchecked_Append
                (Self, String, Tables.Decode_Single (Data (J)));

            elsif Current_State = Accept_Double_State then
               Current_Code := Tables.Decode_Double (Current_First) (Data (J));

               if Current_Code = 16#0000# then
                  Current_State := Reject_State;

               elsif Current_Code in Tables.Expansion'Range then
                  Self.Unchecked_Append
                   (Self, String, Tables.Expansion (Current_Code).First);
                  Self.Unchecked_Append
                   (Self, String, Tables.Expansion (Current_Code).Second);

               else
                  Self.Unchecked_Append (Self, String, Current_Code);
               end if;

            else
               Current_First := Data (J);
            end if;
         end;
      end loop;

      Self.State := Current_State;
      Self.First := Current_First;
      Matreshka.Internals.Strings.Configuration.Handler.Fill_Null_Terminator
       (String);
   end Decode_Append;

   -------------
   -- Decoder --
   -------------

   function Decoder (Mode : Decoder_Mode) return Abstract_Decoder'Class is
   begin
      case Mode is
         when Raw =>
            return
              SHIFTJIS_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_Raw'Access,
                State            => Accept_Single_State,
                First            => 0);

         when XML_1_0 =>
            return
              SHIFTJIS_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML10'Access,
                State            => Accept_Single_State,
                First            => 0);

         when XML_1_1 =>
            return
              SHIFTJIS_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML11'Access,
                State            => Accept_Single_State,
                First            => 0);
      end case;
   end Decoder;

   --------------
   -- Is_Error --
   --------------

   overriding function Is_Error (Self : SHIFTJIS_Decoder) return Boolean is
   begin
      return Self.State = Reject_State;
   end Is_Error;

   -------------------
   -- Is_Mailformed --
   -------------------

   overriding function Is_Mailformed (Self : SHIFTJIS_Decoder) return Boolean is
   begin
      return Self.State not in Accept_Single_State .. Accept_Double_State;
   end Is_Mailformed;

end Matreshka.Internals.Text_Codecs.SHIFTJIS;
