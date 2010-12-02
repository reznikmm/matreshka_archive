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
with Matreshka.Internals.Strings;
with Matreshka.Internals.Utf16;

package Matreshka.Internals.XML.Entity_Tables is

   pragma Preelaborate;

   type Entity_Table is limited private;

   procedure New_Internal_Parameter_Entity
    (Self             : in out Entity_Table;
     Replacement_Text :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Entity           : out Entity_Identifier);
   --  Allocates space for the entity and returns identifier of the allocated
   --  entity.

   procedure New_External_Parameter_Entity
    (Self      : in out Entity_Table;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Base      : League.Strings.Universal_String;
     Entity    : out Entity_Identifier);
   --  Allocates space for the entity and returns identifier of the allocated
   --  entity.

   procedure New_Internal_General_Entity
    (Self             : in out Entity_Table;
     Replacement_Text :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Entity           : out Entity_Identifier);
   --  Allocates space for the entity and returns identifier of the allocated
   --  entity.

   procedure New_External_Parsed_General_Entity
    (Self      : in out Entity_Table;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Base      : League.Strings.Universal_String;
     Entity    : out Entity_Identifier);
   --  Allocates space for the entity and returns identifier of the allocated
   --  entity.

   procedure New_External_Unparsed_General_Entity
    (Self     : in out Entity_Table;
     Notation : Symbol_Identifier;
     Entity   : out Entity_Identifier);
   --  Allocates space for the entity and returns identifier of the allocated
   --  entity.

   procedure New_Document_Entity
    (Self      : in out Entity_Table;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Base      : League.Strings.Universal_String;
     Entity    : out Entity_Identifier);
   --  Allocates space for the entity and returns identifier of the allocated
   --  entity.

   procedure New_External_Subset_Entity
    (Self      : in out Entity_Table;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Base      : League.Strings.Universal_String;
     Entity    : out Entity_Identifier);
   --  Allocates space for the entity and returns identifier of the allocated
   --  entity.

   function Is_Document_Entity
    (Self   : Entity_Table;
     Entity : Entity_Identifier) return Boolean;
   --  Returns True when entity is document entity.

   function Is_Parameter_Entity
    (Self   : Entity_Table;
     Entity : Entity_Identifier) return Boolean;
   --  Returns True when entity is parameter entity (internal or external).

   function Is_Internal_General_Entity
    (Self   : Entity_Table;
     Entity : Entity_Identifier) return Boolean;
   --  Returns True when entity is internal general entity.

   function Is_External_Parsed_General_Entity
    (Self   : Entity_Table;
     Entity : Entity_Identifier) return Boolean;
   --  Returns True when entity is external parsed general entity.

   function Is_External_Unparsed_General_Entity
    (Self   : Entity_Table;
     Entity : Entity_Identifier) return Boolean;
   --  Returns True when entity is external unparsed general entity.

   function Public_Id
    (Self   : Entity_Table;
     Entity : Entity_Identifier)
       return not null Matreshka.Internals.Strings.Shared_String_Access;

   function System_Id
    (Self   : Entity_Table;
     Entity : Entity_Identifier)
       return not null Matreshka.Internals.Strings.Shared_String_Access;

   function Base
    (Self   : Entity_Table;
     Entity : Entity_Identifier)
       return not null Matreshka.Internals.Strings.Shared_String_Access;

   function Is_Resolved
    (Self   : Entity_Table;
     Entity : Entity_Identifier) return Boolean;
   --  Returns True when entity is marked as resolved.

   procedure Set_Is_Resolved
    (Self   : in out Entity_Table;
     Entity : Entity_Identifier;
     To     : Boolean);
   --  Mark entity as resolved.

   function Replacement_Text
    (Self   : Entity_Table;
     Entity : Entity_Identifier)
       return Matreshka.Internals.Strings.Shared_String_Access;
   --  Returns entity's replacement text.

   procedure Set_Replacement_Text
    (Self             : in out Entity_Table;
     Entity           : Entity_Identifier;
     Replacement_Text :
       not null Matreshka.Internals.Strings.Shared_String_Access);
   --  Sets replacement text for the entity.

   function First_Position
    (Self   : Entity_Table;
     Entity : Entity_Identifier)
       return Matreshka.Internals.Utf16.Utf16_String_Index;
   --  Returns position of the first significant character after the text
   --  declaration if any; otherwise returns zero.

   procedure Set_First_Position
    (Self     : in out Entity_Table;
     Entity   : Entity_Identifier;
     Position : Matreshka.Internals.Utf16.Utf16_String_Index);
   --  Sets position of the first significant character after the text
   --  declaration if any.

   procedure Initialize (Self : in out Entity_Table);
   --  Initializes entity table.

   procedure Finalize (Self : in out Entity_Table);
   --  Finalizes entity table.

   procedure Reset (Self : in out Entity_Table);
   --  Resets internal structures to initial state.

private

   type Entity_Kinds is
    (Document_Entity,
     External_Subset_Entity,
     Internal_Parameter_Entity,
     External_Parameter_Entity,
     Internal_General_Entity,
     External_Parsed_General_Entity,
     External_Unparsed_General_Entity);

   type Entity_Record is record
      Kind             : Entity_Kinds;
      Notation         : Symbol_Identifier;
      Public_Id        : Matreshka.Internals.Strings.Shared_String_Access;
      System_Id        : Matreshka.Internals.Strings.Shared_String_Access;
      Base             : Matreshka.Internals.Strings.Shared_String_Access;
      Is_Resolved      : Boolean;
      Replacement_Text : Matreshka.Internals.Strings.Shared_String_Access;
      First_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
   end record;

   type Entity_Array is array (Entity_Identifier range <>) of Entity_Record;

   type Entity_Array_Access is access all Entity_Array;

   type Entity_Table is limited record
      Data : Entity_Array_Access;
      Last : Entity_Identifier := 0;
   end record;

   pragma Inline (Is_Document_Entity);
   pragma Inline (Is_External_Unparsed_General_Entity);
   pragma Inline (Is_Internal_General_Entity);

end Matreshka.Internals.XML.Entity_Tables;
