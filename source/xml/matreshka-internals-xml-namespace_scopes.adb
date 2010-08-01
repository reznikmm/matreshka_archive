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
with Ada.Unchecked_Deallocation;

package body Matreshka.Internals.XML.Namespace_Scopes is

   procedure Free is
     new Ada.Unchecked_Deallocation (Mapping_Array, Mapping_Array_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation (Scope_Array, Scope_Array_Access);

   ----------
   -- Bind --
   ----------

   procedure Bind
    (Self      : in out Namespace_Scope;
     Prefix    : Symbol_Identifier;
     Namespace : Symbol_Identifier) is
   begin
      if Self.Scopes (Self.Last).Count /= 0 then
         Self.Scopes (Self.Last).Count := Self.Scopes (Self.Last).Count - 1;
         Self.Last := Self.Last + 1;
         Self.Scopes (Self.Last) :=
          (0,
           Self.Scopes (Self.Last - 1).Last + 1,
           Self.Scopes (Self.Last - 1).Last);
      end if;

      --  Sanity check: be sure that prefix is not mapped twice in the same
      --  scope.

      for J in Self.Scopes (Self.Last).First
                 .. Self.Scopes (Self.Last).Last
      loop
         if Self.Mappings (J).Prefix = Prefix then
            raise Program_Error;
         end if;
      end loop;

      Self.Scopes (Self.Last).Last := Self.Scopes (Self.Last).Last + 1;
      Self.Mappings (Self.Scopes (Self.Last).Last) := (Prefix, Namespace);
   end Bind;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Namespace_Scope) is
   begin
      Free (Self.Mappings);
      Free (Self.Scopes);
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : in out Namespace_Scope) is
   begin
      Self.Mappings := new Mapping_Array (1 .. 16);
      Self.Mappings (1) := (Symbol_xml, Symbol_xml_NS);
      Self.Mappings (2) := (Symbol_xmlns, Symbol_xmlns_NS);
      Self.Scopes := new Scope_Array (1 .. 16);
      Self.Scopes (1) := (0, 1, 2);
      Self.Last := 1;
   end Initialize;

   ---------------
   -- Pop_Scope --
   ---------------

   procedure Pop_Scope
    (Self     : in out Namespace_Scope;
     On_Unmap : not null access procedure (Prefix : Symbol_Identifier)) is
   begin
      if Self.Scopes (Self.Last).Count /= 0 then
         Self.Scopes (Self.Last).Count := Self.Scopes (Self.Last).Count - 1;

      else
         for J
           in Self.Scopes (Self.Last).First .. Self.Scopes (Self.Last).Last
         loop
            On_Unmap (Self.Mappings (J).Prefix);
         end loop;

         Self.Last := Self.Last - 1;
      end if;
   end Pop_Scope;

   ----------------
   -- Push_Scope --
   ----------------

   procedure Push_Scope (Self : in out Namespace_Scope) is
   begin
      Self.Scopes (Self.Last).Count := Self.Scopes (Self.Last).Count + 1;
   end Push_Scope;

   -------------
   -- Resolve --
   -------------

   function Resolve
    (Self   : Namespace_Scope;
     Prefix : Symbol_Identifier) return Symbol_Identifier is
   begin
      for J in reverse 1 .. Self.Scopes (Self.Last).Last loop
         if Self.Mappings (J).Prefix = Prefix then
            return Self.Mappings (J).Namespace;
         end if;
      end loop;

      return No_Symbol;
   end Resolve;

end Matreshka.Internals.XML.Namespace_Scopes;
