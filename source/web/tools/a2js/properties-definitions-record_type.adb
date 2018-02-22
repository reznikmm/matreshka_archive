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
with Asis.Elements;
with Asis.Declarations;
with Asis.Definitions;

with Properties.Tools;

package body Properties.Definitions.Record_Type is

   ---------------
   -- Alignment --
   ---------------

   function Alignment
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Integer_Property) return Integer
   is
      List : constant Asis.Declaration_List :=
        Properties.Tools.Corresponding_Type_Components (Element);
      Result : Integer := 1;
      Down   : Integer;
   begin
      for J in List'Range loop
         Down := Engine.Integer.Get_Property (List (J), Name);
         Result := Integer'Max (Result, Down);
      end loop;

      return Result;
   end Alignment;

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

      Result          : League.Strings.Universal_String;
      Size            : League.Strings.Universal_String;

   begin
      Result.Append ("(function (){");  --  Wrapper
      Result.Append ("var _result =  function (");  --  Type constructor

      --  Declare type's discriminant
      declare
         List : constant Asis.Discriminant_Association_List :=
           Properties.Tools.Corresponding_Type_Discriminants (Element);
      begin
         for J in List'Range loop
            declare
               Id    : League.Strings.Universal_String;
               Names : constant Asis.Defining_Name_List :=
                 Asis.Declarations.Names (List (J));
            begin
               for N in Names'Range loop
                  Id := Engine.Text.Get_Property (Names (N), Name);
                  Result.Append (Id);

                  if J /= List'Last or N /= Names'Last then
                     Result.Append (",");
                  end if;
               end loop;
            end;
         end loop;

         Result.Append ("){");

         if Is_Array_Buffer then
            Size := Engine.Text.Get_Property (Element, Engines.Size);
            Result.Append ("this.A = new ArrayBuffer(");
            Result.Append (Size);
            Result.Append ("/8);");
            Result.Append ("this._u8 = new Uint8Array(this.A);");
            Result.Append ("this._f32 = new Float32Array(this.A);");
         end if;

         --  Copy type's discriminant
         for J in List'Range loop
            declare
               Id    : League.Strings.Universal_String;
               Names : constant Asis.Defining_Name_List :=
                 Asis.Declarations.Names (List (J));
               Init  : constant Asis.Expression :=
                 Asis.Declarations.Initialization_Expression (List (J));
            begin
               for N in Names'Range loop
                  Id := Engine.Text.Get_Property (Names (N), Name);

                  if not Asis.Elements.Is_Nil (Init) then
                     Result.Append ("if (typeof ");
                     Result.Append (Id);
                     Result.Append ("=== 'undefined')");
                     Result.Append (Id);
                     Result.Append ("=");
                     Result.Append (Engine.Text.Get_Property (Init, Name));
                     Result.Append (";");
                  end if;

                  Result.Append ("this.");
                  Result.Append (Id);
                  Result.Append (" = ");
                  Result.Append (Id);
                  Result.Append (";");
               end loop;
            end;
         end loop;
      end;

      --  Initialize type's components
      declare
         List : constant Asis.Declaration_List :=
           Properties.Tools.Corresponding_Type_Components (Element);
      begin
         for J in List'Range loop
            declare
               Id    : League.Strings.Universal_String;
               Init  : constant Asis.Expression :=
                 Asis.Declarations.Initialization_Expression (List (J));
               Names : constant Asis.Defining_Name_List :=
                 Asis.Declarations.Names (List (J));
               Value : League.Strings.Universal_String;
            begin
               if not Asis.Elements.Is_Nil (Init) then
                  Value := Engine.Text.Get_Property (Init, Name);
               end if;

               for N in Names'Range loop
                  Id := Engine.Text.Get_Property (Names (N), Name);
                  Result.Append ("this.");
                  Result.Append (Id);
                  Result.Append (" = ");

                  if Asis.Elements.Is_Nil (Init) then
                     Result.Append
                       (Engine.Text.Get_Property
                          (List (J), Engines.Initialize));
                  else
                     Result.Append (Value);
                  end if;

                  Result.Append (";");
               end loop;
            end;
         end loop;
      end;

      Result.Append ("};");  --  End of constructor

      --  Limited types should also have _cast, so we need _assign
      --  Update prototype with _assign
      Result.Append ("_result.prototype._assign = function(src){");

      declare
         Down : League.Strings.Universal_String;
         Def  : constant Asis.Definition :=
           Asis.Definitions.Record_Definition (Element);
         List : constant Asis.Declaration_List :=
           Properties.Tools.Corresponding_Type_Components (Def);
      begin
         Down := Engine.Text.Get_Property
           (List  => List,
            Name  => Engines.Assign,
            Empty => League.Strings.Empty_Universal_String,
            Sum   => Properties.Tools.Join'Access);

         Result.Append (Down);

         Result.Append ("};");  --  End of _assign
      end;

      Result.Append ("_result._cast = function _cast (value){");
      Result.Append ("var result = new _result(");

      declare
         Down : League.Strings.Universal_String;
         List : constant Asis.Declaration_List :=
           Properties.Tools.Corresponding_Type_Discriminants (Element);
      begin
         for J in List'Range loop
            declare
               Names : constant Asis.Defining_Name_List :=
                 Asis.Declarations.Names (List (J));
            begin
               for K in Names'Range loop
                  Down := Engine.Text.Get_Property (Names (K), Name);

                  Result.Append ("value.");
                  Result.Append (Down);

                  if K /= Names'Last or J /= List'Last then
                     Result.Append (",");
                  end if;
               end loop;
            end;
         end loop;

      end;

      Result.Append (");");
      Result.Append ("result._assign (value);");
      Result.Append ("return result;");
      Result.Append ("};");

      Result.Append ("var props = {};");

      declare
         List  : constant Asis.Declaration_List :=
           Properties.Tools.Corresponding_Type_Components (Element);
         Prev  : League.Strings.Universal_String;
      begin
         Prev.Append ("0");

         for J in List'Range loop
            declare
               Id    : League.Strings.Universal_String;
               Comp  : constant Asis.Definition :=
                 Asis.Declarations.Object_Declaration_View (List (J));
               Def   : constant Asis.Definition :=
                 Asis.Definitions.Component_Definition_View (Comp);
               Names : constant Asis.Defining_Name_List :=
                 Asis.Declarations.Names (List (J));
               Down : League.Strings.Universal_String;
               Comp_Size : League.Strings.Universal_String;
               Is_Simple_Type : Boolean;
            begin
               if Is_Array_Buffer then
                  Comp_Size := Engine.Text.Get_Property
                    (List (J), Engines.Size);
                  Is_Simple_Type := Engine.Boolean.Get_Property
                    (Def, Engines.Is_Simple_Type);
                  if Is_Simple_Type then
                     Down := Engine.Text.Get_Property
                       (Def, Engines.Typed_Array_Item_Type);
                  else
                     Down := Engine.Text.Get_Property (Def, Name);
                  end if;
               end if;

               for N in Names'Range loop
                  Id := Engine.Text.Get_Property (Names (N), Name);

                  Result.Append ("props._pos_");
                  Result.Append (Id);
                  Result.Append ("={value: ");

                  if Is_Array_Buffer then
                     Result.Append (Prev);
                     Result.Append ("};");
                     Result.Append ("props._size_");
                     Result.Append (Id);
                     Result.Append ("={value: ");
                     Result.Append (Comp_Size);
                     Result.Append ("}; props.");
                     Result.Append (Id);
                     Result.Append ("= {get: function(){ return ");

                     if Is_Simple_Type then
                        Result.Append ("this.");
                        Result.Append (Down);
                        Result.Append ("[");
                        Result.Append ("this._pos_");
                        Result.Append (Id);
                        Result.Append ("*8/this._size_");
                        Result.Append (Id);
                        Result.Append ("]");
                     else
                        Result.Append (Down);
                        Result.Append (".prototype._from_dataview (");
                        Result.Append ("new DataView (this.A,");
                        Result.Append ("this._u8.byteOffset+this._pos_");
                        Result.Append (Id);
                        Result.Append (",this._size_");
                        Result.Append (Id);
                        Result.Append ("/8))");
                     end if;

                     Result.Append (";},");
                     Result.Append ("set: function(_v){ ");
                     if Is_Simple_Type then
                        Result.Append ("this.");
                        Result.Append (Down);
                        Result.Append ("[");
                        Result.Append ("this._pos_");
                        Result.Append (Id);
                        Result.Append ("*8/this._size_");
                        Result.Append (Id);
                        Result.Append ("]=_v");
                     else
                        Result.Append (Down);
                        Result.Append (".prototype._from_dataview (");
                        Result.Append ("new DataView (this.A,");
                        Result.Append ("this._u8.byteOffset+this._pos_");
                        Result.Append (Id);
                        Result.Append (",this._size_");
                        Result.Append (Id);
                        Result.Append ("/8))._assign(_v)");
                     end if;
                     Result.Append (";}};");

                     Prev.Clear;
                     Prev.Append ("props._pos_");
                     Prev.Append (Id);
                     Prev.Append (".value+props._size_");
                     Prev.Append (Id);
                     Prev.Append (".value/8");
                  else
                     Result.Append ("'");
                     Result.Append (Id);
                     Result.Append ("'};");
                  end if;
               end loop;
            end;
         end loop;
      end;

      Result.Append ("Object.defineProperties(_result.prototype, props);");

      if Is_Array_Buffer then
         --  Set _from_dataview
         Result.Append
           ("_result._from_dataview = function _from_dataview(_u8){");
         Result.Append ("var result = Object.create (_result.prototype);");
         Result.Append ("result.A = _u8.buffer;");
         Result.Append
           ("result._f32 = new Float32Array(_u8.buffer,_u8.byteOffset,");
         Result.Append (Size);
         Result.Append ("/8/4);");
         Result.Append ("result._u8 = _u8;");
         Result.Append ("return result;");
         Result.Append ("};");  --  End of _from_dataview
      end if;

      Result.Append ("return _result;");
      Result.Append ("})();");  --  End of Wrapper and call it
      return Result;
   end Code;

   ----------------
   -- Initialize --
   ----------------

   function Initialize
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String
   is
      List : constant Asis.Declaration_List :=
        Properties.Tools.Corresponding_Type_Components (Element);
      Text : League.Strings.Universal_String;
      Down : League.Strings.Universal_String;
   begin
      Text.Append ("{");

      for J in List'Range loop
         declare
            Id    : League.Strings.Universal_String;
            Names : constant Asis.Defining_Name_List :=
              Asis.Declarations.Names (List (J));
         begin
            Down := Engine.Text.Get_Property (List (J), Name);

            for N in Names'Range loop
               Id := Engine.Text.Get_Property (Names (N), Engines.Code);
               Text.Append (Id);
               Text.Append (":");
               Text.Append (Down);

               if N /= Names'Last then
                  Text.Append (",");
               end if;
            end loop;

            if J /= List'Last then
               Text.Append (",");
            end if;
         end;
      end loop;

      Text.Append ("}");
      return Text;
   end Initialize;

   ----------
   -- Size --
   ----------

   function Size
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      List : constant Asis.Declaration_List :=
        Properties.Tools.Corresponding_Type_Components (Element);
      Result : League.Strings.Universal_String;
      Down   : League.Strings.Universal_String;
   begin
      Result.Append ("(0");

      for J in List'Range loop
         Down := Engine.Text.Get_Property (List (J), Name);
         Result.Append ("+");
         Result.Append (Down);
      end loop;

      Result.Append (")");
      return Result;
   end Size;

end Properties.Definitions.Record_Type;
