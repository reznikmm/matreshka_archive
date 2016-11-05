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
-- Copyright © 2014-2016, Vadim Godunko <vgodunko@gmail.com>                --
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

package WebAPI.HTML.Form_Elements is

   pragma Preelaborate;

   type HTML_Form_Element is limited interface
     and WebAPI.HTML.Elements.HTML_Element;

   type HTML_Form_Element_Access is access all HTML_Form_Element'Class
      with Storage_Size => 0;

--   XXX Not implemented
--
--   interface HTMLFormElement : HTMLElement {
--    readonly attribute HTMLFormControlsCollection elements;
--    readonly attribute long length;
--    getter Element (unsigned long index);
--    getter (RadioNodeList or Element) (DOMString name);

   not overriding function Get_Accept_Charset
    (Self : not null access constant HTML_Form_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "acceptCharset";

   not overriding procedure Set_Accept_Charset
    (Self : not null access constant HTML_Form_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "acceptCharset";

   not overriding function Get_Action
    (Self : not null access constant HTML_Form_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "action";

   not overriding procedure Set_Action
    (Self : not null access constant HTML_Form_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "action";

   not overriding function Get_Autocomplete
    (Self : not null access constant HTML_Form_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "autocomplete";

   not overriding procedure Set_Autocomplete
    (Self : not null access constant HTML_Form_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "autocomplete";

   not overriding function Get_Enctype
    (Self : not null access constant HTML_Form_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "enctype";

   not overriding procedure Set_Enctype
    (Self : not null access constant HTML_Form_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "enctype";

   not overriding function Get_Encoding
    (Self : not null access constant HTML_Form_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "encoding";

   not overriding procedure Set_Encoding
    (Self : not null access constant HTML_Form_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "encoding";

   not overriding function Get_Method
    (Self : not null access constant HTML_Form_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "method";

   not overriding procedure Set_Method
    (Self : not null access constant HTML_Form_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "method";

   not overriding function Get_Name
    (Self : not null access constant HTML_Form_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "name";

   not overriding procedure Set_Name
    (Self : not null access constant HTML_Form_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "name";

   not overriding function Get_No_Validate
    (Self : not null access constant HTML_Form_Element)
       return Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "noValidate";

   not overriding procedure Set_No_Validate
    (Self : not null access constant HTML_Form_Element;
     To   : Boolean) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "noValidate";

   not overriding function Get_Target
    (Self : not null access constant HTML_Form_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "target";

   not overriding procedure Set_Target
    (Self : not null access constant HTML_Form_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "target";

   not overriding procedure Submit
    (Self : not null access constant HTML_Form_Element) is abstract
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "submit";

   not overriding procedure Reset
    (Self : not null access constant HTML_Form_Element) is abstract
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "reset";

   not overriding function Check_Validity
    (Self : not null access constant HTML_Form_Element)
       return Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "checkValidity";

end WebAPI.HTML.Form_Elements;
