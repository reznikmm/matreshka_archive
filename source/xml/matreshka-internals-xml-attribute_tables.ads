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
with Matreshka.Internals.Strings;

package Matreshka.Internals.XML.Attribute_Tables is

   pragma Preelaborate;

   type Attribute_Table is limited private;

   procedure New_CDATA_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier);
   --  Allocates new attribute of CDATA type.

   procedure New_Entity_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier);
   --  Allocates new attribute of ENTITY type.

   procedure New_Entities_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier);
   --  Allocates new attribute of ENTITIES type.

   procedure New_Id_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier);
   --  Allocates new attribute of ID type.

   procedure New_IdRef_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier);
   --  Allocates new attribute of IDREF type.

   procedure New_IdRefs_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier);
   --  Allocates new attribute of IDREFS type.

   procedure New_NmToken_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier);
   --  Allocates new attribute of NMTOKEN type.

   procedure New_NmTokens_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier);
   --  Allocates new attribute of NMTOKENS type.

   function Is_ID
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean;
   --  Returns True when attribute has ID type.

   function Is_CDATA
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean;
   --  Returns True when attribute has CDATA type.

   procedure Append
    (Self      : in out Attribute_Table;
     Attribute : Attribute_Identifier;
     Next      : Attribute_Identifier);
   --  Append attribute specified by Next to the list of attributes started
   --  by Attribute.

   function Name
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Symbol_Identifier;
   --  Returns name of the attribute.

   function Next
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Attribute_Identifier;
   --  Returns next attribute in the list of attributes of the element.

   function Is_Required
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean;

   procedure Set_Is_Required
    (Self      : in out Attribute_Table;
     Attribute : Attribute_Identifier;
     Value     : Boolean);

   function Is_Implied
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean;

   procedure Set_Is_Implied
    (Self      : in out Attribute_Table;
     Attribute : Attribute_Identifier;
     Value     : Boolean);

   function Is_Fixed
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean;

   procedure Set_Is_Fixed
    (Self      : in out Attribute_Table;
     Attribute : Attribute_Identifier;
     Value     : Boolean);

   function Default
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier)
       return not null Matreshka.Internals.Strings.Shared_String_Access;

   procedure Set_Default
    (Self      : in out Attribute_Table;
     Attribute : Attribute_Identifier;
     Value     : not null Matreshka.Internals.Strings.Shared_String_Access);

   function Has_Default
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean;
   --  Returns True when attribute has default value. This is synthetic value,
   --  attribute has default value when it is not declared as REQUIRED or
   --  IMPLIED.

   function Symbol_Of_Type_Name
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Symbol_Identifier;
   --  Returns symbol of type name of the attribute.

   procedure Reset (Self : in out Attribute_Table);
   --  Resets internal structures to initial state.

private

   type Attribute_Types is
    (CDATA, ENTITY, ENTITIES, ID, IDREF, IDREFS, NMTOKEN, NMTOKENS);

   type Attribute_Record is record
      Name        : Symbol_Identifier;
      The_Type    : Attribute_Types;
      Is_Required : Boolean;
      Is_Implied  : Boolean;
      Is_Fixed    : Boolean;
      Default     : Matreshka.Internals.Strings.Shared_String_Access;
      Next        : Attribute_Identifier;
      --  Next attribute for the same element type.
   end record;

   type Attribute_Array is
     array (Attribute_Identifier range <>) of Attribute_Record;

   type Attribute_Array_Access is access all Attribute_Array;

   type Attribute_Table is limited record
      Table : Attribute_Array_Access := new Attribute_Array (1 .. 16);
      Last  : Attribute_Identifier   := No_Attribute;
   end record;

   pragma Inline (Name);
   pragma Inline (Next);
   pragma Inline (Default);
   pragma Inline (Is_CDATA);
   pragma Inline (Is_Fixed);
   pragma Inline (Is_ID);
   pragma Inline (Is_Implied);
   pragma Inline (Is_Required);
   pragma Inline (Set_Default);
   pragma Inline (Set_Is_Fixed);
   pragma Inline (Set_Is_Implied);
   pragma Inline (Set_Is_Required);

end Matreshka.Internals.XML.Attribute_Tables;
