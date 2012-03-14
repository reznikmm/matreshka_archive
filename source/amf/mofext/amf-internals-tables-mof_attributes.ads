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
with Matreshka.Internals.Strings;

package AMF.Internals.Tables.MOF_Attributes is

   function Internal_Get_Element
    (Self : AMF.Internals.MOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Tag => Tag::element

   function Internal_Get_Name
    (Self : AMF.Internals.MOF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Name
    (Self : AMF.Internals.MOF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Tag => Tag::name

   function Internal_Get_Owned_Comment
    (Self : AMF.Internals.MOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Tag => Element::ownedComment

   function Internal_Get_Owned_Element
    (Self : AMF.Internals.MOF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Tag => Element::ownedElement

   function Internal_Get_Owner
    (Self : AMF.Internals.MOF_Element)
       return AMF.Internals.MOF_Element;
   --  Tag => Element::owner

   function Internal_Get_Tag_Owner
    (Self : AMF.Internals.MOF_Element)
       return AMF.Internals.MOF_Element;
   procedure Internal_Set_Tag_Owner
    (Self : AMF.Internals.MOF_Element;
     To   : AMF.Internals.MOF_Element);
   --  Tag => Tag::tagOwner

   function Internal_Get_Value
    (Self : AMF.Internals.MOF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Value
    (Self : AMF.Internals.MOF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Tag => Tag::value

end AMF.Internals.Tables.MOF_Attributes;
