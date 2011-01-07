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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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

package Matreshka.Internals.XML.Attributes is

   pragma Preelaborate;

   type Attribute_Set is limited private;

   procedure Insert
    (Self           : in out Attribute_Set;
     Qualified_Name : Symbol_Identifier;
     Value          :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Type_Name      : Symbol_Identifier;
     Is_Specified   : Boolean;
     Inserted       : out Boolean);
   --  Inserts attribute into the set. Sets Inserted to False then attribute
   --  with the same name is in set already; otherwise inserts new attribute
   --  and sets Inserted to True.

   function Length (Self : Attribute_Set) return Natural;

   function Qualified_Name
    (Self  : Attribute_Set;
     Index : Positive) return Symbol_Identifier;

   function Namespace_URI
    (Self  : Attribute_Set;
     Index : Positive) return Symbol_Identifier;

   procedure Set_Namespace_URI
    (Self          : Attribute_Set;
     Index         : Positive;
     Namespace_URI : Symbol_Identifier);

   function Type_Name
    (Self  : Attribute_Set;
     Index : Positive) return Symbol_Identifier;

   function Value
    (Self  : Attribute_Set;
     Index : Positive)
       return not null Matreshka.Internals.Strings.Shared_String_Access;

   function Is_Declared
    (Self  : Attribute_Set;
     Index : Positive) return Boolean;
   --  Returns True when attribute is declared in the DTD.

   procedure Set_Is_Declared
    (Self  : in out Attribute_Set;
     Index : Positive);
   --  Mark attribute as declared in the DTD.

   function Is_Specified
    (Self  : Attribute_Set;
     Index : Positive) return Boolean;
   --  Returns True when attribute's value is specified in the element; and
   --  False when value come from default value.

   procedure Clear (Self : in out Attribute_Set);

   procedure Initialize (Self : in out Attribute_Set);

   procedure Finalize (Self : in out Attribute_Set);

private

   type Attribute_Record is record
      Namespace_URI  : Symbol_Identifier;
      Qualified_Name : Symbol_Identifier;
      Value          : Matreshka.Internals.Strings.Shared_String_Access;
      Type_Name      : Symbol_Identifier;
      Is_Declared    : Boolean;
      Is_Specified   : Boolean;
   end record;

   type Attribute_Array is array (Positive range <>) of Attribute_Record;

   type Attribute_Array_Access is access all Attribute_Array;

   type Attribute_Set is limited record
      Attributes : Attribute_Array_Access;
      Last       : Natural;
   end record;

   pragma Inline (Is_Declared);
   pragma Inline (Is_Specified);
   pragma Inline (Length);
   pragma Inline (Namespace_URI);
   pragma Inline (Qualified_Name);
   pragma Inline (Set_Namespace_URI);
   pragma Inline (Set_Is_Declared);
   pragma Inline (Type_Name);
   pragma Inline (Value);

end Matreshka.Internals.XML.Attributes;
