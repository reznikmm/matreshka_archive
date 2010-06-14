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
private with Ada.Containers.Vectors;

with League.Strings;
with Matreshka.SAX.Readers;
private with Matreshka.Internals.Strings;
private with Matreshka.Internals.Utf16;
private with Matreshka.SAX.Default_Handlers;

package Matreshka.SAX.Simple_Readers is

   pragma Preelaborate;

   type SAX_Simple_Reader is
     limited new Matreshka.SAX.Readers.SAX_Reader with private;

   procedure Parse
    (Self : not null access SAX_Simple_Reader;
     Data : League.Strings.Universal_String);

private

   type Token is
    (End_Of_Input,
     Error,
     Token_Xml_Decl_Open,
     Token_Pi_Close,
     Token_Pe_Reference,
     Token_Doctype_Decl_Open,
     Token_Entity_Decl_Open,
     Token_Close);

   type Scanner_State_Information is record
      Data                : Matreshka.Internals.Strings.Shared_String_Access;
      YY_Current_Position : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      YY_Current_Index    : Positive := 1;
      YY_Start_State      : Integer  := 1;
      Last_Match          : Boolean  := True;
      --  This mean that last match need to be processed.
   end record;

   package Scanner_State_Vectors is
     new Ada.Containers.Vectors (Positive, Scanner_State_Information);

   Default_Handler :
     aliased Matreshka.SAX.Default_Handlers.SAX_Default_Handler;
   --  Default handler for use when user defined handler is not specified.

   type SAX_Simple_Reader is
     limited new Matreshka.SAX.Readers.SAX_Reader with
   record
      --  Handlers

      Content_Handler : Matreshka.SAX.Readers.SAX_Content_Handler_Access
        := Default_Handler'Access;
      Decl_Handler    : Matreshka.SAX.Readers.SAX_Decl_Handler_Access
        := Default_Handler'Access;
      DTD_Handler     : Matreshka.SAX.Readers.SAX_DTD_Handler_Access
        := Default_Handler'Access;
      Error_Handler   : Matreshka.SAX.Readers.SAX_Error_Handler_Access
        := Default_Handler'Access;
      Lexical_Handler : Matreshka.SAX.Readers.SAX_Lexical_Handler_Access
        := Default_Handler'Access;

      --  Scanner state

      Scanner_State   : Scanner_State_Information;
      Scanner_Stack   : Scanner_State_Vectors.Vector;

      --  Parser state
   end record;

   overriding function Content_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Content_Handler_Access;

   overriding function Decl_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Decl_Handler_Access;

   overriding function DTD_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_DTD_Handler_Access;

   overriding function Error_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Error_Handler_Access;

   overriding function Lexical_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Lexical_Handler_Access;

   overriding procedure Set_Content_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Content_Handler_Access);

   overriding procedure Set_Decl_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Decl_Handler_Access);

   overriding procedure Set_DTD_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_DTD_Handler_Access);

   overriding procedure Set_Error_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Error_Handler_Access);

   overriding procedure Set_Lexical_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Lexical_Handler_Access);

end Matreshka.SAX.Simple_Readers;
