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
with WebAPI.DOM.Elements;

package WebAPI.HTML.Elements is

   pragma Preelaborate;

   type HTML_Element is limited interface
     and WebAPI.DOM.Elements.Element;
--     and GlobalEventHandlers;

   type HTML_Element_Access is access all HTML_Element'Class
     with Storage_Size => 0;

   not overriding function Get_Title
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "title";

   not overriding procedure Set_Title
    (Self : not null access HTML_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "title";

   not overriding function Get_Lang
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "lang";

   not overriding procedure Set_Lang
    (Self : not null access HTML_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "lang";

   not overriding function Get_Translate
    (Self : not null access constant HTML_Element) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "translate";

   not overriding procedure Set_Translate
    (Self : not null access HTML_Element;
     To   : Boolean) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "translate";

   not overriding function Get_Dir
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "dir";

   not overriding procedure Set_Dir
    (Self : not null access HTML_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "dir";

--    readonly attribute DOMStringMap dataset;

   not overriding function Get_Hidden
    (Self : not null access constant HTML_Element) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "hidden";

   not overriding procedure Set_Hidden
    (Self : not null access HTML_Element;
     To   : Boolean) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "hidden";

   not overriding procedure Click
    (Self : not null access HTML_Element) is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "click";

   not overriding function Get_Tab_Index
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "tabIndex";

   not overriding procedure Set_Tab_Index
    (Self : not null access HTML_Element;
     To   : WebAPI.DOM_Long) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "tabIndex";

   not overriding procedure Focus
    (Self : not null access HTML_Element) is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "focus";

   not overriding procedure Blur
    (Self : not null access HTML_Element) is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "blur";

   not overriding function Get_Access_Key
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "accessKey";

   not overriding procedure Set_Access_Key
    (Self : not null access HTML_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "accessKey";

   not overriding function Get_Access_Key_Label
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "accessKeyLabel";

   not overriding function Get_Content_Editable
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "contentEditable";

   not overriding procedure Set_Content_Editable
    (Self : not null access HTML_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "contentEditable";

   not overriding function Get_Is_Content_Editable
    (Self : not null access constant HTML_Element) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "isContentEditable";

   not overriding function Get_Spellcheck
    (Self : not null access constant HTML_Element) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "spellcheck";

   not overriding procedure Set_Spellcheck
    (Self : not null access HTML_Element;
     To   : Boolean) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "spellcheck";

   ----------------------------------
   -- CSSOM View Module Extensions --
   ----------------------------------

   not overriding function Get_Offset_Parent
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM.Elements.Element_Access is abstract
       with Import     => True,
            Convention => JavaScript_Property_Getter,
            Link_Name  => "offsetParent";

   not overriding function Get_Offset_Top
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "offsetTop";

   not overriding function Get_Offset_Left
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "offsetLeft";

   not overriding function Get_Offset_Width
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "offsetWidth";

   not overriding function Get_Offset_Height
    (Self : not null access constant HTML_Element)
       return WebAPI.DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "offsetHeight";

end WebAPI.HTML.Elements;
