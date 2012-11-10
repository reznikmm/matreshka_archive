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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  Image is a graphical element that defines a shape that paints an image 
--  with a given URL within given bounds.
------------------------------------------------------------------------------
limited with AMF.DC;
with AMF.DG.Graphical_Elements;
with League.Strings;

package AMF.DG.Images is

   pragma Preelaborate;

   type DG_Image is limited interface
     and AMF.DG.Graphical_Elements.DG_Graphical_Element;

   type DG_Image_Access is
     access all DG_Image'Class;
   for DG_Image_Access'Storage_Size use 0;

   not overriding function Get_Source
    (Self : not null access constant DG_Image)
       return League.Strings.Universal_String is abstract;
   --  Getter of Image::source.
   --
   --  the URL of a referenced image file.

   not overriding procedure Set_Source
    (Self : not null access DG_Image;
     To   : League.Strings.Universal_String) is abstract;
   --  Setter of Image::source.
   --
   --  the URL of a referenced image file.

   not overriding function Get_Bounds
    (Self : not null access constant DG_Image)
       return AMF.DC.DC_Bounds is abstract;
   --  Getter of Image::bounds.
   --
   --  the bounds within which the image is rendered.

   not overriding procedure Set_Bounds
    (Self : not null access DG_Image;
     To   : AMF.DC.DC_Bounds) is abstract;
   --  Setter of Image::bounds.
   --
   --  the bounds within which the image is rendered.

   not overriding function Get_Is_Aspect_Ratio_Preserved
    (Self : not null access constant DG_Image)
       return Boolean is abstract;
   --  Getter of Image::isAspectRatioPreserved.
   --
   --  wether to preserve the aspect ratio of the image upon scaling, i.e. the 
   --  same scale factor for width and height.

   not overriding procedure Set_Is_Aspect_Ratio_Preserved
    (Self : not null access DG_Image;
     To   : Boolean) is abstract;
   --  Setter of Image::isAspectRatioPreserved.
   --
   --  wether to preserve the aspect ratio of the image upon scaling, i.e. the 
   --  same scale factor for width and height.

end AMF.DG.Images;
