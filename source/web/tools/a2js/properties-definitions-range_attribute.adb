------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Asis.Definitions;
with Asis.Expressions;

package body Properties.Definitions.Range_Attribute is

   generic
      Prop : Wide_Wide_String;
   function Bound
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition)
      return League.Strings.Universal_String;

   -----------
   -- Bound --
   -----------

   function Bound
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition)
      return League.Strings.Universal_String
   is
      Attr : constant Asis.Expression :=
        Asis.Definitions.Range_Attribute (Element);
      Args : constant Asis.Expression_List :=
        Asis.Expressions.Attribute_Designator_Expressions (Attr);
      Text : League.Strings.Universal_String;
      Down : League.Strings.Universal_String;
   begin
      Text := Engine.Text.Get_Property
        (Asis.Expressions.Prefix (Attr), Engines.Code);
      Text.Append ("._");
      Text.Append (Prop);
      Text.Append ("[");

      if Args'Length > 0 then
         Down := Engine.Text.Get_Property (Args (Args'First), Engines.Code);
         Text.Append (Down);
         Text.Append ("-1]");
      else
         Text.Append ("0]");
      end if;

      return Text;
   end Bound;

   -----------
   -- Lower --
   -----------

   function Lower
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String
   is
      pragma Unreferenced (Name);
      function Inst is new Bound ("first");
   begin
      return Inst (Engine, Element);
   end Lower;

   -----------
   -- Upper --
   -----------

   function Upper
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String
   is
      pragma Unreferenced (Name);
      function Inst is new Bound ("last");
   begin
      return Inst (Engine, Element);
   end Upper;

end Properties.Definitions.Range_Attribute;
