------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
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
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
private with Ada.Finalization;

with League.Strings;
private with Matreshka.Internals.Regexps;

package League.Regexps is

   pragma Preelaborate;

   type Regexp_Pattern is tagged private;
   pragma Preelaborable_Initialization (Regexp_Pattern);

   type Regexp_Match is tagged private;
   pragma Preelaborable_Initialization (Regexp_Match);

   --------------------
   -- Regexp_Pattern --
   --------------------

   function Compile
    (Expression : League.Strings.Universal_String'Class) return Regexp_Pattern;

   function Find_Match
    (Self   : Regexp_Pattern'Class;
     String : League.Strings.Universal_String'Class)
       return Regexp_Match;

   ------------------
   -- Regexp_Match --
   ------------------

   function Is_Matched (Self : Regexp_Match'Class) return Boolean;

   function Capture_Count (Self : Regexp_Match'Class) return Natural;

   function Capture
    (Self : Regexp_Match'Class) return League.Strings.Universal_String;

   function Capture
    (Self   : Regexp_Match'Class;
     Number : Positive) return League.Strings.Universal_String;

   function First_Index (Self : Regexp_Match'Class) return Positive;

   function First_Index
    (Self   : Regexp_Match'Class;
     Number : Positive) return Natural;

   function Last_Index (Self : Regexp_Match'Class) return Natural;

   function Last_Index
    (Self   : Regexp_Match'Class;
     Number : Positive) return Natural;

private

   type Regexp_Pattern is new Ada.Finalization.Controlled with record
      Shared : Matreshka.Internals.Regexps.Shared_Pattern_Access
        := Matreshka.Internals.Regexps.Empty_Shared_Pattern'Access;
   end record;

   overriding procedure Adjust (Self : in out Regexp_Pattern);
   overriding procedure Finalize (Self : in out Regexp_Pattern);

   type Regexp_Match is new Ada.Finalization.Controlled with record
      Shared : Matreshka.Internals.Regexps.Shared_Match_Access
        := Matreshka.Internals.Regexps.Empty_Shared_Match'Access;
   end record;

   overriding procedure Adjust (Self : in out Regexp_Match);
   overriding procedure Finalize (Self : in out Regexp_Match);

end League.Regexps;
