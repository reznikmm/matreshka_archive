------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
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
--  This package provides symbol table to store frequently used strings,
--  allocate identifier for them and reduce number of memory allocations by
--  reusing shared strings.
------------------------------------------------------------------------------
with Ada.Unchecked_Deallocation;

with League.Strings.Internals;
with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.Unicode;

package body Matreshka.Internals.XML.Symbol_Tables is

   First_Symbol : constant Symbol_Identifier := No_Symbol + 1;

   procedure Register_Predefined_Entity
    (Self  : in out Symbol_Table;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String);
   --  Registers predefined entity.

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Symbol_Record_Array, Symbol_Record_Array_Access);

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Symbol_Table) is
      use type Matreshka.Internals.Strings.Shared_String_Access;

   begin
      for J in First_Symbol .. Self.Last loop
         Matreshka.Internals.Strings.Dereference (Self.Table (J).String);

         if Self.Table (J).PE_Replacement_Text /= null then
            Matreshka.Internals.Strings.Dereference
             (Self.Table (J).PE_Replacement_Text);
         end if;

         if Self.Table (J).GE_Replacement_Text /= null then
            Matreshka.Internals.Strings.Dereference
             (Self.Table (J).GE_Replacement_Text);
         end if;
      end loop;

      Free (Self.Table);
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : in out Symbol_Table) is
   begin
      Self.Table := new Symbol_Record_Array (First_Symbol .. 256);
      Self.Last  := No_Symbol;

      --  Register predefined entities.

      Register_Predefined_Entity
       (Self   => Self,
        Name   => League.Strings.To_Universal_String ("lt"),
        Value  => League.Strings.To_Universal_String ("&#60;"));
      Register_Predefined_Entity
       (Self   => Self,
        Name   => League.Strings.To_Universal_String ("gt"),
        Value  => League.Strings.To_Universal_String (">"));
      Register_Predefined_Entity
       (Self   => Self,
        Name   => League.Strings.To_Universal_String ("amp"),
        Value  => League.Strings.To_Universal_String ("&#38;"));
      Register_Predefined_Entity
       (Self   => Self,
        Name   => League.Strings.To_Universal_String ("apos"),
        Value  => League.Strings.To_Universal_String ("'"));
      Register_Predefined_Entity
       (Self   => Self,
        Name   => League.Strings.To_Universal_String ("quot"),
        Value  => League.Strings.To_Universal_String (""""));
   end Initialize;

   ------------
   -- Insert --
   ------------

   procedure Insert
    (Self           : in out Symbol_Table;
     String         :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Start_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
     Start_Index    : Positive;
     End_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
     End_Index      : Positive;
     Identifier     : out Symbol_Identifier)
   is
      use Matreshka.Internals.Unicode;
      use Matreshka.Internals.Utf16;

      N_Position : Utf16_String_Index;
      T_Position : Utf16_String_Index;

   begin
      for J in First_Symbol .. Self.Last loop
         if End_Position - Start_Position = Self.Table (J).String.Unused then
            N_Position := Start_Position;
            T_Position := 0;

            while N_Position < End_Position loop
               exit when
                 String.Value (N_Position)
                   /= Self.Table (J).String.Value (T_Position);

               N_Position := N_Position + 1;
               T_Position := T_Position + 1;
            end loop;

            if N_Position = End_Position then
               Identifier := J;

               return;
            end if;
         end if;
      end loop;

      Self.Last := Self.Last + 1;
      Self.Table (Self.Last) :=
       (String              =>
          Matreshka.Internals.Strings.Operations.Slice
           (String,
            Start_Position,
            End_Position - Start_Position,
            End_Index - Start_Index),
        Is_Parameter_Entity => False,
        Is_General_Entity   => False,
        Is_Unparsed_Entity  => False,
        Is_External_Entity  => False,
        PE_Replacement_Text => null,
        GE_Replacement_Text => null);
      Identifier := Self.Last;
   end Insert;

   ------------
   -- Lookup --
   ------------

   function Lookup
    (Self           : Symbol_Table;
     String         :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Start_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
     Start_Index    : Positive;
     End_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
     End_Index      : Positive) return Symbol_Identifier is
   begin
      return No_Symbol;
   end Lookup;

   ----------
   -- Name --
   ----------

   function Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier)
       return not null Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return null;
   end Name;

   ----------
   -- Name --
   ----------

   function Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return League.Strings.Universal_String is
   begin
      Matreshka.Internals.Strings.Reference (Self.Table (Identifier).String);

      return League.Strings.Internals.Wrap (Self.Table (Identifier).String);
   end Name;

   --------------------------------
   -- Register_Predefined_Entity --
   --------------------------------

   procedure Register_Predefined_Entity
    (Self  : in out Symbol_Table;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String)
   is
      N : constant Matreshka.Internals.Strings.Shared_String_Access
        := League.Strings.Internals.Get_Shared (Name);
      V : constant Matreshka.Internals.Strings.Shared_String_Access
        := League.Strings.Internals.Get_Shared (Value);

   begin
      Matreshka.Internals.Strings.Reference (N);
      Matreshka.Internals.Strings.Reference (V);

      Self.Last := Self.Last + 1;
      Self.Table (Self.Last) :=
       (String              => N,
        Is_Parameter_Entity => False,
        Is_General_Entity   => True,
        Is_Unparsed_Entity  => False,
        Is_External_Entity  => False,
        PE_Replacement_Text => null,
        GE_Replacement_Text => V);
   end Register_Predefined_Entity;

end Matreshka.Internals.XML.Symbol_Tables;
