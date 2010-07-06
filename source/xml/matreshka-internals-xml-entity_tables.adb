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
with League.Strings.Internals;

package body Matreshka.Internals.XML.Entity_Tables is

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Entity_Table) is
   begin
      null;
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : in out Entity_Table) is

      procedure Register_Predefined_Entity
       (Text : League.Strings.Universal_String);

      --------------------------------
      -- Register_Predefined_Entity --
      --------------------------------

      procedure Register_Predefined_Entity
       (Text : League.Strings.Universal_String)
      is
         T : constant Matreshka.Internals.Strings.Shared_String_Access
           := League.Strings.Internals.Get_Shared (Text);
         E : Entity_Identifier;

      begin
         Matreshka.Internals.Strings.Reference (T);
         New_Internal_General_Entity (Self, T, E);
      end Register_Predefined_Entity;

   begin
      Self.Data := new Entity_Array (1 .. 16);
      Self.Last := 0;

      Register_Predefined_Entity
       (League.Strings.To_Universal_String ("&#60;"));
      Register_Predefined_Entity
       (League.Strings.To_Universal_String (">"));
      Register_Predefined_Entity
       (League.Strings.To_Universal_String ("&#38;"));
      Register_Predefined_Entity
       (League.Strings.To_Universal_String ("'"));
      Register_Predefined_Entity
       (League.Strings.To_Universal_String (""""));
   end Initialize;

   -----------------------------------------
   -- Is_External_Unparsed_General_Entity --
   -----------------------------------------

   function Is_External_Unparsed_General_Entity
    (Self   : Entity_Table;
     Entity : Entity_Identifier) return Boolean is
   begin
      return Self.Data (Entity).Kind = External_Unparsed_General_Entity;
   end Is_External_Unparsed_General_Entity;

   -----------------------------------
   -- New_External_Parameter_Entity --
   -----------------------------------

   procedure New_External_Parameter_Entity
    (Self   : in out Entity_Table;
     Entity : out Entity_Identifier) is
   begin
      Self.Last := Self.Last + 1;
      Entity := Self.Last;
      Self.Data (Entity) :=
       (Kind             => External_Parameter_Entity,
        Notation         => No_Symbol,
        Replacement_Text => Matreshka.Internals.Strings.Shared_Empty'Access);
   end New_External_Parameter_Entity;

   ----------------------------------------
   -- New_External_Parsed_General_Entity --
   ----------------------------------------

   procedure New_External_Parsed_General_Entity
    (Self   : in out Entity_Table;
     Entity : out Entity_Identifier) is
   begin
      Self.Last := Self.Last + 1;
      Entity := Self.Last;
      Self.Data (Entity) :=
       (Kind             => External_Parsed_General_Entity,
        Notation         => No_Symbol,
        Replacement_Text => Matreshka.Internals.Strings.Shared_Empty'Access);
   end New_External_Parsed_General_Entity;

   ------------------------------------------
   -- New_External_Unparsed_General_Entity --
   ------------------------------------------

   procedure New_External_Unparsed_General_Entity
    (Self     : in out Entity_Table;
     Notation : Symbol_Identifier;
     Entity   : out Entity_Identifier) is
   begin
      Self.Last := Self.Last + 1;
      Entity := Self.Last;
      Self.Data (Entity) :=
       (Kind             => External_Unparsed_General_Entity,
        Notation         => Notation,
        Replacement_Text => Matreshka.Internals.Strings.Shared_Empty'Access);
   end New_External_Unparsed_General_Entity;

   ---------------------------------
   -- New_Internal_General_Entity --
   ---------------------------------

   procedure New_Internal_General_Entity
    (Self             : in out Entity_Table;
     Replacement_Text :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Entity           : out Entity_Identifier) is
   begin
      Self.Last := Self.Last + 1;
      Entity := Self.Last;
      Self.Data (Entity) :=
       (Kind             => Internal_General_Entity,
        Notation         => No_Symbol,
        Replacement_Text => Replacement_Text);
   end New_Internal_General_Entity;

   -----------------------------------
   -- New_Internal_Parameter_Entity --
   -----------------------------------

   procedure New_Internal_Parameter_Entity
    (Self             : in out Entity_Table;
     Replacement_Text :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Entity           : out Entity_Identifier) is
   begin
      Self.Last := Self.Last + 1;
      Entity := Self.Last;
      Self.Data (Entity) :=
       (Kind             => Internal_Parameter_Entity,
        Notation         => No_Symbol,
        Replacement_Text => Replacement_Text);
   end New_Internal_Parameter_Entity;

   ----------------------
   -- Replacement_Text --
   ----------------------

   function Replacement_Text
    (Self   : Entity_Table;
     Entity : Entity_Identifier)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return Self.Data (Entity).Replacement_Text;
   end Replacement_Text;

   --------------------------
   -- Set_Replacement_Text --
   --------------------------

   procedure Set_Replacement_Text
    (Self             : in out Entity_Table;
     Entity           : Entity_Identifier;
     Replacement_Text :
       not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Data (Entity).Replacement_Text := Replacement_Text;
   end Set_Replacement_Text;

end Matreshka.Internals.XML.Entity_Tables;
