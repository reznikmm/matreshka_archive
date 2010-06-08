------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
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

package body Matreshka.StAX.Attributes is

   ------------
   -- Create --
   ------------

   function Create
    (Qualified_Name : League.Strings.Universal_String;
     Value          : League.Strings.Universal_String)
       return StAX_Attribute is
   begin
      raise Program_Error;
      return X : StAX_Attribute;
   end Create;

   ------------
   -- Create --
   ------------

   function Create
    (Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String;
     Value         : League.Strings.Universal_String)
       return StAX_Attribute is
   begin
      raise Program_Error;
      return X : StAX_Attribute;
   end Create;

   ----------------
   -- Is_Default --
   ----------------

   function Is_Default (Self : StAX_Attribute'Class) return Boolean is
   begin
      raise Program_Error;
      return False;
   end Is_Default;

   ----------------
   -- Local_Name --
   ----------------

   function Local_Name (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice is
   begin
      raise Program_Error;
      return X : League.Strings.Universal_Slice;
   end Local_Name;

   -------------------
   -- Namespace_URI --
   -------------------

   function Namespace_URI (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice is
   begin
      raise Program_Error;
      return X : League.Strings.Universal_Slice;
   end Namespace_URI;

   ------------
   -- Prefix --
   ------------

   function Prefix (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice is
   begin
      raise Program_Error;
      return X : League.Strings.Universal_Slice;
   end Prefix;

   --------------------
   -- Qualified_Name --
   --------------------

   function Qualified_Name (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice is
   begin
      raise Program_Error;
      return X : League.Strings.Universal_Slice;
   end Qualified_Name;

   -----------
   -- Value --
   -----------

   function Value (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice is
   begin
      raise Program_Error;
      return X : League.Strings.Universal_Slice;
   end Value;

end Matreshka.StAX.Attributes;
