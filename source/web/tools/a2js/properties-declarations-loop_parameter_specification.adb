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
with Asis.Declarations;

package body Properties.Declarations.Loop_Parameter_Specification is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String
   is
      Var    : League.Strings.Universal_String;
      Text   : League.Strings.Universal_String;
      Names  : constant Asis.Defining_Name_List :=
        Asis.Declarations.Names (Element);
      Cond   : constant League.Strings.Universal_String :=
        Engine.Text.Get_Property (Element, Engines.Condition);
      Last : constant League.Strings.Universal_String :=
        Engine.Unique.Get (Element, "_last");
   begin
      Text.Append ("(");
      Text.Append (Cond);
      Text.Append ("=");
      Var := Engine.Text.Get_Property (Names (1), Name);
      Text.Append (Var);
      Text.Append ("!=");
      Text.Append (Last);
      Text.Append (") && (");
      Text.Append (Var);
      Text.Append ("=_ec._succ(");
      Text.Append (Var);
      Text.Append ("))");

      return Text;
   end Code;

   ---------------
   -- Condition --
   ---------------

   function Condition
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Name);
      Result : constant League.Strings.Universal_String :=
        Engine.Unique.Get (Element, "_cond");
   begin
      return Result;
   end Condition;

   ----------------
   -- Initialize --
   ----------------

   function Initialize
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String
   is
      pragma Unreferenced (Name);
      Var    : League.Strings.Universal_String;
      Text   : League.Strings.Universal_String;
      Down   : League.Strings.Universal_String;
      Names  : constant Asis.Defining_Name_List :=
        Asis.Declarations.Names (Element);
      Bounds : constant Asis.Discrete_Subtype_Definition :=
        Asis.Declarations.Specification_Subtype_Definition (Element);
      Last : constant League.Strings.Universal_String :=
        Engine.Unique.Get (Element, "_last");
      Cond   : constant League.Strings.Universal_String :=
        Engine.Text.Get_Property (Element, Engines.Condition);
   begin
      Text.Append ("var ");
      Text.Append (Last);
      Text.Append ("=");
      Down := Engine.Text.Get_Property (Bounds, Engines.Upper);
      Text.Append (Down);
      Text.Append (",");
      Var := Engine.Text.Get_Property (Names (1), Engines.Code);
      Text.Append (Var);
      Text.Append ("=");
      Down := Engine.Text.Get_Property (Bounds, Engines.Lower);
      Text.Append (Down);
      Text.Append (",");
      Text.Append (Cond);
      Text.Append ("=");
      Text.Append (Var);
      Text.Append ("<=");
      Text.Append (Last);

      return Text;
   end Initialize;

end Properties.Declarations.Loop_Parameter_Specification;
