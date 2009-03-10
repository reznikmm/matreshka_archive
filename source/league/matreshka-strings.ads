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
private with Ada.Finalization;
private with Ada.Streams;

private with Matreshka.Internals.Atomics.Counters;
private with Matreshka.Internals.String_Types;

package Matreshka.Strings is

   pragma Preelaborate;
   pragma Remote_Types;

   type Universal_String is tagged private;

private

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Universal_String);

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Universal_String);

   type Utf16_String_Access is
     access all Matreshka.Internals.String_Types.Utf16_String;

   type String_Private_Data is limited record
      Counter : aliased Matreshka.Internals.Atomics.Counters.Counter;
      --  Atomic reference counter.

      Value   : Utf16_String_Access;
      --  String data. Internal data always has well-formed UTF-16 encoded
      --  sequence of valid Unicode code points. Validity checks proceed only
      --  for potentially invalid user specified data, and never proceed for
      --  the internal data.
   end record;

   type String_Private_Data_Access is access all String_Private_Data;

   type Universal_String is new Ada.Finalization.Controlled with record
      Data : String_Private_Data_Access;
   end record;

   for Universal_String'Read use Read;
   for Universal_String'Write use Write;

   overriding procedure Initialize (Self : in out Universal_String);

   overriding procedure Adjust (Self : in out Universal_String);

   overriding procedure Finalize (Self : in out Universal_String);

end Matreshka.Strings;
