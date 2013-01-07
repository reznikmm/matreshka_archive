------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Internals.Links;
with AMF.Internals.Tables.MOFEXT_Element_Table;
with AMF.Internals.Tables.MOFEXT_Types;
with AMF.Internals.Tables.MOF_Metamodel;
with AMF.Internals.Tables.Primitive_Types_Notification;

package body AMF.Internals.Tables.MOFEXT_Attributes is

   use type Matreshka.Internals.Strings.Shared_String_Access;

   --  Tag
   --
   --     2  Tag::name
   --     1  Element::owner
   --     4  Tag::tagOwner
   --     3  Tag::value
   --
   --     3  Tag::element
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --------------------------
   -- Internal_Get_Element --
   --------------------------

   function Internal_Get_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      case AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.MOFEXT_Types.E_MOF_Tag =>
            return AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Member (0).Collection + 3;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Element;

   -----------------------
   -- Internal_Get_Name --
   -----------------------

   function Internal_Get_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Member (2).String_Value;
   end Internal_Get_Name;

   --------------------------------
   -- Internal_Get_Owned_Comment --
   --------------------------------

   function Internal_Get_Owned_Comment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      case AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.MOFEXT_Types.E_MOF_Tag =>
            return AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Member (0).Collection + 1;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_Comment;

   --------------------------------
   -- Internal_Get_Owned_Element --
   --------------------------------

   function Internal_Get_Owned_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      case AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.MOFEXT_Types.E_MOF_Tag =>
            return AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Member (0).Collection + 2;

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owned_Element;

   ------------------------
   -- Internal_Get_Owner --
   ------------------------

   function Internal_Get_Owner
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.MOFEXT_Types.E_MOF_Tag =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Member (1).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Owner;

   ----------------------------
   -- Internal_Get_Tag_Owner --
   ----------------------------

   function Internal_Get_Tag_Owner
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      case AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.MOFEXT_Types.E_MOF_Tag =>
            return
              AMF.Internals.Links.Opposite_Element
               (AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Member (4).Link, Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Get_Tag_Owner;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Member (3).String_Value;
   end Internal_Get_Value;

   -----------------------
   -- Internal_Set_Name --
   -----------------------

   procedure Internal_Set_Name
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old :=
        AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Member (2).String_Value;

      MOFEXT_Element_Table.Table (Self).Member (2).String_Value := To;
      Matreshka.Internals.Strings.Reference
       (MOFEXT_Element_Table.Table (Self).Member (2).String_Value);

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.MOF_Metamodel.MP_MOF_Tag_Name, Old, To);
      Matreshka.Internals.Strings.Dereference (Old);
   end Internal_Set_Name;

   ----------------------------
   -- Internal_Set_Tag_Owner --
   ----------------------------

   procedure Internal_Set_Tag_Owner
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.MOFEXT_Types.E_MOF_Tag =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.MOF_Metamodel.MA_MOF_Tag_Tag_Owner_Owned_Tag,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Tag_Owner;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old :=
        AMF.Internals.Tables.MOFEXT_Element_Table.Table (Self).Member (3).String_Value;

      MOFEXT_Element_Table.Table (Self).Member (3).String_Value := To;
      Matreshka.Internals.Strings.Reference
       (MOFEXT_Element_Table.Table (Self).Member (3).String_Value);

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.MOF_Metamodel.MP_MOF_Tag_Value, Old, To);
      Matreshka.Internals.Strings.Dereference (Old);
   end Internal_Set_Value;

end AMF.Internals.Tables.MOFEXT_Attributes;
