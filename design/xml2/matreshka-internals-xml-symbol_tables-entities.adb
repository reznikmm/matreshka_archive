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

package body Matreshka.Internals.XML.Symbol_Tables.Entities is

   -------------------------------------
   -- General_Entity_Replacement_Text --
   -------------------------------------

   function General_Entity_Replacement_Text
    (Self   : Symbol_Table;
     Symbol : Symbol_Identifier)
       return Matreshka.Internals.Strings.Shared_String_Access
   is
      pragma Assert (Symbol in 1 .. Self.Last);

   begin
      return Self.Table (Symbol).GE_Replacement_Text;
   end General_Entity_Replacement_Text;

   -----------------------
   -- Is_General_Entity --
   -----------------------

   function Is_General_Entity
    (Self   : Symbol_Table;
     Symbol : Symbol_Identifier) return Boolean
   is
      pragma Assert (Symbol in 1 .. Self.Last);

   begin
      return Self.Table (Symbol).Is_General_Entity;
   end Is_General_Entity;

   -------------------------
   -- Is_Parameter_Entity --
   -------------------------

   function Is_Parameter_Entity
    (Self   : Symbol_Table;
     Symbol : Symbol_Identifier) return Boolean
   is
      pragma Assert (Symbol in 1 .. Self.Last);

   begin
      return Self.Table (Symbol).Is_Parameter_Entity;
   end Is_Parameter_Entity;

   ------------------------
   -- Is_Unparsed_Entity --
   ------------------------

   function Is_Unparsed_Entity
    (Self   : Symbol_Table;
     Symbol : Symbol_Identifier) return Boolean
   is
      pragma Assert (Symbol in 1 .. Self.Last);

   begin
      return Self.Table (Symbol).Is_Unparsed_Entity;
   end Is_Unparsed_Entity;

   ---------------------------------------
   -- Parameter_Entity_Replacement_Text --
   ---------------------------------------

   function Parameter_Entity_Replacement_Text
    (Self   : Symbol_Table;
     Symbol : Symbol_Identifier)
       return Matreshka.Internals.Strings.Shared_String_Access
   is
      pragma Assert (Symbol in 1 .. Self.Last);

   begin
      return Self.Table (Symbol).PE_Replacement_Text;
   end Parameter_Entity_Replacement_Text;

   -----------------------------------------
   -- Set_General_Entity_Replacement_Text --
   -----------------------------------------

   procedure Set_General_Entity_Replacement_Text
    (Self   : in out Symbol_Table;
     Symbol : Symbol_Identifier;
     Text   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      pragma Assert (Symbol in 1 .. Self.Last);

   begin
      Self.Table (Symbol).GE_Replacement_Text := Text;
   end Set_General_Entity_Replacement_Text;

   ---------------------------
   -- Set_Is_General_Entity --
   ---------------------------

   procedure Set_Is_General_Entity
    (Self   : in out Symbol_Table;
     Symbol : Symbol_Identifier;
     To     : Boolean)
   is
      pragma Assert (Symbol in 1 .. Self.Last);

   begin
      Self.Table (Symbol).Is_General_Entity := To;
   end Set_Is_General_Entity;

   -----------------------------
   -- Set_Is_Parameter_Entity --
   -----------------------------

   procedure Set_Is_Parameter_Entity
    (Self   : in out Symbol_Table;
     Symbol : Symbol_Identifier;
     To     : Boolean)
   is
      pragma Assert (Symbol in 1 .. Self.Last);

   begin
      Self.Table (Symbol).Is_Parameter_Entity := To;
   end Set_Is_Parameter_Entity;

   ----------------------------
   -- Set_Is_Unparsed_Entity --
   ----------------------------

   procedure Set_Is_Unparsed_Entity
    (Self   : in out Symbol_Table;
     Symbol : Symbol_Identifier;
     To     : Boolean)
   is
      pragma Assert (Symbol in 1 .. Self.Last);

   begin
      Self.Table (Symbol).Is_Unparsed_Entity := To;
   end Set_Is_Unparsed_Entity;

   -------------------------------------------
   -- Set_Parameter_Entity_Replacement_Text --
   -------------------------------------------

   procedure Set_Parameter_Entity_Replacement_Text
    (Self   : in out Symbol_Table;
     Symbol : Symbol_Identifier;
     Text   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      pragma Assert (Symbol in 1 .. Self.Last);

   begin
      Self.Table (Symbol).PE_Replacement_Text := Text;
   end Set_Parameter_Entity_Replacement_Text;

end Matreshka.Internals.XML.Symbol_Tables.Entities;
