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
with AMF.DC;
with AMF.DG.Fills;
with AMF.DG.Styles;
with AMF.Internals.DG_Elements;
with AMF.Real_Collections;
with AMF.Visitors;

package AMF.Internals.DG_Styles is

   type DG_Style_Proxy is
     limited new AMF.Internals.DG_Elements.DG_Element_Proxy
       and AMF.DG.Styles.DG_Style with null record;

   overriding function Get_Fill
    (Self : not null access constant DG_Style_Proxy)
       return AMF.DG.Fills.DG_Fill_Access;
   --  Getter of Style::fill.
   --
   --  a reference to a fill that is used to paint the enclosed regions of a 
   --  graphical element. A fill value is exclusive with a fillColor value. If 
   --  both are specified, the fill value is used. If none is specified, no 
   --  fill is applied (i.e. the element becomes see-through).

   overriding procedure Set_Fill
    (Self : not null access DG_Style_Proxy;
     To   : AMF.DG.Fills.DG_Fill_Access);
   --  Setter of Style::fill.
   --
   --  a reference to a fill that is used to paint the enclosed regions of a 
   --  graphical element. A fill value is exclusive with a fillColor value. If 
   --  both are specified, the fill value is used. If none is specified, no 
   --  fill is applied (i.e. the element becomes see-through).

   overriding function Get_Fill_Color
    (Self : not null access constant DG_Style_Proxy)
       return AMF.DC.Optional_DC_Color;
   --  Getter of Style::fillColor.
   --
   --  a color that is used to paint the enclosed regions of graphical 
   --  element. A fillColor value is exclusive with a fill value. If both are 
   --  specified, the fill value is used. If none is specified, no fill is 
   --  applied (i.e. the element becomes see-through).

   overriding procedure Set_Fill_Color
    (Self : not null access DG_Style_Proxy;
     To   : AMF.DC.Optional_DC_Color);
   --  Setter of Style::fillColor.
   --
   --  a color that is used to paint the enclosed regions of graphical 
   --  element. A fillColor value is exclusive with a fill value. If both are 
   --  specified, the fill value is used. If none is specified, no fill is 
   --  applied (i.e. the element becomes see-through).

   overriding function Get_Fill_Opacity
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Real;
   --  Getter of Style::fillOpacity.
   --
   --  a real number (>=0 and <=1) representing the opacity of the fill or 
   --  fillColor used to paint a graphical element. A value of 0 means totally 
   --  transparent, while a value of 1 means totally opaque. The default is 1.

   overriding procedure Set_Fill_Opacity
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Real);
   --  Setter of Style::fillOpacity.
   --
   --  a real number (>=0 and <=1) representing the opacity of the fill or 
   --  fillColor used to paint a graphical element. A value of 0 means totally 
   --  transparent, while a value of 1 means totally opaque. The default is 1.

   overriding function Get_Stroke_Width
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Real;
   --  Getter of Style::strokeWidth.
   --
   --  a real number (>=0) representing the width of the stroke used to paint 
   --  the outline of a graphical element. A value of 0 specifies no stroke is 
   --  painted. The default is 1.

   overriding procedure Set_Stroke_Width
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Real);
   --  Setter of Style::strokeWidth.
   --
   --  a real number (>=0) representing the width of the stroke used to paint 
   --  the outline of a graphical element. A value of 0 specifies no stroke is 
   --  painted. The default is 1.

   overriding function Get_Stroke_Opacity
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Real;
   --  Getter of Style::strokeOpacity.
   --
   --  a real number (>=0 and <=1) representing the opacity of the stroke used 
   --  for a graphical element. A value of 0 means totally transparent, while 
   --  a value of 1 means totally opaque. The default is 1.

   overriding procedure Set_Stroke_Opacity
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Real);
   --  Setter of Style::strokeOpacity.
   --
   --  a real number (>=0 and <=1) representing the opacity of the stroke used 
   --  for a graphical element. A value of 0 means totally transparent, while 
   --  a value of 1 means totally opaque. The default is 1.

   overriding function Get_Stroke_Color
    (Self : not null access constant DG_Style_Proxy)
       return AMF.DC.Optional_DC_Color;
   --  Getter of Style::strokeColor.
   --
   --  the color of the stroke used to paint the outline of a graphical 
   --  element. The default is black (red=0, green=0, blue=0).

   overriding procedure Set_Stroke_Color
    (Self : not null access DG_Style_Proxy;
     To   : AMF.DC.Optional_DC_Color);
   --  Setter of Style::strokeColor.
   --
   --  the color of the stroke used to paint the outline of a graphical 
   --  element. The default is black (red=0, green=0, blue=0).

   overriding function Get_Stroke_Dash_Length
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Real_Collections.Sequence_Of_Real;
   --  Getter of Style::strokeDashLength.
   --
   --  a list of real numbers specifying a pattern of alternating dash and gap 
   --  lengths used in stroking the outline of a graphical element with the 
   --  first one specifying a dash length. The size of the list is expected to 
   --  be even. If the list is empty, the stroke is drawn solid. The default 
   --  is empty list.

   overriding function Get_Font_Size
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Real;
   --  Getter of Style::fontSize.
   --
   --  a real number (>=0) representing the size (in unit of length) of the 
   --  font used to render a text element. The default is 10.

   overriding procedure Set_Font_Size
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Real);
   --  Setter of Style::fontSize.
   --
   --  a real number (>=0) representing the size (in unit of length) of the 
   --  font used to render a text element. The default is 10.

   overriding function Get_Font_Name
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_String;
   --  Getter of Style::fontName.
   --
   --  the name of the font used to render a text element (e.g. "Times New 
   --  Roman", "Arial" or "Helvetica"). The default is "Arial".

   overriding procedure Set_Font_Name
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_String);
   --  Setter of Style::fontName.
   --
   --  the name of the font used to render a text element (e.g. "Times New 
   --  Roman", "Arial" or "Helvetica"). The default is "Arial".

   overriding function Get_Font_Color
    (Self : not null access constant DG_Style_Proxy)
       return AMF.DC.Optional_DC_Color;
   --  Getter of Style::fontColor.
   --
   --  the color of the font used to render a text element. The default is 
   --  black (red=0, green=0, blue=0).

   overriding procedure Set_Font_Color
    (Self : not null access DG_Style_Proxy;
     To   : AMF.DC.Optional_DC_Color);
   --  Setter of Style::fontColor.
   --
   --  the color of the font used to render a text element. The default is 
   --  black (red=0, green=0, blue=0).

   overriding function Get_Font_Italic
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Boolean;
   --  Getter of Style::fontItalic.
   --
   --  whether the font used to render a text element has an <i>italic</i> 
   --  style. The default is false.

   overriding procedure Set_Font_Italic
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Boolean);
   --  Setter of Style::fontItalic.
   --
   --  whether the font used to render a text element has an <i>italic</i> 
   --  style. The default is false.

   overriding function Get_Font_Bold
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Boolean;
   --  Getter of Style::fontBold.
   --
   --  whether the font used to render a text element has a <b>bold</b> style. 
   --  The default is false.

   overriding procedure Set_Font_Bold
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Boolean);
   --  Setter of Style::fontBold.
   --
   --  whether the font used to render a text element has a <b>bold</b> style. 
   --  The default is false.

   overriding function Get_Font_Underline
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Boolean;
   --  Getter of Style::fontUnderline.
   --
   --  whether the font used to render a text element has an <b>underline</b> 
   --  style. The default is false.

   overriding procedure Set_Font_Underline
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Boolean);
   --  Setter of Style::fontUnderline.
   --
   --  whether the font used to render a text element has an <b>underline</b> 
   --  style. The default is false.

   overriding function Get_Font_Strike_Through
    (Self : not null access constant DG_Style_Proxy)
       return AMF.Optional_Boolean;
   --  Getter of Style::fontStrikeThrough.
   --
   --  whether the font used to render a text element has a 
   --  <b>strike-through</b> style. The default is false.

   overriding procedure Set_Font_Strike_Through
    (Self : not null access DG_Style_Proxy;
     To   : AMF.Optional_Boolean);
   --  Setter of Style::fontStrikeThrough.
   --
   --  whether the font used to render a text element has a 
   --  <b>strike-through</b> style. The default is false.

   overriding procedure Enter_Element
    (Self    : not null access constant DG_Style_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Element
    (Self    : not null access constant DG_Style_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Visit_Element
    (Self     : not null access constant DG_Style_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);

end AMF.Internals.DG_Styles;
