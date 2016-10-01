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
-- Copyright © 2016, Vadim Godunko <vgodunko@gmail.com>                     --
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

package WebAPI.HTML.Button_Elements is

   pragma Preelaborate;

   type HTML_Button_Element is limited interface
     and WebAPI.HTML.Elements.HTML_Element;

   type HTML_Button_Element_Access is access all HTML_Button_Element'Class
     with Storage_Size => 0;

   not overriding function Get_Autofocus
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "autofocus";

   not overriding procedure Set_Autofocus
    (Self : not null access constant HTML_Button_Element;
     To   : WebAPI.DOM_Boolean) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "autofocus";

   not overriding function Get_Disabled
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "disabled";

   not overriding procedure Set_Disabled
    (Self : not null access constant HTML_Button_Element;
     To   : WebAPI.DOM_Boolean) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "disabled";

   --    readonly attribute HTMLFormElement? form;

   not overriding function Get_Form_Action
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "formAction";

   not overriding procedure Set_Form_Action
    (Self : not null access constant HTML_Button_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "formAction";

   not overriding function Get_Form_Enctype
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "formEnctype";

   not overriding procedure Set_Form_Enctype
    (Self : not null access constant HTML_Button_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "formEnctype";

   not overriding function Get_Form_Method
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "formMethod";

   not overriding procedure Set_Form_Method
    (Self : not null access constant HTML_Button_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "formMethod";

   not overriding function Get_Form_No_Validate
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "formNoValidate";

   not overriding procedure Set_Form_No_Validate
    (Self : not null access constant HTML_Button_Element;
     To   : WebAPI.DOM_Boolean) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "formNoValidate";

   not overriding function Get_Form_Target
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "formTarget";

   not overriding procedure Set_Form_Target
    (Self : not null access constant HTML_Button_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "formTarget";

   not overriding function Get_Name
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "name";

   not overriding procedure Set_Name
    (Self : not null access constant HTML_Button_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "name";

   not overriding function Get_Type
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "type";

   not overriding procedure Set_Type
    (Self : not null access constant HTML_Button_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "type";

   not overriding function Get_Value
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "vlaue";

   not overriding procedure Set_Value
    (Self : not null access constant HTML_Button_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "value";

   not overriding function Get_Will_Validate
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "willValidate";

   --    readonly attribute ValidityState validity;

   not overriding function Get_Validation_Message
    (Self : not null access constant HTML_Button_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "validationMessage";

   --    boolean checkValidity();
   --    void setCustomValidity(DOMString error);
   --
   --    readonly attribute NodeList labels;

end WebAPI.HTML.Button_Elements;
