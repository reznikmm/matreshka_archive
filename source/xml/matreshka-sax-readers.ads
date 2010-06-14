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
with League.Strings;

with Matreshka.SAX.Content_Handlers;
with Matreshka.SAX.Decl_Handlers;
with Matreshka.SAX.DTD_Handlers;
with Matreshka.SAX.Error_Handlers;
with Matreshka.SAX.Lexical_Handlers;

package Matreshka.SAX.Readers is

   pragma Preelaborate;

   type SAX_Content_Handler_Access is
     access all Matreshka.SAX.Content_Handlers.SAX_Content_Handler'Class;
   type SAX_Decl_Handler_Access is
     access all Matreshka.SAX.Decl_Handlers.SAX_Decl_Handler'Class;
   type SAX_DTD_Handler_Access is
     access all Matreshka.SAX.DTD_Handlers.SAX_DTD_Handler'Class;
   type SAX_Error_Handler_Access is
     access all Matreshka.SAX.Error_Handlers.SAX_Error_Handler'Class;
   type SAX_Lexical_Handler_Access is
     access all Matreshka.SAX.Lexical_Handlers.SAX_Lexical_Handler'Class;

   type SAX_Reader is limited interface;

   not overriding function Content_Handler
    (Self : not null access constant SAX_Reader)
       return SAX_Content_Handler_Access is abstract;

   not overriding function Decl_Handler
    (Self : not null access constant SAX_Reader)
       return SAX_Decl_Handler_Access is abstract;

   not overriding function DTD_Handler
    (Self : not null access constant SAX_Reader)
       return SAX_DTD_Handler_Access is abstract;

   not overriding function Error_Handler
    (Self : not null access constant SAX_Reader)
       return SAX_Error_Handler_Access is abstract;

   not overriding function Lexical_Handler
    (Self : not null access constant SAX_Reader)
       return SAX_Lexical_Handler_Access is abstract;

   not overriding procedure Set_Content_Handler
    (Self    : not null access SAX_Reader;
     Handler : SAX_Content_Handler_Access) is abstract;

   not overriding procedure Set_Decl_Handler
    (Self    : not null access SAX_Reader;
     Handler : SAX_Decl_Handler_Access) is abstract;

   not overriding procedure Set_DTD_Handler
    (Self    : not null access SAX_Reader;
     Handler : SAX_DTD_Handler_Access) is abstract;

   not overriding procedure Set_Error_Handler
    (Self    : not null access SAX_Reader;
     Handler : SAX_Error_Handler_Access) is abstract;

   not overriding procedure Set_Lexical_Handler
    (Self    : not null access SAX_Reader;
     Handler : SAX_Lexical_Handler_Access) is abstract;

end Matreshka.SAX.Readers;
