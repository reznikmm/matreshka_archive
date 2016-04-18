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

package WebAPI.HTML.Image_Elements is

   pragma Preelaborate;

   type HTML_Image_Element is limited interface
     and WebAPI.HTML.Elements.HTML_Element;

   type HTML_Image_Element_Access is access all HTML_Image_Element'Class
      with Storage_Size => 0;

   not overriding function Get_Alt
    (Self : not null access constant HTML_Image_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "alt";

   not overriding procedure Set_Alt
    (Self : not null access constant HTML_Image_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "alt";

   not overriding function Get_Src
    (Self : not null access constant HTML_Image_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "src";

   not overriding procedure Set_Src
    (Self : not null access constant HTML_Image_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "src";

   not overriding function Get_Cross_Origin
    (Self : not null access constant HTML_Image_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "crossOrigin";

   not overriding procedure Set_Cross_Origin
    (Self : not null access constant HTML_Image_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "crossOrigin";

   not overriding function Get_Use_Map
    (Self : not null access constant HTML_Image_Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "useMap";

   not overriding procedure Set_Use_Map
    (Self : not null access constant HTML_Image_Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "useMap";

   not overriding function Get_Is_Map
    (Self : not null access constant HTML_Image_Element)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "isMap";

   not overriding procedure Set_Is_Map
    (Self : not null access constant HTML_Image_Element;
     To   : WebAPI.DOM_Boolean) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "isMap";

   not overriding function Get_Width
    (Self : not null access constant HTML_Image_Element)
       return WebAPI.DOM_Unsigned_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "width";

   not overriding procedure Set_Width
    (Self : not null access constant HTML_Image_Element;
     To   : WebAPI.DOM_Unsigned_Long) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "width";

   not overriding function Get_Height
    (Self : not null access constant HTML_Image_Element)
       return WebAPI.DOM_Unsigned_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "height";

   not overriding procedure Set_Height
    (Self : not null access constant HTML_Image_Element;
     To   : WebAPI.DOM_Unsigned_Long) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "height";

   not overriding function Get_Natural_Width
    (Self : not null access constant HTML_Image_Element)
       return WebAPI.DOM_Unsigned_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "naturalWidth";

   not overriding function Get_Natural_Height
    (Self : not null access constant HTML_Image_Element)
       return WebAPI.DOM_Unsigned_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "naturalHeight";

   not overriding function Get_Complete
    (Self : not null access constant HTML_Image_Element)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "complete";

end WebAPI.HTML.Image_Elements;
