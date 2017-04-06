------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Web API Definition                            --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2017, Vadim Godunko <vgodunko@gmail.com>                     --
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
with WebAPI.HTML.Elements;
with WebAPI.HTML.Validity_States;

package WebAPI.HTML.Option_Elements is

   pragma Preelaborate;

   type HTML_Option_Element is limited interface
     and WebAPI.HTML.Elements.HTML_Element;

   type HTML_Option_Element_Access is access all HTML_Option_Element'Class
      with Storage_Size => 0;

--   XXX Not implemented
--
--   interface HTMLOptionElement : HTMLElement {
--     readonly attribute HTMLFormElement? form;

   not overriding function Get_Disabled
    (Self : not null access constant HTML_Option_Element)
       return Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "disabled";

   not overriding procedure Set_Disabled
    (Self : not null access constant HTML_Option_Element;
     To   : Boolean) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "disabled";

   not overriding function Get_Label
    (Self : not null access constant HTML_Option_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "label";

   not overriding procedure Set_Label
    (Self : not null access constant HTML_Option_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "label";

   not overriding function Get_Default_Selected
    (Self : not null access constant HTML_Option_Element)
       return Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "defaultSelected";

   not overriding procedure Set_Default_Selected
    (Self : not null access constant HTML_Option_Element;
     To   : Boolean) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "defaultSelected";

   not overriding function Get_Selected
    (Self : not null access constant HTML_Option_Element)
       return Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "selected";

   not overriding procedure Set_Selected
    (Self : not null access constant HTML_Option_Element;
     To   : Boolean) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "selected";

   not overriding function Get_Value
    (Self : not null access constant HTML_Option_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "value";

   not overriding procedure Set_Value
    (Self : not null access constant HTML_Option_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "value";

   not overriding function Get_Text
    (Self : not null access constant HTML_Option_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "text";

   not overriding procedure Set_Text
    (Self : not null access constant HTML_Option_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "text";

   not overriding function Get_Index
    (Self : not null access constant HTML_Option_Element)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "index";

end WebAPI.HTML.Option_Elements;
