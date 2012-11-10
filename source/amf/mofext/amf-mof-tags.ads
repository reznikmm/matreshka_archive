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
with AMF.UML.Elements;
limited with AMF.UML.Elements.Collections;
with League.Strings;

package AMF.MOF.Tags is

   pragma Preelaborate;

   type MOF_Tag is limited interface
     and AMF.UML.Elements.UML_Element;

   type MOF_Tag_Access is
     access all MOF_Tag'Class;
   for MOF_Tag_Access'Storage_Size use 0;

   not overriding function Get_Name
    (Self : not null access constant MOF_Tag)
       return League.Strings.Universal_String is abstract;
   --  Getter of Tag::name.
   --

   not overriding procedure Set_Name
    (Self : not null access MOF_Tag;
     To   : League.Strings.Universal_String) is abstract;
   --  Setter of Tag::name.
   --

   not overriding function Get_Value
    (Self : not null access constant MOF_Tag)
       return League.Strings.Universal_String is abstract;
   --  Getter of Tag::value.
   --

   not overriding procedure Set_Value
    (Self : not null access MOF_Tag;
     To   : League.Strings.Universal_String) is abstract;
   --  Setter of Tag::value.
   --

   not overriding function Get_Element
    (Self : not null access constant MOF_Tag)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is abstract;
   --  Getter of Tag::element.
   --

   not overriding function Get_Tag_Owner
    (Self : not null access constant MOF_Tag)
       return AMF.UML.Elements.UML_Element_Access is abstract;
   --  Getter of Tag::tagOwner.
   --

   not overriding procedure Set_Tag_Owner
    (Self : not null access MOF_Tag;
     To   : AMF.UML.Elements.UML_Element_Access) is abstract;
   --  Setter of Tag::tagOwner.
   --

end AMF.MOF.Tags;
