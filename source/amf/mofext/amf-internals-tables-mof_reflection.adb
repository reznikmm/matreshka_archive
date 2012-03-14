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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.Holders.Elements;
with AMF.Internals.Helpers;
with AMF.Internals.Holders.UML_Holders;
with AMF.Internals.Tables.MOF_Element_Table;
with AMF.Internals.Tables.MOF_Metamodel;
with AMF.Internals.Tables.MOF_Types;
with AMF.Internals.Tables.UML_Metamodel;
with AMF.MOF.Tags;
with AMF.UML.Comments.Collections;
with AMF.UML.Elements.Collections;
with League.Holders;

package body AMF.Internals.Tables.MOF_Reflection is

   ---------
   -- Get --
   ---------

   function Get
    (Self     : MOF_Element;
     Property : CMOF_Element) return League.Holders.Holder
   is

      function Tag_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Tag class.

      -------------
      -- Tag_Get --
      -------------

      function Tag_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.MOF_Metamodel.MP_MOF_Tag_Element then
            --  Tag::element : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.MOF.Tags.MOF_Tag_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Element);

         elsif Property = AMF.Internals.Tables.MOF_Metamodel.MP_MOF_Tag_Name then
            --  Tag::name : String

            return
              League.Holders.To_Holder
               (AMF.MOF.Tags.MOF_Tag_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Name);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            --  Element::ownedComment : Comment

            return
              AMF.UML.Comments.Collections.UML_Comment_Collections.Internals.To_Holder
               (AMF.MOF.Tags.MOF_Tag_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Comment);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Element then
            --  Element::ownedElement : Element

            return
              AMF.UML.Elements.Collections.UML_Element_Collections.Internals.To_Holder
               (AMF.MOF.Tags.MOF_Tag_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owned_Element);

         elsif Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owner then
            --  Element::owner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.MOF.Tags.MOF_Tag_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Owner));

         elsif Property = AMF.Internals.Tables.MOF_Metamodel.MP_MOF_Tag_Tag_Owner then
            --  Tag::tagOwner : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.MOF.Tags.MOF_Tag_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Tag_Owner));

         elsif Property = AMF.Internals.Tables.MOF_Metamodel.MP_MOF_Tag_Value then
            --  Tag::value : String

            return
              League.Holders.To_Holder
               (AMF.MOF.Tags.MOF_Tag_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Value);

         else
            raise Program_Error;
         end if;
      end Tag_Get;

   begin
      case AMF.Internals.Tables.MOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.MOF_Types.E_None =>
            raise Program_Error;

         when AMF.Internals.Tables.MOF_Types.E_Tag =>
            return Tag_Get;
      end case;
   end Get;

   --------------------
   -- Get_Meta_Class --
   --------------------

   function Get_Meta_Class (Self : MOF_Element) return CMOF_Element is
   begin
      case MOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.MOF_Types.E_None =>
            return 0;

         when AMF.Internals.Tables.MOF_Types.E_Tag =>
            return AMF.Internals.Tables.MOF_Metamodel.MC_MOF_Tag;
      end case;
   end Get_Meta_Class;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self     : MOF_Element;
     Property : CMOF_Element;
     Value    : League.Holders.Holder)
   is

      procedure Tag_Set;
      --  Sets attribute's value of instance of Tag class.

      -------------
      -- Tag_Set --
      -------------

      procedure Tag_Set is
      begin
         if Property = AMF.Internals.Tables.MOF_Metamodel.MP_MOF_Tag_Name then
            --  Tag::name : String

            AMF.MOF.Tags.MOF_Tag_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Name
               (League.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.MOF_Metamodel.MP_MOF_Tag_Tag_Owner then
            --  Tag::tagOwner : Element

            AMF.MOF.Tags.MOF_Tag_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Tag_Owner
               (AMF.UML.Elements.UML_Element_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.MOF_Metamodel.MP_MOF_Tag_Value then
            --  Tag::value : String

            AMF.MOF.Tags.MOF_Tag_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Value
               (League.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Tag_Set;
   begin
      case MOF_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.MOF_Types.E_None =>
            raise Program_Error;

         when AMF.Internals.Tables.MOF_Types.E_Tag =>
            Tag_Set;
      end case;
   end Set;

end AMF.Internals.Tables.MOF_Reflection;
