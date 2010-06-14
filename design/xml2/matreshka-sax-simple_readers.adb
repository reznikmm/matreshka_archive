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
with Matreshka.SAX.Readers;

package body Matreshka.SAX.Simple_Readers is

   use Matreshka.SAX.Readers;

   ---------------------
   -- Content_Handler --
   ---------------------

   overriding function Content_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Content_Handler_Access is
   begin
      if Self.Content_Handler = Default_Handler'Access then
         return null;

      else
         return Self.Content_Handler;
      end if;
   end Content_Handler;

   ------------------
   -- Decl_Handler --
   ------------------

   overriding function Decl_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Decl_Handler_Access is
   begin
      if Self.Decl_Handler = Default_Handler'Access then
         return null;

      else
         return Self.Decl_Handler;
      end if;
   end Decl_Handler;

   -----------------
   -- DTD_Handler --
   -----------------

   overriding function DTD_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_DTD_Handler_Access is
   begin
      if Self.DTD_Handler = Default_Handler'Access then
         return null;

      else
         return Self.DTD_Handler;
      end if;
   end DTD_Handler;

   -------------------
   -- Error_Handler --
   -------------------

   overriding function Error_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Error_Handler_Access is
   begin
      if Self.Error_Handler = Default_Handler'Access then
         return null;

      else
         return Self.Error_Handler;
      end if;
   end Error_Handler;

   ---------------------
   -- Lexical_Handler --
   ---------------------

   overriding function Lexical_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Lexical_Handler_Access is
   begin
      if Self.Lexical_Handler = Default_Handler'Access then
         return null;

      else
         return Self.Lexical_Handler;
      end if;
   end Lexical_Handler;

   -------------------------
   -- Set_Content_Handler --
   -------------------------

   overriding procedure Set_Content_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Content_Handler_Access) is
   begin
      if Handler = null then
         Self.Content_Handler := Default_Handler'Access;

      else
         Self.Content_Handler := Handler;
      end if;
   end Set_Content_Handler;

   ----------------------
   -- Set_Decl_Handler --
   ----------------------

   overriding procedure Set_Decl_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Decl_Handler_Access) is
   begin
      if Handler = null then
         Self.Decl_Handler := Default_Handler'Access;

      else
         Self.Decl_Handler := Handler;
      end if;
   end Set_Decl_Handler;

   ---------------------
   -- Set_DTD_Handler --
   ---------------------

   overriding procedure Set_DTD_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_DTD_Handler_Access) is
   begin
      if Handler = null then
         Self.DTD_Handler := Default_Handler'Access;

      else
         Self.DTD_Handler := Handler;
      end if;
   end Set_DTD_Handler;

   -----------------------
   -- Set_Error_Handler --
   -----------------------

   overriding procedure Set_Error_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Error_Handler_Access) is
   begin
      if Handler = null then
         Self.Error_Handler := Default_Handler'Access;

      else
         Self.Error_Handler := Handler;
      end if;
   end Set_Error_Handler;

   -------------------------
   -- Set_Lexical_Handler --
   -------------------------

   overriding procedure Set_Lexical_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Lexical_Handler_Access) is
   begin
      if Handler = null then
         Self.Lexical_Handler := Default_Handler'Access;

      else
         Self.Lexical_Handler := Handler;
      end if;
   end Set_Lexical_Handler;

end Matreshka.SAX.Simple_Readers;
