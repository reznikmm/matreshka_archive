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

   Colon : constant := 16#003A#;

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Symbol_Record_Array, Symbol_Record_Array_Access);

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Symbol_Table) is
      use type Matreshka.Internals.Strings.Shared_String_Access;

   begin
      for J in Self.Table'First .. Self.Last loop
         Matreshka.Internals.Strings.Dereference (Self.Table (J).String);
      end loop;

      Free (Self.Table);
   end Finalize;

   --------------------
   -- General_Entity --
   --------------------

   function General_Entity
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return Entity_Identifier is
   begin
      return Self.Table (Identifier).General_Entity;
   end General_Entity;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : in out Symbol_Table) is

      procedure Register_Predefined_Entity
       (Name   : League.Strings.Universal_String;
        Entity : Entity_Identifier);
      --  Registers predefined entity.

      procedure Register_Symbol (Name : League.Strings.Universal_String);

      --------------------------------
      -- Register_Predefined_Entity --
      --------------------------------

      procedure Register_Predefined_Entity
       (Name   : League.Strings.Universal_String;
        Entity : Entity_Identifier)
      is
         N : constant Matreshka.Internals.Strings.Shared_String_Access
           := League.Strings.Internals.Get_Shared (Name);

      begin
         Matreshka.Internals.Strings.Reference (N);

         Self.Last := Self.Last + 1;
         Self.Table (Self.Last) :=
          (String              => N,
           Namespace_Processed => True,
           Prefix_Name         => No_Symbol,
           Local_Name          => No_Symbol,
           Parameter_Entity    => No_Entity,
           General_Entity      => Entity);
      end Register_Predefined_Entity;

      ---------------------
      -- Register_Symbol --
      ---------------------

      procedure Register_Symbol (Name : League.Strings.Universal_String) is
         N : constant Matreshka.Internals.Strings.Shared_String_Access
           := League.Strings.Internals.Get_Shared (Name);

      begin
         Matreshka.Internals.Strings.Reference (N);

         Self.Last := Self.Last + 1;
         Self.Table (Self.Last) :=
          (String              => N,
           Namespace_Processed => True,
           Prefix_Name         => No_Symbol,
           Local_Name          => No_Symbol,
           Parameter_Entity    => No_Entity,
           General_Entity      => No_Entity);
      end Register_Symbol;

   begin
      Self.Table := new Symbol_Record_Array (0 .. 255);
      Self.Table (No_Symbol) :=
       (Matreshka.Internals.Strings.Shared_Empty'Access,
        True,
        No_Symbol,
        No_Symbol,
        No_Entity,
        No_Entity);
      Self.Last  := No_Symbol;

      --  Register predefined entities.

      Register_Predefined_Entity
       (Name   => League.Strings.To_Universal_String ("lt"),
        Entity => Entity_lt);
      Register_Predefined_Entity
       (Name   => League.Strings.To_Universal_String ("gt"),
        Entity => Entity_gt);
      Register_Predefined_Entity
       (Name   => League.Strings.To_Universal_String ("amp"),
        Entity => Entity_amp);
      Register_Predefined_Entity
       (Name   => League.Strings.To_Universal_String ("apos"),
        Entity => Entity_apos);
      Register_Predefined_Entity
       (Name   => League.Strings.To_Universal_String ("quot"),
        Entity => Entity_quot);

      --  Register well known names and namespaces.

      Register_Symbol (League.Strings.To_Universal_String ("xml"));
      Register_Symbol (League.Strings.To_Universal_String ("xmlns"));
      Register_Symbol
       (League.Strings.To_Universal_String
         ("http://www.w3.org/XML/1998/namespace"));
      Register_Symbol
       (League.Strings.To_Universal_String ("http://www.w3.org/2000/xmlns/"));
   end Initialize;

   ------------
   -- Insert --
   ------------

   procedure Insert
    (Self       : in out Symbol_Table;
     String     : not null Matreshka.Internals.Strings.Shared_String_Access;
     First      : Matreshka.Internals.Utf16.Utf16_String_Index;
     Size       : Matreshka.Internals.Utf16.Utf16_String_Index;
     Length     : Natural;
     Namespaces : Boolean;
     Identifier : out Symbol_Identifier)
   is
      use Matreshka.Internals.Unicode;
      use Matreshka.Internals.Utf16;

      D_Position  : Utf16_String_Index;
      D_Index     : Natural;
      C           : Code_Point;
      C_Position  : Utf16_String_Index;
      C_Index     : Natural;
      Found       : Boolean := False;
      N_Position  : Utf16_String_Index;
      T_Position  : Utf16_String_Index;
      Prefix_Name : Symbol_Identifier;
      Local_Name  : Symbol_Identifier;

   begin
      for J in Self.Table'First .. Self.Last loop
         if Self.Table (J).String.Unused = Size then
            N_Position := First;
            T_Position := 0;

            while N_Position < First + Size loop
               exit when
                 String.Value (N_Position)
                   /= Self.Table (J).String.Value (T_Position);

               N_Position := N_Position + 1;
               T_Position := T_Position + 1;
            end loop;

            if N_Position = First + Size then
               Identifier := J;
               Found := True;

               exit;
            end if;
         end if;
      end loop;

      if not Found then
         Self.Last := Self.Last + 1;
         Identifier := Self.Last;
         Self.Table (Identifier) :=
          (String              =>
             Matreshka.Internals.Strings.Operations.Slice
              (String, First, Size, Length),
           Namespace_Processed => False,
           Prefix_Name         => No_Symbol,
           Local_Name          => No_Symbol,
           Parameter_Entity    => No_Entity,
           General_Entity      => No_Entity);
      end if;

      if Namespaces
        and then not Self.Table (Identifier).Namespace_Processed
      then
         D_Position := First;
         D_Index    := 1;
         Found      := False;

         while D_Position < First + Size loop
            Unchecked_Next (String.Value, D_Position, C);
            D_Index := D_Index + 1;

            if C = Colon then
               if Found then
                  --  Second colon found in qualified name, document is not
                  --  wellformed.

                  Identifier := No_Symbol;

                  return;

               else
                  --  Colon occupy one code unit, use this fact instead of
                  --  more expensive Unchecked_Previous.

                  C_Position := D_Position - 1;
                  C_Index    := D_Index - 1;
                  Found      := True;
               end if;
            end if;
         end loop;

         if Found then
            if C_Position = First or C_Position = First + Size - 1 then
               --  Colon is first or last character in the qualified name,
               --  document is not wellformed.

               Identifier := No_Symbol;

               return;
            end if;

            --  XXX First character after colon must belong to NameStartChar!

            Insert
             (Self,
              String,
              First,
              C_Position - First,
              C_Index - 1,
              False,
              Prefix_Name);
            Insert
             (Self,
              String,
              C_Position + 1,
              First + Size - C_Position - 1,
              Length - C_Index,
              False,
              Local_Name);

            Self.Table (Identifier).Prefix_Name := Prefix_Name;
            Self.Table (Identifier).Local_Name  := Local_Name;

         else
            Self.Table (Identifier).Local_Name := Identifier;
         end if;

         Self.Table (Identifier).Namespace_Processed := True;
      end if;
   end Insert;

   ------------
   -- Insert --
   ------------

   procedure Insert
    (Self       : in out Symbol_Table;
     String     : not null Matreshka.Internals.Strings.Shared_String_Access;
     Identifier : out Symbol_Identifier) is
   begin
      Insert
       (Self, String, 0, String.Unused, String.Length, False, Identifier);
   end Insert;

   ----------------
   -- Local_Name --
   ----------------

   function Local_Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return Symbol_Identifier is
   begin
      return Self.Table (Identifier).Local_Name;
   end Local_Name;

   ----------------
   -- Local_Name --
   ----------------

   function Local_Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier)
       return not null Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return Self.Table (Self.Table (Identifier).Local_Name).String;
   end Local_Name;

   ------------
   -- Lookup --
   ------------

   function Lookup
    (Self   : Symbol_Table;
     String : not null Matreshka.Internals.Strings.Shared_String_Access;
     First  : Matreshka.Internals.Utf16.Utf16_String_Index;
     Size   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Length : Natural) return Symbol_Identifier is
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
      return Self.Table (Identifier).String;
   end Name;

   ----------
   -- Name --
   ----------

   function Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return League.Strings.Universal_String is
   begin
      return League.Strings.Internals.Create (Self.Table (Identifier).String);
   end Name;

   ----------------------
   -- Parameter_Entity --
   ----------------------

   function Parameter_Entity
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return Entity_Identifier is
   begin
      return Self.Table (Identifier).Parameter_Entity;
   end Parameter_Entity;

   -----------------
   -- Prefix_Name --
   -----------------

   function Prefix_Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return Symbol_Identifier is
   begin
      return Self.Table (Identifier).Prefix_Name;
   end Prefix_Name;

   ------------------------
   -- Set_General_Entity --
   ------------------------

   procedure Set_General_Entity
    (Self       : in out Symbol_Table;
     Identifier : Symbol_Identifier;
     Entity     : Entity_Identifier) is
   begin
      Self.Table (Identifier).General_Entity := Entity;
   end Set_General_Entity;

   --------------------------
   -- Set_Parameter_Entity --
   --------------------------

   procedure Set_Parameter_Entity
    (Self       : in out Symbol_Table;
     Identifier : Symbol_Identifier;
     Entity     : Entity_Identifier) is
   begin
      Self.Table (Identifier).Parameter_Entity := Entity;
   end Set_Parameter_Entity;

end Matreshka.Internals.XML.Symbol_Tables;
