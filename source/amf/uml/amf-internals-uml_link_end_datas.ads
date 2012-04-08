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
with AMF.Internals.UML_Elements;
with AMF.UML.Elements.Collections;
with AMF.UML.Input_Pins;
with AMF.UML.Link_End_Datas;
with AMF.UML.Properties;
with AMF.UML.Qualifier_Values.Collections;
with AMF.Visitors;

package AMF.Internals.UML_Link_End_Datas is

   type UML_Link_End_Data_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Link_End_Datas.UML_Link_End_Data with null record;

   overriding function Get_End
    (Self : not null access constant UML_Link_End_Data_Proxy)
       return AMF.UML.Properties.UML_Property_Access;
   --  Getter of LinkEndData::end.
   --
   --  Association end for which this link-end data specifies values.

   overriding procedure Set_End
    (Self : not null access UML_Link_End_Data_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access);
   --  Setter of LinkEndData::end.
   --
   --  Association end for which this link-end data specifies values.

   overriding function Get_Qualifier
    (Self : not null access constant UML_Link_End_Data_Proxy)
       return AMF.UML.Qualifier_Values.Collections.Set_Of_UML_Qualifier_Value;
   --  Getter of LinkEndData::qualifier.
   --
   --  List of qualifier values

   overriding function Get_Value
    (Self : not null access constant UML_Link_End_Data_Proxy)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access;
   --  Getter of LinkEndData::value.
   --
   --  Input pin that provides the specified object for the given end. This
   --  pin is omitted if the link-end data specifies an 'open' end for reading.

   overriding procedure Set_Value
    (Self : not null access UML_Link_End_Data_Proxy;
     To   : AMF.UML.Input_Pins.UML_Input_Pin_Access);
   --  Setter of LinkEndData::value.
   --
   --  Input pin that provides the specified object for the given end. This
   --  pin is omitted if the link-end data specifies an 'open' end for reading.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Link_End_Data_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Link_End_Data_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Link_End_Data_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned
   --  elements of an element.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Link_End_Data_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Link_End_Data_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Link_End_Data_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Link_End_Datas;
