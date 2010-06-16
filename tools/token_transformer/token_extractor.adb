------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
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
with Ada.Characters.Conversions;
with Ada.Characters.Handling;

with GNAT.Regpat;

with Asis.Declarations;
with Asis.Definitions;
with Asis.Elements;
with Asis.Expressions;
with Asis.Iterator;
with Asis.Statements;
with Asis.Text;

package body Token_Extractor is

   type State_Information is null record;

   procedure Process_Ordinary_Type_Declaration (Element : Asis.Element);

   procedure Pre_Operation
     (Element : Asis.Element;
      Control : in out Asis.Traverse_Control;
      State   : in out State_Information);

   procedure Post_Operation
     (Element : Asis.Element;
      Control : in out Asis.Traverse_Control;
      State   : in out State_Information) is null;

   procedure Iterate is new Asis.Iterator.Traverse_Element (State_Information);

   function To_Upper (Item : Wide_String) return Wide_String;

   -------------
   -- Extract --
   -------------

   procedure Extract (Element : Asis.Element) is
      Control : Asis.Traverse_Control := Asis.Continue;
      State   : State_Information;

   begin
      Iterate (Element, Control, State);
   end Extract;

   -------------------
   -- Pre_Operation --
   -------------------

   procedure Pre_Operation
     (Element : Asis.Element;
      Control : in out Asis.Traverse_Control;
      State   : in out State_Information) is
   begin
      case Asis.Elements.Element_Kind (Element) is
         when Asis.A_Declaration =>
            case Asis.Elements.Declaration_Kind (Element) is
               when Asis.An_Ordinary_Type_Declaration =>
                  Process_Ordinary_Type_Declaration (Element);

               when others =>
                  null;
            end case;

         when others =>
            null;
      end case;
   end Pre_Operation;

   ---------------------------------------
   -- Process_Ordinary_Type_Declaration --
   ---------------------------------------

   procedure Process_Ordinary_Type_Declaration (Element : Asis.Element) is
      Image : constant Wide_String :=
        To_Upper
         (Asis.Declarations.Defining_Name_Image
           (Asis.Declarations.Names (Element) (1)));

   begin
      if Image = "TOKEN" then
         declare
            Literals : constant Asis.Element_List :=
              Asis.Definitions.Enumeration_Literal_Declarations
               (Asis.Declarations.Type_Declaration_View (Element));

         begin
            for J in Literals'Range loop
               declare
                  Image : constant Wide_String :=
                    Asis.Declarations.Defining_Name_Image
                     (Asis.Declarations.Names (Literals (J)) (1));

               begin
                  Tokens.Append
                   (Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String
                     (Image));
               end;
            end loop;
         end;
      end if;
   end Process_Ordinary_Type_Declaration;

   --------------
   -- To_Upper --
   --------------

   function To_Upper (Item : Wide_String) return Wide_String is
   begin
      return
        Ada.Characters.Conversions.To_Wide_String
          (Ada.Characters.Handling.To_Upper
             (Ada.Characters.Conversions.To_String (Item)));
   end To_Upper;

end Token_Extractor;
