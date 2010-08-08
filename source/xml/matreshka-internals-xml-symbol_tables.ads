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
--  This package provides symbol table to store frequently used strings,
--  allocate identifier for them and reduce number of memory allocations by
--  reusing shared strings.
------------------------------------------------------------------------------
with League.Strings;
with Matreshka.Internals.Strings;
with Matreshka.Internals.Utf16;

package Matreshka.Internals.XML.Symbol_Tables is

   pragma Preelaborate;

   type Qualified_Name_Errors is
    (Valid,
     Colon_At_Start,
     Colon_At_End,
     Multiple_Colons,
     First_Character_Is_Not_NS_Name_Start_Char);

   type Symbol_Table is limited private;

   procedure Insert
    (Self        : in out Symbol_Table;
     String      : not null Matreshka.Internals.Strings.Shared_String_Access;
     First       : Matreshka.Internals.Utf16.Utf16_String_Index;
     Size        : Matreshka.Internals.Utf16.Utf16_String_Index;
     Length      : Natural;
     Namespaces  : Boolean;
     Qname_Error : out Qualified_Name_Errors;
     Identifier  : out Symbol_Identifier);
   --  Lookup symbol table for name and returns its identifier if present,
   --  otherwise add new name and returns allocated identifier.

   procedure Insert
    (Self       : in out Symbol_Table;
     String     : not null Matreshka.Internals.Strings.Shared_String_Access;
     Identifier : out Symbol_Identifier);
   --  Lookup symbol table for name and returns its identifier if present,
   --  otherwise add new name and returns allocated identifier.

   function Lookup
    (Self   : Symbol_Table;
     String : not null Matreshka.Internals.Strings.Shared_String_Access;
     First  : Matreshka.Internals.Utf16.Utf16_String_Index;
     Size   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Length : Natural) return Symbol_Identifier;
   --  Lookup symbol table for name and returns its identifier. Returns
   --  No_Symbol when there is no name in the table.

   function Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier)
       return not null Matreshka.Internals.Strings.Shared_String_Access;
   --  Returns name of the identifier. Reference counter is not incremented.

   function Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return League.Strings.Universal_String;
   --  Returns name of the identifier.

   function Local_Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return Symbol_Identifier;
   --  Returns local name component of the identifier.

   function Local_Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier)
       return not null Matreshka.Internals.Strings.Shared_String_Access;
   --  Returns local name component of the identifier. Reference counter is not
   --  incremented.

   function Prefix_Name
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return Symbol_Identifier;
   --  Returns prefix name component of the identifier.

   function Parameter_Entity
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return Entity_Identifier;
   --  Returns parameter entity associated with the name.

   procedure Set_Parameter_Entity
    (Self       : in out Symbol_Table;
     Identifier : Symbol_Identifier;
     Entity     : Entity_Identifier);
   --  Associates parameter entity with the name.

   function General_Entity
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return Entity_Identifier;
   --  Returns general entity associated with the name.

   procedure Set_General_Entity
    (Self       : in out Symbol_Table;
     Identifier : Symbol_Identifier;
     Entity     : Entity_Identifier);
   --  Associates general entity with the name.

   function Element
    (Self       : Symbol_Table;
     Identifier : Symbol_Identifier) return Element_Identifier;
   --  Returns element declaration associated with the name.

   procedure Set_Element
    (Self       : in out Symbol_Table;
     Identifier : Symbol_Identifier;
     Element    : Element_Identifier);
   --  Associates element declaration with the name.

   procedure Initialize (Self : in out Symbol_Table);
   --  Initialize internal structures and register predefined general entities.

   procedure Finalize (Self : in out Symbol_Table);
   --  Finalize internal structures.

   procedure Reset (Self : in out Symbol_Table);
   --  Resets internal structures to initial state.

private

   type Symbol_Record is record
      String              : Matreshka.Internals.Strings.Shared_String_Access;
      --  Name of the symbol.
      Namespace_Processed : Boolean;
      Prefix_Name         : Symbol_Identifier;
      Local_Name          : Symbol_Identifier;

      Element             : Element_Identifier;
--      Notation            : Notation_Identifier;
      Parameter_Entity    : Entity_Identifier;
      General_Entity      : Entity_Identifier;
   end record;

   type Symbol_Record_Array is
     array (Symbol_Identifier range <>) of Symbol_Record;
   type Symbol_Record_Array_Access is access all Symbol_Record_Array;

   type Symbol_Table is record
      Table : Symbol_Record_Array_Access;
      Last  : Symbol_Identifier;
   end record;

   pragma Inline (Element);
   pragma Inline (General_Entity);
   pragma Inline (Local_Name);
   pragma Inline (Name);
   pragma Inline (Parameter_Entity);
   pragma Inline (Prefix_Name);
   pragma Inline (Set_Element);
   pragma Inline (Set_General_Entity);
   pragma Inline (Set_Parameter_Entity);

end Matreshka.Internals.XML.Symbol_Tables;
