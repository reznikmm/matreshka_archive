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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.CMOF.Elements;
limited with AMF.CMOF.Elements.Collections;
with League.Strings;

package AMF.CMOF.Tags is

   pragma Preelaborate;

   type CMOF_Tag is limited interface
     and AMF.CMOF.Elements.CMOF_Element;

   type CMOF_Tag_Access is
     access all CMOF_Tag'Class;
   for CMOF_Tag_Access'Storage_Size use 0;

   not overriding function Get_Name
    (Self : not null access constant CMOF_Tag)
       return League.Strings.Universal_String is abstract;
   --  Getter of Tag::name.
   --

   not overriding procedure Set_Name
    (Self : not null access CMOF_Tag;
     To   : League.Strings.Universal_String) is abstract;
   --  Setter of Tag::name.
   --

   not overriding function Get_Value
    (Self : not null access constant CMOF_Tag)
       return League.Strings.Universal_String is abstract;
   --  Getter of Tag::value.
   --

   not overriding procedure Set_Value
    (Self : not null access CMOF_Tag;
     To   : League.Strings.Universal_String) is abstract;
   --  Setter of Tag::value.
   --

   not overriding function Get_Element
    (Self : not null access constant CMOF_Tag)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element is abstract;
   --  Getter of Tag::element.
   --

   not overriding function Get_Tag_Owner
    (Self : not null access constant CMOF_Tag)
       return AMF.CMOF.Elements.CMOF_Element_Access is abstract;
   --  Getter of Tag::tagOwner.
   --

   not overriding procedure Set_Tag_Owner
    (Self : not null access CMOF_Tag;
     To   : AMF.CMOF.Elements.CMOF_Element_Access) is abstract;
   --  Setter of Tag::tagOwner.
   --

end AMF.CMOF.Tags;
