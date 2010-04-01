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
with Ada.Containers.Vectors;
with Ada.Strings.Wide_Unbounded;

with Asis;

package Token_Extractor is

   package Unbounded_Wide_String_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           Ada.Strings.Wide_Unbounded.Unbounded_Wide_String,
           Ada.Strings.Wide_Unbounded."=");

--   type Choice_Information (Is_Empty : Boolean := True) is record
--      case Is_Empty is
--         when True =>
--            null;
--
--         when False =>
--            Choice : Positive;
--            Line   : Positive;
--            File   : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
--            Text   : Unbounded_Wide_String_Vectors.Vector;
--      end case;
--   end record;
--
--   package Choice_Vectors is
--     new Ada.Containers.Vectors (Positive, Choice_Information);
--
--   type Pair is record
--      First  : Integer;
--      Second : Integer;
--   end record;
--
--   subtype Pairs_Index is Integer range -1 .. Integer'Last;
--
--   package Pair_Vectors is new Ada.Containers.Vectors (Pairs_Index, Pair);
--
--   package Integer_Vectors is
--     new Ada.Containers.Vectors (Natural, Integer);
--
--   YY_Goto_Matrix         : Pair_Vectors.Vector;
--   YY_Goto_Offset         : Integer_Vectors.Vector;
--   YY_Rule_Length         : Integer_Vectors.Vector;
--   YY_Get_LHS_Rule        : Integer_Vectors.Vector;
--   YY_Shift_Reduce_Matrix : Pair_Vectors.Vector;
--   YY_Shift_Reduce_Offset : Integer_Vectors.Vector;
--   YY_Default             : Integer;
--   YY_First_Shift_Entry   : Integer;
--   YY_Accept_Code         : Integer;
--   YY_Error_Code          : Integer;
--   Choices                : Choice_Vectors.Vector;
   Tokens                 : Unbounded_Wide_String_Vectors.Vector;

   procedure Extract (Element : Asis.Element);

end Token_Extractor;
