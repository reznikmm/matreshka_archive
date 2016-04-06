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

package WebAPI.DOM.Rect_Read_Onlys is

   pragma Preelaborate;

   type DOM_Rect_Read_Only is limited interface;

   type DOM_Rect_Read_Only_Access is access all DOM_Rect_Read_Only'Class
     with Storage_Size => 0;

   not overriding function Get_X
    (Self : not null access constant DOM_Rect_Read_Only)
       return DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "x";

   not overriding function Get_Y
    (Self : not null access constant DOM_Rect_Read_Only)
       return DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "y";

   not overriding function Get_Width
    (Self : not null access constant DOM_Rect_Read_Only)
       return DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "width";

   not overriding function Get_Height
    (Self : not null access constant DOM_Rect_Read_Only)
       return DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "height";

   not overriding function Get_Top
    (Self : not null access constant DOM_Rect_Read_Only)
       return DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "top";

   not overriding function Get_Right
    (Self : not null access constant DOM_Rect_Read_Only)
       return DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "right";

   not overriding function Get_Bottom
    (Self : not null access constant DOM_Rect_Read_Only)
       return DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "bottom";

   not overriding function Get_Left
    (Self : not null access constant DOM_Rect_Read_Only)
       return DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "left";

end WebAPI.DOM.Rect_Read_Onlys;
