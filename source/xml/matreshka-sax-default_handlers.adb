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

package body Matreshka.SAX.Default_Handlers is

   --------------------
   -- Attribute_Decl --
   --------------------

   overriding function Attribute_Decl
    (Self          : not null access SAX_Default_Handler;
     E_Name        : League.Strings.Universal_String;
     A_Name        : League.Strings.Universal_String;
     A_Type        : League.Strings.Universal_String;
     Value_Default : League.Strings.Universal_String;
     Value         : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Attribute_Decl;

   ----------------
   -- Characters --
   ----------------

   overriding function Characters
    (Self : not null access SAX_Default_Handler;
     Text : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Characters;

   -------------
   -- Comment --
   -------------

   overriding function Comment
    (Self : not null access SAX_Default_Handler;
     Text : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Comment;

   ---------------
   -- End_CDATA --
   ---------------

   overriding function End_CDATA
    (Self : not null access SAX_Default_Handler)
       return Boolean is
   begin
      return True;
   end End_CDATA;

   ------------------
   -- End_Document --
   ------------------

   overriding function End_Document
    (Self : not null access SAX_Default_Handler)
       return Boolean is
   begin
      return True;
   end End_Document;

   -------------
   -- End_DTD --
   -------------

   overriding function End_DTD
    (Self : not null access SAX_Default_Handler)
       return Boolean is
   begin
      return True;
   end End_DTD;

   -----------------
   -- End_Element --
   -----------------

   overriding function End_Element
    (Self           : not null access SAX_Default_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end End_Element;

   ----------------
   -- End_Entity --
   ----------------

   overriding function End_Entity
    (Self : not null access SAX_Default_Handler;
     Name : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end End_Entity;

   ------------------------
   -- End_Prefix_Mapping --
   ------------------------

   overriding function End_Prefix_Mapping
    (Self   : not null access SAX_Default_Handler;
     Prefix : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end End_Prefix_Mapping;

   -----------
   -- Error --
   -----------

   overriding function Error
    (Self       : not null access SAX_Default_Handler;
     Occurrence : Matreshka.SAX.Parse_Exceptions.SAX_Parse_Exception)
       return Boolean is
   begin
      return True;
   end Error;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : not null access SAX_Default_Handler)
       return League.Strings.Universal_String is
   begin
      return X : League.Strings.Universal_String;
   end Error_String;

   --------------------------
   -- External_Entity_Decl --
   --------------------------

   overriding function External_Entity_Decl
    (Self      : not null access SAX_Default_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end External_Entity_Decl;

   -----------------
   -- Fatal_Error --
   -----------------

   overriding function Fatal_Error
    (Self       : not null access SAX_Default_Handler;
     Occurrence : Matreshka.SAX.Parse_Exceptions.SAX_Parse_Exception)
       return Boolean is
   begin
      return True;
   end Fatal_Error;

   --------------------------
   -- Ignorable_Whitespace --
   --------------------------

   overriding function Ignorable_Whitespace
    (Self : not null access SAX_Default_Handler;
     Text : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Ignorable_Whitespace;

   --------------------------
   -- Internal_Entity_Decl --
   --------------------------

   overriding function Internal_Entity_Decl
    (Self  : not null access SAX_Default_Handler;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Internal_Entity_Decl;

   -------------------
   -- Notation_Decl --
   -------------------

   overriding function Notation_Decl
    (Self          : not null access SAX_Default_Handler;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Notation_Decl;

   ----------------------------
   -- Processing_Instruction --
   ----------------------------

   overriding function Processing_Instruction
    (Self   : not null access SAX_Default_Handler;
     Target : League.Strings.Universal_String;
     Data   : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Processing_Instruction;

   --------------------
   -- Skipped_Entity --
   --------------------

   overriding function Skipped_Entity
    (Self : not null access SAX_Default_Handler;
     Name : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Skipped_Entity;

   -----------------
   -- Start_CDATA --
   -----------------

   overriding function Start_CDATA
    (Self : not null access SAX_Default_Handler)
       return Boolean is
   begin
      return True;
   end Start_CDATA;

   --------------------
   -- Start_Document --
   --------------------

   overriding function Start_Document
    (Self : not null access SAX_Default_Handler)
       return Boolean is
   begin
      return True;
   end Start_Document;

   ---------------
   -- Start_DTD --
   ---------------

   overriding function Start_DTD
    (Self      : not null access SAX_Default_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Start_DTD;

   -------------------
   -- Start_Element --
   -------------------

   overriding function Start_Element
    (Self           : not null access SAX_Default_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : Matreshka.SAX.Attributes.SAX_Attributes)
       return Boolean is
   begin
      return True;
   end Start_Element;

   ------------------
   -- Start_Entity --
   ------------------

   overriding function Start_Entity
    (Self : not null access SAX_Default_Handler;
     Name : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Start_Entity;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding function Start_Prefix_Mapping
    (Self   : not null access SAX_Default_Handler;
     Prefix : League.Strings.Universal_String;
     URI    : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Start_Prefix_Mapping;

   --------------------------
   -- Unparsed_Entity_Decl --
   --------------------------

   overriding function Unparsed_Entity_Decl
    (Self          : not null access SAX_Default_Handler;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Unparsed_Entity_Decl;

   -------------
   -- Warning --
   -------------

   overriding function Warning
    (Self       : not null access SAX_Default_Handler;
     Occurrence : Matreshka.SAX.Parse_Exceptions.SAX_Parse_Exception)
       return Boolean is
   begin
      return True;
   end Warning;

end Matreshka.SAX.Default_Handlers;
