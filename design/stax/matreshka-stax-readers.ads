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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
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
