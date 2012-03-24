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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  Physical definition of a graphical image.
------------------------------------------------------------------------------
with AMF.UML.Elements;

package AMF.UML.Images is

   pragma Preelaborate;

   type UML_Image is limited interface
     and AMF.UML.Elements.UML_Element;

   type UML_Image_Access is
     access all UML_Image'Class;
   for UML_Image_Access'Storage_Size use 0;

   not overriding function Get_Content
    (Self : not null access constant UML_Image)
       return AMF.Optional_String is abstract;
   --  Getter of Image::content.
   --
   --  This contains the serialization of the image according to the format. 
   --  The value could represent a bitmap, image such as a GIF file, or 
   --  drawing 'instructions' using a standard such as Scalable Vector Graphic 
   --  (SVG) (which is XML based).

   not overriding procedure Set_Content
    (Self : not null access UML_Image;
     To   : AMF.Optional_String) is abstract;
   --  Setter of Image::content.
   --
   --  This contains the serialization of the image according to the format. 
   --  The value could represent a bitmap, image such as a GIF file, or 
   --  drawing 'instructions' using a standard such as Scalable Vector Graphic 
   --  (SVG) (which is XML based).

   not overriding function Get_Format
    (Self : not null access constant UML_Image)
       return AMF.Optional_String is abstract;
   --  Getter of Image::format.
   --
   --  This indicates the format of the content - which is how the string 
   --  content should be interpreted. The following values are reserved: SVG, 
   --  GIF, PNG, JPG, WMF, EMF, BMP. In addition the prefix 'MIME: ' is also 
   --  reserved. This option can be used as an alternative to express the 
   --  reserved values above, for example 'SVG' could instead be expressed as 
   --  'MIME: image/svg+xml'.

   not overriding procedure Set_Format
    (Self : not null access UML_Image;
     To   : AMF.Optional_String) is abstract;
   --  Setter of Image::format.
   --
   --  This indicates the format of the content - which is how the string 
   --  content should be interpreted. The following values are reserved: SVG, 
   --  GIF, PNG, JPG, WMF, EMF, BMP. In addition the prefix 'MIME: ' is also 
   --  reserved. This option can be used as an alternative to express the 
   --  reserved values above, for example 'SVG' could instead be expressed as 
   --  'MIME: image/svg+xml'.

   not overriding function Get_Location
    (Self : not null access constant UML_Image)
       return AMF.Optional_String is abstract;
   --  Getter of Image::location.
   --
   --  This contains a location that can be used by a tool to locate the image 
   --  as an alternative to embedding it in the stereotype.

   not overriding procedure Set_Location
    (Self : not null access UML_Image;
     To   : AMF.Optional_String) is abstract;
   --  Setter of Image::location.
   --
   --  This contains a location that can be used by a tool to locate the image 
   --  as an alternative to embedding it in the stereotype.

end AMF.UML.Images;
