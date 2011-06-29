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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Qt4.Font_Metrics;
with Qt4.Point_Fs;
with Qt4.Fonts;
with Qt4.Strings;

package body Modeler.Package_Items is

   function To_Q_String
    (Item : AMF.Optional_String) return Qt4.Strings.Q_String;

   -------------------
   -- Bounding_Rect --
   -------------------

   overriding function Bounding_Rect
    (Self : not null access constant Package_Item)
       return Qt4.Rect_Fs.Q_Rect_F is
   begin
      return Qt4.Rect_Fs.Create (0.0, 0.0, 150.0, 100.0);
   end Bounding_Rect;

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      ------------
      -- Create --
      ------------

      function Create
       (Element : not null AMF.CMOF.Packages.CMOF_Package_Access;
        Parent  : access Qt4.Graphics_Items.Q_Graphics_Item'Class := null)
          return not null Package_Item_Access is
      begin
         return Self : constant not null Package_Item_Access
           := new Package_Item
         do
            Qt4.Graphics_Items.Directors.Constructors.Initialize
             (Self, Parent);
            Self.Element := Element;
         end return;
      end Create;

   end Constructors;

   -----------
   -- Paint --
   -----------

   overriding procedure Paint
    (Self    : not null access Package_Item;
     Painter : in out Qt4.Painters.Q_Painter'Class;
     Option  :
       Qt4.Style_Option_Graphics_Items.Q_Style_Option_Graphics_Item'Class;
     Widget  : access Qt4.Widgets.Q_Widget'Class := null)
   is
      use type Qt4.Q_Real;

   begin
      Painter.Draw_Rect (Qt4.Rect_Fs.Create (0.0, 0.0, 120.0, 20.0));
      Painter.Draw_Rect (Qt4.Rect_Fs.Create (0.0, 20.0, 150.0, 80.0));
      Painter.Draw_Text
       (Qt4.Point_Fs.Create (1.0, 17.0),
        To_Q_String (Self.Element.Get_Name));
   end Paint;

   -----------------
   -- To_Q_String --
   -----------------

   function To_Q_String
    (Item : AMF.Optional_String) return Qt4.Strings.Q_String is
   begin
      if Item.Is_Empty then
         return Qt4.Strings.Create;

      else
         return Qt4.Strings.From_Ucs_4 (Item.Value.To_Wide_Wide_String);
      end if;
   end To_Q_String;

end Modeler.Package_Items;
