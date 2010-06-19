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
     Token_Close,
     Token_Name,
     Token_System,
     Token_Public,
     Token_System_Literal,
     Token_Public_Literal,
     Token_Internal_Subset_Open,
     Token_Internal_Subset_Close,
     Token_Percent,
     Token_Entity_Value_Open,
     Token_Entity_Value_Close,
     Token_String_Segment,
     Token_Ndata);

   type YYSType is null record;

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

      Content_Handler    : Matreshka.SAX.Readers.SAX_Content_Handler_Access
        := Default_Handler'Access;
      Decl_Handler       : Matreshka.SAX.Readers.SAX_Decl_Handler_Access
        := Default_Handler'Access;
      DTD_Handler        : Matreshka.SAX.Readers.SAX_DTD_Handler_Access
        := Default_Handler'Access;
      Error_Handler      : Matreshka.SAX.Readers.SAX_Error_Handler_Access
        := Default_Handler'Access;
      Lexical_Handler    : Matreshka.SAX.Readers.SAX_Lexical_Handler_Access
        := Default_Handler'Access;

      --  Scanner state

      Scanner_State      : Scanner_State_Information;
      Scanner_Stack      : Scanner_State_Vectors.Vector;

      --  Parser state

      YYVal              : YYSType;
      YYLVal             : YYSType;
      Continue_State     : Integer;

      --  Analyzer state

      Whitespace_Matched : Boolean;
      --  Used to check whether whitespace is used to separate tokens. For
      --  example, '%' must be separated by whitespace from '<!ENTITY' and
      --  following name.
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
