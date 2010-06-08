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

with Matreshka.StAX.Attributes;
with Matreshka.StAX.Entity_Declarations;
with Matreshka.StAX.Namespace_Declarations;
with Matreshka.StAX.Notation_Declarations;

package Matreshka.StAX.Readers is

   pragma Preelaborate;

   type StAX_Tokens is
    (No_Token,
     Invalid,
     Start_Document,
     End_Document,
     Start_Element,
     End_Element,
     Characters,
     Comment,
     DTD,
     Entity_Reference,
     Processing_Instruction);

   type StAX_Reader is limited interface;

   not overriding procedure Add_External_Namespace_Declaration
    (Self      : not null access constant StAX_Reader;
     Namespace :
       Matreshka.StAX.Namespace_Declarations.StAX_Namespace_Declaration)
       is abstract;

   not overriding procedure Add_External_Namespace_Declarations
    (Self       : not null access StAX_Reader;
     Namespaces :
       Matreshka.StAX.Namespace_Declarations.StAX_Namespace_Declarations)
       is abstract;

   not overriding function At_End
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Attributes
    (Self : not null access constant StAX_Reader)
       return Matreshka.StAX.Attributes.StAX_Attributes is abstract;

   not overriding function Document_Encoding
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function Document_Version
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function DTD_Name
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function DTD_Public_Id
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function DTD_System_Id
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function Entity_Declarations
    (Self : not null access constant StAX_Reader)
       return Matreshka.StAX.Entity_Declarations.StAX_Entity_Declarations
         is abstract;

   not overriding function Error_String
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function Has_Error
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_CDATA
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_Characters
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_Comment
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_DTD
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_End_Document
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_End_Element
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_Entity_Reference
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_Processing_Instruction
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_Standalone_Document
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_Start_Document
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_Start_Element
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Is_Whitespace
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Name
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function Namespace_Declarations
    (Self       : not null access constant StAX_Reader)
       return Matreshka.StAX.Namespace_Declarations.StAX_Namespace_Declarations
         is abstract;

   not overriding function Namespace_Processing
    (Self : not null access constant StAX_Reader) return Boolean is abstract;

   not overriding function Namespace_URI
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function Notation_Declarations
    (Self       : not null access constant StAX_Reader)
       return Matreshka.StAX.Notation_Declarations.StAX_Notation_Declarations
         is abstract;

   not overriding function Prefix
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function Processing_Instruction_Data
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function Processing_Instruction_Target
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function Qualified_Name
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding procedure Raise_Error
    (Self  : not null access StAX_Reader;
     Error : League.Strings.Universal_Slice) is abstract;

   not overriding function Read_Element_Text
    (Self : not null access StAX_Reader)
       return League.Strings.Universal_String is abstract;

   not overriding function Read_Next
    (Self : not null access StAX_Reader) return StAX_Tokens is abstract;

   not overriding procedure Read_Next
    (Self : not null access StAX_Reader) is abstract;

   not overriding function Read_Next_Start_Element
    (Self : not null access StAX_Reader) return Boolean is abstract;

   not overriding procedure Read_Next_Start_Element
    (Self : not null access StAX_Reader) is abstract;

   not overriding procedure Set_Namespace_Processing
    (Self    : not null access StAX_Reader;
     Enabled : Boolean) is abstract;

   not overriding procedure Skip_Current_Element
    (Self : not null access StAX_Reader) is abstract;

   not overriding function Text
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_Slice is abstract;

   not overriding function Token_String
    (Self : not null access constant StAX_Reader)
       return League.Strings.Universal_String is abstract;

   not overriding function Token
    (Self : not null access constant StAX_Reader)
       return StAX_Tokens is abstract;

end Matreshka.StAX.Readers;
