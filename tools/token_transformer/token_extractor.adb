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
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
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
