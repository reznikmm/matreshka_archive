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
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
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
private with Matreshka.Internals.Unicode.Ucd;

package League.Strings.Cursors.Grapheme_Clusters is

   pragma Preelaborate;

   type Grapheme_Cluster_Cursor is tagged private;

   procedure First
    (Self : in out Grapheme_Cluster_Cursor'Class;
     Item : in out Universal_String);

   procedure Last
    (Self : in out Grapheme_Cluster_Cursor'Class;
     Item : in out Universal_String);

   procedure Next (Self : in out Grapheme_Cluster_Cursor'Class);

   procedure Previous (Self : in out Grapheme_Cluster_Cursor'Class);

   function Has_Element (Self : Grapheme_Cluster_Cursor'Class) return Boolean;

   function Element (Self : Grapheme_Cluster_Cursor'Class)
     return Universal_String;

private

   type Grapheme_Cluster_Cursor is new Abstract_Tailored_Cursor with record
      Previous_Position : Natural := 0;
      Previous_Length   : Natural := 0;
      Previous_State    :
        Matreshka.Internals.Unicode.Ucd.Grapheme_Cluster_Break;
      Current_Position  : Natural := 0;
      Current_Length    : Natural := 0;
      Current_State     :
        Matreshka.Internals.Unicode.Ucd.Grapheme_Cluster_Break;
      Next_Position     : Natural := 0;
      Next_State        :
        Matreshka.Internals.Unicode.Ucd.Grapheme_Cluster_Break;
   end record;

--   overriding procedure On_Changed
--    (Self          : not null access Grapheme_Cluster_Cursor;
--     Changed_First : Positive;
--     Removed_Last  : Natural;
--     Inserted_Last : Natural);

end League.Strings.Cursors.Grapheme_Clusters;
