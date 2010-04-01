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

package Scanner_Extractor is

   package Unbounded_Wide_String_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           Ada.Strings.Wide_Unbounded.Unbounded_Wide_String,
           Ada.Strings.Wide_Unbounded."=");

   type Choice_Information (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Choice : Positive;
            Line   : Positive;
            File   : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
            Text   : Unbounded_Wide_String_Vectors.Vector;
      end case;
   end record;

   package Choice_Vectors is
     new Ada.Containers.Vectors (Positive, Choice_Information);

   type State_Constant_Information is record
      Name  : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
      Value : Integer;
   end record;

   package State_Constants_Vectors is
     new Ada.Containers.Vectors (Positive, State_Constant_Information);

   package Integer_Vectors is
     new Ada.Containers.Vectors (Natural, Integer);

   type Plane_Information is record
      Number : Natural;
      Values : Integer_Vectors.Vector;
   end record;

   type Reference_Information is record
      Number    : Natural;
      Reference : Natural;
   end record;

   package Plane_Vectors is
     new Ada.Containers.Vectors (Positive, Plane_Information);

   package Reference_Vectors is
     new Ada.Containers.Vectors (Positive, Reference_Information);

   YY_End_Of_Buffer  : Integer := -1;
   YY_Jam_State      : Integer := -1;
   YY_First_Template : Integer := -1;
   State_Constants   : State_Constants_Vectors.Vector;
   YY_EC_Planes      : Plane_Vectors.Vector;
   YY_EC_Base        : Reference_Vectors.Vector;
   YY_EC_Base_Others : Natural;
   YY_Accept         : Integer_Vectors.Vector;
   YY_Meta           : Integer_Vectors.Vector;
   YY_Base           : Integer_Vectors.Vector;
   YY_Def            : Integer_Vectors.Vector;
   YY_Nxt            : Integer_Vectors.Vector;
   YY_Chk            : Integer_Vectors.Vector;
   Choices           : Choice_Vectors.Vector;

   procedure Extract (Element : Asis.Element);

end Scanner_Extractor;
