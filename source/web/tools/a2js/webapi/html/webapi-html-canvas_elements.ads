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
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package provides binding for interface HTMLCanvasElement.
------------------------------------------------------------------------------
with League.Strings;

with WebAPI.HTML.Elements;
with WebAPI.HTML.Rendering_Contexts;

package WebAPI.HTML.Canvas_Elements is

   pragma Preelaborate;

   type HTML_Canvas_Element is limited interface
     and WebAPI.HTML.Elements.HTML_Element;

   type HTML_Canvas_Element_Access is access all HTML_Canvas_Element'Class
      with Storage_Size => 0;

   not overriding function Get_Width
    (Self : not null access constant HTML_Canvas_Element)
       return Natural is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "width";

   not overriding procedure Set_Width
    (Self : not null access HTML_Canvas_Element;
     To   : Natural) is abstract
       with Import        => True,
            Convention    => JavaScript_Property_Setter,
            External_Name => "width";

   not overriding function Get_Height
    (Self : not null access constant HTML_Canvas_Element)
       return Natural is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "height";

   not overriding procedure Set_Height
    (Self : not null access HTML_Canvas_Element;
     To   : Natural) is abstract
       with Import        => True,
            Convention    => JavaScript_Property_Setter,
            External_Name => "height";

   not overriding function Get_Context
    (Self       : not null access HTML_Canvas_Element;
     Context_Id : League.Strings.Universal_String)
       return WebAPI.HTML.Rendering_Contexts.Rendering_Context_Access
         is abstract
           with Import         => True,
                Convention     => JavaScript_Function,
                External_Name  => "getContext";
   --  Returns an object that exposes an API for drawing on the canvas. The
   --  first argument specifies the desired API, either "2d" or "webgl".
   --  Subsequent arguments are handled by that API.
   --
   --  This specification defines the "2d" context below. There is also a
   --  specification that defines a "webgl" context. [WEBGL]
   --
   --  Returns null if the given context ID is not supported, if the canvas has
   --  already been initialised with the other context type (e.g.  trying to
   --  get a "2d" context after getting a "webgl" context).
   --
   --  Throws an InvalidStateError exception if the setContext() or
   --  transferControlToProxy() methods have been used.

   not overriding function Probably_Supports_Context
    (Self       : not null access HTML_Canvas_Element;
     Context_Id : League.Strings.Universal_String) return Boolean is abstract
       with Import        => True,
            Convention    => JavaScript_Function,
            External_Name => "probablySupportsContext";
   --  Returns false if calling getContext() with the same arguments would
   --  definitely return null, and true otherwise.
   --
   --  This return value is not a guarantee that getContext() will or will not
   --  return an object, as conditions (e.g. availability of system resources)
   --  can vary over time.
   --
   --  Throws an InvalidStateError exception if the setContext() or
   --  transferControlToProxy() methods have been used.

end WebAPI.HTML.Canvas_Elements;
