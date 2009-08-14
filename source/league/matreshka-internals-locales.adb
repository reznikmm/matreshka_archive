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
with Ada.Unchecked_Deallocation;

with Matreshka.Internals.Unicode.Ucd.Cases;
with Matreshka.Internals.Unicode.Ucd.Colls;
with Matreshka.Internals.Unicode.Ucd.Core;

package body Matreshka.Internals.Locales is

   Default_Locale : aliased Locale_Data
     := (Core      => Unicode.Ucd.Core.Property'Access,
         Casing    =>
          (Expansion => Unicode.Ucd.Cases.Data'Access,
           Context   => Unicode.Ucd.Cases.Context'Access,
           Mapping   => Unicode.Ucd.Cases.Mapping'Access),
         Collation =>
          (Expansion     => Unicode.Ucd.Colls.Expansion_Data'Access,
           Contraction   => Unicode.Ucd.Colls.Contraction_Data'Access,
           Mapping       => Unicode.Ucd.Colls.Collation'Access,
           Last_Variable => Unicode.Ucd.Colls.Last_Variable,
           Backwards     => False),
         others        => <>);

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Locale_Data_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation (Locale_Data, Locale_Data_Access);

   begin
      if Matreshka.Internals.Atomics.Counters.Decrement
          (Self.Counter'Access)
      then
         pragma Assert (Self /= Default_Locale'Access);

         Free (Self);
      end if;
   end Dereference;

   --------------
   -- Get_Core --
   --------------

   function Get_Core
    (Self : not null access Locale_Data'Class;
     Code : Unicode.Code_Point)
       return Unicode.Ucd.Core_Values
   is

      function Element is
        new Matreshka.Internals.Unicode.Ucd.Generic_Element
             (Matreshka.Internals.Unicode.Ucd.Core_Values,
              Matreshka.Internals.Unicode.Ucd.Core_Second_Stage,
              Matreshka.Internals.Unicode.Ucd.Core_Second_Stage_Access,
              Matreshka.Internals.Unicode.Ucd.Core_First_Stage);

   begin
      return Element (Self.Core.all, Code);
   end Get_Core;

   ----------------
   -- Get_Locale --
   ----------------

   function Get_Locale return not null Locale_Data_Access is
      Result : constant not null Locale_Data_Access := Default_Locale'Access;

   begin
      Reference (Result);

      return Result;
   end Get_Locale;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : Locale_Data_Access) is
   begin
      Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
   end Reference;

end Matreshka.Internals.Locales;
