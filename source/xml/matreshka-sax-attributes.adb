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

package body Matreshka.SAX.Attributes is

   use type Matreshka.Internals.Strings.Shared_String_Access;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Attribute) is
   begin
      Matreshka.Internals.Strings.Reference (Self.Namespace_URI);
      Matreshka.Internals.Strings.Reference (Self.Local_Name);
      Matreshka.Internals.Strings.Reference (Self.Qualified_Name);
      Matreshka.Internals.Strings.Reference (Self.Value);
   end Adjust;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Attribute) is
   begin
      if Self.Namespace_URI /= null then
         Matreshka.Internals.Strings.Dereference (Self.Namespace_URI);
      end if;

      if Self.Local_Name /= null then
         Matreshka.Internals.Strings.Dereference (Self.Local_Name);
      end if;

      if Self.Qualified_Name /= null then
         Matreshka.Internals.Strings.Dereference (Self.Qualified_Name);
      end if;

      if Self.Value /= null then
         Matreshka.Internals.Strings.Dereference (Self.Value);
      end if;
   end Finalize;

   ------------
   -- Length --
   ------------

   function Length (Self : SAX_Attributes'Class) return Natural is
   begin
      return Natural (Self.Attributes.Length);
   end Length;

   ----------------
   -- Local_Name --
   ----------------

   function Local_Name
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String is
   begin
      return
        League.Strings.Internals.Create
         (Self.Attributes.Element (Index).Local_Name);
   end Local_Name;

   -------------------
   -- Namespace_URI --
   -------------------

   function Namespace_URI
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String is
   begin
      return
        League.Strings.Internals.Create
         (Self.Attributes.Element (Index).Namespace_URI);
   end Namespace_URI;

   --------------------
   -- Qualified_Name --
   --------------------

   function Qualified_Name
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String is
   begin
      return
        League.Strings.Internals.Create
         (Self.Attributes.Element (Index).Qualified_Name);
   end Qualified_Name;

   -----------
   -- Value --
   -----------

   function Value
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String is
   begin
      return
        League.Strings.Internals.Create
         (Self.Attributes.Element (Index).Value);
   end Value;

end Matreshka.SAX.Attributes;
