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
--  A link end data is not an action. It is an element that identifies links. 
--  It identifies one end of a link to be read or written by the children of a 
--  link action. A link cannot be passed as a runtime value to or from an 
--  action. Instead, a link is identified by its end objects and qualifier 
--  values, if any. This requires more than one piece of data, namely, the 
--  statically-specified end in the user model, the object on the end, and the 
--  qualifier values for that end, if any. These pieces are brought together 
--  around a link end data. Each association end is identified separately with 
--  an instance of the LinkEndData class.
------------------------------------------------------------------------------
with AMF.UML.Elements;
limited with AMF.UML.Input_Pins;
limited with AMF.UML.Properties;
limited with AMF.UML.Qualifier_Values.Collections;

package AMF.UML.Link_End_Datas is

   pragma Preelaborate;

   type UML_Link_End_Data is limited interface
     and AMF.UML.Elements.UML_Element;

   type UML_Link_End_Data_Access is
     access all UML_Link_End_Data'Class;
   for UML_Link_End_Data_Access'Storage_Size use 0;

   not overriding function Get_End
    (Self : not null access constant UML_Link_End_Data)
       return AMF.UML.Properties.UML_Property_Access is abstract;
   --  Getter of LinkEndData::end.
   --
   --  Association end for which this link-end data specifies values.

   not overriding procedure Set_End
    (Self : not null access UML_Link_End_Data;
     To   : AMF.UML.Properties.UML_Property_Access) is abstract;
   --  Setter of LinkEndData::end.
   --
   --  Association end for which this link-end data specifies values.

   not overriding function Get_Qualifier
    (Self : not null access constant UML_Link_End_Data)
       return AMF.UML.Qualifier_Values.Collections.Set_Of_UML_Qualifier_Value is abstract;
   --  Getter of LinkEndData::qualifier.
   --
   --  List of qualifier values

   not overriding function Get_Value
    (Self : not null access constant UML_Link_End_Data)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access is abstract;
   --  Getter of LinkEndData::value.
   --
   --  Input pin that provides the specified object for the given end. This 
   --  pin is omitted if the link-end data specifies an 'open' end for reading.

   not overriding procedure Set_Value
    (Self : not null access UML_Link_End_Data;
     To   : AMF.UML.Input_Pins.UML_Input_Pin_Access) is abstract;
   --  Setter of LinkEndData::value.
   --
   --  Input pin that provides the specified object for the given end. This 
   --  pin is omitted if the link-end data specifies an 'open' end for reading.

end AMF.UML.Link_End_Datas;
