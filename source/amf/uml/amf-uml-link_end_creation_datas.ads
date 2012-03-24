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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  A link end creation data is not an action. It is an element that 
--  identifies links. It identifies one end of a link to be created by a 
--  create link action.
------------------------------------------------------------------------------
limited with AMF.UML.Input_Pins;
with AMF.UML.Link_End_Datas;

package AMF.UML.Link_End_Creation_Datas is

   pragma Preelaborate;

   type UML_Link_End_Creation_Data is limited interface
     and AMF.UML.Link_End_Datas.UML_Link_End_Data;

   type UML_Link_End_Creation_Data_Access is
     access all UML_Link_End_Creation_Data'Class;
   for UML_Link_End_Creation_Data_Access'Storage_Size use 0;

   not overriding function Get_Insert_At
    (Self : not null access constant UML_Link_End_Creation_Data)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access is abstract;
   --  Getter of LinkEndCreationData::insertAt.
   --
   --  Specifies where the new link should be inserted for ordered association 
   --  ends, or where an existing link should be moved to. The type of the 
   --  input is UnlimitedNatural, but the input cannot be zero. This pin is 
   --  omitted for association ends that are not ordered.

   not overriding procedure Set_Insert_At
    (Self : not null access UML_Link_End_Creation_Data;
     To   : AMF.UML.Input_Pins.UML_Input_Pin_Access) is abstract;
   --  Setter of LinkEndCreationData::insertAt.
   --
   --  Specifies where the new link should be inserted for ordered association 
   --  ends, or where an existing link should be moved to. The type of the 
   --  input is UnlimitedNatural, but the input cannot be zero. This pin is 
   --  omitted for association ends that are not ordered.

   not overriding function Get_Is_Replace_All
    (Self : not null access constant UML_Link_End_Creation_Data)
       return Boolean is abstract;
   --  Getter of LinkEndCreationData::isReplaceAll.
   --
   --  Specifies whether the existing links emanating from the object on this 
   --  end should be destroyed before creating a new link.

   not overriding procedure Set_Is_Replace_All
    (Self : not null access UML_Link_End_Creation_Data;
     To   : Boolean) is abstract;
   --  Setter of LinkEndCreationData::isReplaceAll.
   --
   --  Specifies whether the existing links emanating from the object on this 
   --  end should be destroyed before creating a new link.

end AMF.UML.Link_End_Creation_Datas;
