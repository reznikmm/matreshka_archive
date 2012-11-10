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
--  Style contains formatting properties that affect the appearance or style 
--  of graphical elements.
------------------------------------------------------------------------------
limited with AMF.DC;
limited with AMF.DG.Fills;
with AMF.Real_Collections;

package AMF.DG.Styles is

   pragma Preelaborate;

   type DG_Style is limited interface;

   type DG_Style_Access is
     access all DG_Style'Class;
   for DG_Style_Access'Storage_Size use 0;

   not overriding function Get_Fill
    (Self : not null access constant DG_Style)
       return AMF.DG.Fills.DG_Fill_Access is abstract;
   --  Getter of Style::fill.
   --
   --  a reference to a fill that is used to paint the enclosed regions of a 
   --  graphical element. A fill value is exclusive with a fillColor value. If 
   --  both are specified, the fill value is used. If none is specified, no 
   --  fill is applied (i.e. the element becomes see-through).

   not overriding procedure Set_Fill
    (Self : not null access DG_Style;
     To   : AMF.DG.Fills.DG_Fill_Access) is abstract;
   --  Setter of Style::fill.
   --
   --  a reference to a fill that is used to paint the enclosed regions of a 
   --  graphical element. A fill value is exclusive with a fillColor value. If 
   --  both are specified, the fill value is used. If none is specified, no 
   --  fill is applied (i.e. the element becomes see-through).

   not overriding function Get_Fill_Color
    (Self : not null access constant DG_Style)
       return AMF.DC.Optional_DC_Color is abstract;
   --  Getter of Style::fillColor.
   --
   --  a color that is used to paint the enclosed regions of graphical 
   --  element. A fillColor value is exclusive with a fill value. If both are 
   --  specified, the fill value is used. If none is specified, no fill is 
   --  applied (i.e. the element becomes see-through).

   not overriding procedure Set_Fill_Color
    (Self : not null access DG_Style;
     To   : AMF.DC.Optional_DC_Color) is abstract;
   --  Setter of Style::fillColor.
   --
   --  a color that is used to paint the enclosed regions of graphical 
   --  element. A fillColor value is exclusive with a fill value. If both are 
   --  specified, the fill value is used. If none is specified, no fill is 
   --  applied (i.e. the element becomes see-through).

   not overriding function Get_Fill_Opacity
    (Self : not null access constant DG_Style)
       return AMF.Optional_Real is abstract;
   --  Getter of Style::fillOpacity.
   --
   --  a real number (>=0 and <=1) representing the opacity of the fill or 
   --  fillColor used to paint a graphical element. A value of 0 means totally 
   --  transparent, while a value of 1 means totally opaque. The default is 1.

   not overriding procedure Set_Fill_Opacity
    (Self : not null access DG_Style;
     To   : AMF.Optional_Real) is abstract;
   --  Setter of Style::fillOpacity.
   --
   --  a real number (>=0 and <=1) representing the opacity of the fill or 
   --  fillColor used to paint a graphical element. A value of 0 means totally 
   --  transparent, while a value of 1 means totally opaque. The default is 1.

   not overriding function Get_Stroke_Width
    (Self : not null access constant DG_Style)
       return AMF.Optional_Real is abstract;
   --  Getter of Style::strokeWidth.
   --
   --  a real number (>=0) representing the width of the stroke used to paint 
   --  the outline of a graphical element. A value of 0 specifies no stroke is 
   --  painted. The default is 1.

   not overriding procedure Set_Stroke_Width
    (Self : not null access DG_Style;
     To   : AMF.Optional_Real) is abstract;
   --  Setter of Style::strokeWidth.
   --
   --  a real number (>=0) representing the width of the stroke used to paint 
   --  the outline of a graphical element. A value of 0 specifies no stroke is 
   --  painted. The default is 1.

   not overriding function Get_Stroke_Opacity
    (Self : not null access constant DG_Style)
       return AMF.Optional_Real is abstract;
   --  Getter of Style::strokeOpacity.
   --
   --  a real number (>=0 and <=1) representing the opacity of the stroke used 
   --  for a graphical element. A value of 0 means totally transparent, while 
   --  a value of 1 means totally opaque. The default is 1.

   not overriding procedure Set_Stroke_Opacity
    (Self : not null access DG_Style;
     To   : AMF.Optional_Real) is abstract;
   --  Setter of Style::strokeOpacity.
   --
   --  a real number (>=0 and <=1) representing the opacity of the stroke used 
   --  for a graphical element. A value of 0 means totally transparent, while 
   --  a value of 1 means totally opaque. The default is 1.

   not overriding function Get_Stroke_Color
    (Self : not null access constant DG_Style)
       return AMF.DC.Optional_DC_Color is abstract;
   --  Getter of Style::strokeColor.
   --
   --  the color of the stroke used to paint the outline of a graphical 
   --  element. The default is black (red=0, green=0, blue=0).

   not overriding procedure Set_Stroke_Color
    (Self : not null access DG_Style;
     To   : AMF.DC.Optional_DC_Color) is abstract;
   --  Setter of Style::strokeColor.
   --
   --  the color of the stroke used to paint the outline of a graphical 
   --  element. The default is black (red=0, green=0, blue=0).

   not overriding function Get_Stroke_Dash_Length
    (Self : not null access constant DG_Style)
       return AMF.Real_Collections.Sequence_Of_Real is abstract;
   --  Getter of Style::strokeDashLength.
   --
   --  a list of real numbers specifying a pattern of alternating dash and gap 
   --  lengths used in stroking the outline of a graphical element with the 
   --  first one specifying a dash length. The size of the list is expected to 
   --  be even. If the list is empty, the stroke is drawn solid. The default 
   --  is empty list.

   not overriding function Get_Font_Size
    (Self : not null access constant DG_Style)
       return AMF.Optional_Real is abstract;
   --  Getter of Style::fontSize.
   --
   --  a real number (>=0) representing the size (in unit of length) of the 
   --  font used to render a text element. The default is 10.

   not overriding procedure Set_Font_Size
    (Self : not null access DG_Style;
     To   : AMF.Optional_Real) is abstract;
   --  Setter of Style::fontSize.
   --
   --  a real number (>=0) representing the size (in unit of length) of the 
   --  font used to render a text element. The default is 10.

   not overriding function Get_Font_Name
    (Self : not null access constant DG_Style)
       return AMF.Optional_String is abstract;
   --  Getter of Style::fontName.
   --
   --  the name of the font used to render a text element (e.g. "Times New 
   --  Roman", "Arial" or "Helvetica"). The default is "Arial".

   not overriding procedure Set_Font_Name
    (Self : not null access DG_Style;
     To   : AMF.Optional_String) is abstract;
   --  Setter of Style::fontName.
   --
   --  the name of the font used to render a text element (e.g. "Times New 
   --  Roman", "Arial" or "Helvetica"). The default is "Arial".

   not overriding function Get_Font_Color
    (Self : not null access constant DG_Style)
       return AMF.DC.Optional_DC_Color is abstract;
   --  Getter of Style::fontColor.
   --
   --  the color of the font used to render a text element. The default is 
   --  black (red=0, green=0, blue=0).

   not overriding procedure Set_Font_Color
    (Self : not null access DG_Style;
     To   : AMF.DC.Optional_DC_Color) is abstract;
   --  Setter of Style::fontColor.
   --
   --  the color of the font used to render a text element. The default is 
   --  black (red=0, green=0, blue=0).

   not overriding function Get_Font_Italic
    (Self : not null access constant DG_Style)
       return AMF.Optional_Boolean is abstract;
   --  Getter of Style::fontItalic.
   --
   --  whether the font used to render a text element has an <i>italic</i> 
   --  style. The default is false.

   not overriding procedure Set_Font_Italic
    (Self : not null access DG_Style;
     To   : AMF.Optional_Boolean) is abstract;
   --  Setter of Style::fontItalic.
   --
   --  whether the font used to render a text element has an <i>italic</i> 
   --  style. The default is false.

   not overriding function Get_Font_Bold
    (Self : not null access constant DG_Style)
       return AMF.Optional_Boolean is abstract;
   --  Getter of Style::fontBold.
   --
   --  whether the font used to render a text element has a <b>bold</b> style. 
   --  The default is false.

   not overriding procedure Set_Font_Bold
    (Self : not null access DG_Style;
     To   : AMF.Optional_Boolean) is abstract;
   --  Setter of Style::fontBold.
   --
   --  whether the font used to render a text element has a <b>bold</b> style. 
   --  The default is false.

   not overriding function Get_Font_Underline
    (Self : not null access constant DG_Style)
       return AMF.Optional_Boolean is abstract;
   --  Getter of Style::fontUnderline.
   --
   --  whether the font used to render a text element has an <b>underline</b> 
   --  style. The default is false.

   not overriding procedure Set_Font_Underline
    (Self : not null access DG_Style;
     To   : AMF.Optional_Boolean) is abstract;
   --  Setter of Style::fontUnderline.
   --
   --  whether the font used to render a text element has an <b>underline</b> 
   --  style. The default is false.

   not overriding function Get_Font_Strike_Through
    (Self : not null access constant DG_Style)
       return AMF.Optional_Boolean is abstract;
   --  Getter of Style::fontStrikeThrough.
   --
   --  whether the font used to render a text element has a 
   --  <b>strike-through</b> style. The default is false.

   not overriding procedure Set_Font_Strike_Through
    (Self : not null access DG_Style;
     To   : AMF.Optional_Boolean) is abstract;
   --  Setter of Style::fontStrikeThrough.
   --
   --  whether the font used to render a text element has a 
   --  <b>strike-through</b> style. The default is false.

end AMF.DG.Styles;
