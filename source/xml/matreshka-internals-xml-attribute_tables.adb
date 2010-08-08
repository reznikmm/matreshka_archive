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
with Ada.Unchecked_Deallocation;

package body Matreshka.Internals.XML.Attribute_Tables is

   procedure Free is
     new Ada.Unchecked_Deallocation (Attribute_Array, Attribute_Array_Access);

   procedure New_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     The_Type  : Attribute_Types;
     Attribute : out Attribute_Identifier);
   --  Allocates new attribute with specified type.

   ------------
   -- Append --
   ------------

   procedure Append
    (Self      : in out Attribute_Table;
     Attribute : Attribute_Identifier;
     Next      : Attribute_Identifier) is
   begin
      Self.Table (Attribute).Next := Next;
   end Append;

   -------------
   -- Default --
   -------------

   function Default
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier)
       return not null Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return Self.Table (Attribute).Default;
   end Default;

   -----------------
   -- Has_Default --
   -----------------

   function Has_Default
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean is
   begin
      return
        not (Self.Table (Attribute).Is_Required
               or Self.Table (Attribute).Is_Implied);
   end Has_Default;

   --------------
   -- Is_CDATA --
   --------------

   function Is_CDATA
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean is
   begin
      return Self.Table (Attribute).The_Type = CDATA;
   end Is_CDATA;

   --------------
   -- Is_Fixed --
   --------------

   function Is_Fixed
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean is
   begin
      return Self.Table (Attribute).Is_Fixed;
   end Is_Fixed;

   -----------
   -- Is_ID --
   -----------

   function Is_ID
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean is
   begin
      return Self.Table (Attribute).The_Type = ID;
   end Is_ID;

   ----------------
   -- Is_Implied --
   ----------------

   function Is_Implied
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean is
   begin
      return Self.Table (Attribute).Is_Implied;
   end Is_Implied;

   -----------------
   -- Is_Required --
   -----------------

   function Is_Required
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Boolean is
   begin
      return Self.Table (Attribute).Is_Required;
   end Is_Required;

   ----------
   -- Name --
   ----------

   function Name
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Symbol_Identifier is
   begin
      return Self.Table (Attribute).Name;
   end Name;

   -------------------
   -- New_Attribute --
   -------------------

   procedure New_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     The_Type  : Attribute_Types;
     Attribute : out Attribute_Identifier) is
   begin
      Self.Last := Self.Last + 1;

      if Self.Last > Self.Table'Last then
         declare
            Old : Attribute_Array_Access := Self.Table;

         begin
            Self.Table := new Attribute_Array (1 .. Old'Last + 16);
            Self.Table (Old'Range) := Old.all;
            Free (Old);
         end;
      end if;

      Attribute := Self.Last;
      Self.Table (Attribute) :=
       (Name        => Name,
        The_Type    => The_Type,
        Is_Required => False,
        Is_Implied  => False,
        Is_Fixed    => False,
        Default     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Next        => No_Attribute);
   end New_Attribute;

   -------------------------
   -- New_CDATA_Attribute --
   -------------------------

   procedure New_CDATA_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier) is
   begin
      New_Attribute (Self, Name, CDATA, Attribute);
   end New_CDATA_Attribute;

   ----------------------------
   -- New_Entities_Attribute --
   ----------------------------

   procedure New_Entities_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier) is
   begin
      New_Attribute (Self, Name, ENTITIES, Attribute);
   end New_Entities_Attribute;

   --------------------------
   -- New_Entity_Attribute --
   --------------------------

   procedure New_Entity_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier) is
   begin
      New_Attribute (Self, Name, ENTITY, Attribute);
   end New_Entity_Attribute;

   ----------------------
   -- New_Id_Attribute --
   ----------------------

   procedure New_Id_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier) is
   begin
      New_Attribute (Self, Name, ID, Attribute);
   end New_Id_Attribute;

   -------------------------
   -- New_IdRef_Attribute --
   -------------------------

   procedure New_IdRef_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier) is
   begin
      New_Attribute (Self, Name, IDREF, Attribute);
   end New_IdRef_Attribute;

   --------------------------
   -- New_IdRefs_Attribute --
   --------------------------

   procedure New_IdRefs_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier) is
   begin
      New_Attribute (Self, Name, IDREFS, Attribute);
   end New_IdRefs_Attribute;

   ---------------------------
   -- New_NmToken_Attribute --
   ---------------------------

   procedure New_NmToken_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier) is
   begin
      New_Attribute (Self, Name, NMTOKEN, Attribute);
   end New_NmToken_Attribute;

   ----------------------------
   -- New_NmTokens_Attribute --
   ----------------------------

   procedure New_NmTokens_Attribute
    (Self      : in out Attribute_Table;
     Name      : Symbol_Identifier;
     Attribute : out Attribute_Identifier) is
   begin
      New_Attribute (Self, Name, NMTOKENS, Attribute);
   end New_NmTokens_Attribute;

   ----------
   -- Next --
   ----------

   function Next
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Attribute_Identifier is
   begin
      return Self.Table (Attribute).Next;
   end Next;

   -----------
   -- Reset --
   -----------

   procedure Reset (Self : in out Attribute_Table) is
   begin
      --  Clear existing data.

      for J in Self.Table'First .. Self.Last loop
         Matreshka.Internals.Strings.Dereference (Self.Table (J).Default);
      end loop;

      --  Resets to initial state.

      Self.Last := No_Attribute;
   end Reset;

   -----------------
   -- Set_Default --
   -----------------

   procedure Set_Default
    (Self      : in out Attribute_Table;
     Attribute : Attribute_Identifier;
     Value     : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Matreshka.Internals.Strings.Reference (Value);
      Self.Table (Attribute).Default := Value;
   end Set_Default;

   ------------------
   -- Set_Is_Fixed --
   ------------------

   procedure Set_Is_Fixed
    (Self      : in out Attribute_Table;
     Attribute : Attribute_Identifier;
     Value     : Boolean) is
   begin
      Self.Table (Attribute).Is_Fixed := Value;
   end Set_Is_Fixed;

   --------------------
   -- Set_Is_Implied --
   --------------------

   procedure Set_Is_Implied
    (Self      : in out Attribute_Table;
     Attribute : Attribute_Identifier;
     Value     : Boolean) is
   begin
      Self.Table (Attribute).Is_Implied := Value;
   end Set_Is_Implied;

   ---------------------
   -- Set_Is_Required --
   ---------------------

   procedure Set_Is_Required
    (Self      : in out Attribute_Table;
     Attribute : Attribute_Identifier;
     Value     : Boolean) is
   begin
      Self.Table (Attribute).Is_Required := Value;
   end Set_Is_Required;

   -------------------------
   -- Symbol_Of_Type_Name --
   -------------------------

   function Symbol_Of_Type_Name
    (Self      : Attribute_Table;
     Attribute : Attribute_Identifier) return Symbol_Identifier is
   begin
      case Self.Table (Attribute).The_Type is
         when CDATA =>
            return Symbol_CDATA;

         when ENTITIES =>
            return Symbol_ENTITIES;

         when ENTITY =>
            return Symbol_ENTITY;

         when ID =>
            return Symbol_ID;

         when IDREF =>
            return Symbol_IDREF;

         when IDREFS =>
            return Symbol_IDREFS;

         when NMTOKEN =>
            return Symbol_NMTOKEN;

         when NMTOKENS =>
            return Symbol_NMTOKENS;
      end case;
   end Symbol_Of_Type_Name;

end Matreshka.Internals.XML.Attribute_Tables;
