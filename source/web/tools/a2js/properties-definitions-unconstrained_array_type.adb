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
-- Copyright © 2015-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
with Asis.Elements;

with Properties.Tools;

package body Properties.Definitions.Unconstrained_Array_Type is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Decl            : constant Asis.Declaration :=
        Asis.Elements.Enclosing_Element (Element);
      Is_Array_Buffer : constant Boolean :=
        Properties.Tools.Is_Array_Buffer (Decl);
      Is_Array_Of_Simple : constant Boolean :=
        Engine.Boolean.Get_Property (Element, Engines.Is_Array_Of_Simple);

      Result          : League.Strings.Universal_String;
      Text            : League.Strings.Universal_String;

   begin
      Result.Append ("(function (){");  --  Wrapper
      Result.Append ("var _result = function (_from,_to){");  --  Constructor
      Result.Append ("var _first=_from.map (_ec._pos);");
      Result.Append ("var _len=_to.map (function (_to, i)" &
                       "{ return _ec._pos(_to) - _first[i] + 1; });");
      Result.Append ("var _length=_len.reduce (function (a, b)" &
                       "{ return a * b; }, 1);");

      if Is_Array_Buffer then
         declare
            Comp : constant Asis.Component_Definition :=
              Asis.Definitions.Array_Component_Definition (Element);
            View : constant Asis.Definition :=
              Asis.Definitions.Component_Definition_View (Comp);
            Size : constant League.Strings.Universal_String :=
              Engine.Text.Get_Property (View, Engines.Size);
            Align : constant Integer :=
              Engine.Integer.Get_Property (View, Engines.Alignment);
            Image : constant Wide_Wide_String :=
              Integer'Wide_Wide_Image (Align - 1);
         begin
            Result.Append ("this._element_size =");
            Result.Append (Size);  --  Size always x8 for TypedArray
            Result.Append ("/8;");
            Result.Append
              ("this._ArrayBuffer(_length * ((this._element_size + ");
            Result.Append (Image (2 .. Image'Last));
            Result.Append (") & ~");
            Result.Append (Image (2 .. Image'Last));
            Result.Append ("));");

            if not Is_Array_Of_Simple then
               Text := Engine.Text.Get_Property
                 (Asis.Definitions.Array_Component_Definition (Element),
                  Name);
               Result.Append ("this._element_type = ");
               Result.Append (Text);
               Result.Append (";");
            end if;
         end;

      else
         Result.Append ("var _data=Array(_length);");
         Result.Append ("for (var _j=0;_j<_length;_j++)");
         Result.Append ("_data[_j] = ");

         Text := Engine.Text.Get_Property
           (Asis.Definitions.Array_Component_Definition (Element),
            Engines.Initialize);

         Result.Append (Text);
         Result.Append (";");

         Result.Append ("this.A=_data;");
      end if;

      Result.Append ("this._first=_from;");
      Result.Append ("this._last=_to;");
      Result.Append ("this._length=_len;");
      Result.Append ("this._offset=0;");
      Result.Append ("};");  --  End of Constructor

      Result.Append ("_result.prototype=");

      if Is_Array_Buffer then
         Result.Append ("Object.create(_ec._ada_array_ta.prototype);");

      else
         Result.Append ("_ec.");

         if Is_Array_Of_Simple then
            Result.Append ("_ada_array_simple");
         else
            Result.Append ("_ada_array");
         end if;

         Result.Append (".prototype;");
      end if;

      Result.Append ("return _result;");
      Result.Append ("})();");  --  End of Wrapper and call it
      return Result;
   end Code;

end Properties.Definitions.Unconstrained_Array_Type;
