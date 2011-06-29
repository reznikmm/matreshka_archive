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
with Qt4.Graphics_Items;
private with Qt4.Graphics_Items.Directors;
private with Qt4.Painters;
private with Qt4.Rect_Fs;
private with Qt4.Style_Option_Graphics_Items;
private with Qt4.Widgets;

with AMF.CMOF.Packages;

package Modeler.Package_Items is

   type Package_Item is
     limited new Qt4.Graphics_Items.Q_Graphics_Item with private;

   type Package_Item_Access is access all Package_Item'Class;

   package Constructors is

      function Create
       (Element : not null AMF.CMOF.Packages.CMOF_Package_Access;
        Parent  : access Qt4.Graphics_Items.Q_Graphics_Item'Class := null)
          return not null Package_Item_Access;

   end Constructors;

private

   type Package_Item is
     limited new Qt4.Graphics_Items.Directors.Q_Graphics_Item_Director with
   record
      Element : AMF.CMOF.Packages.CMOF_Package_Access;
   end record;

   --------------------------------
   -- QGraphicsItem's operations --
   --------------------------------

   overriding function Bounding_Rect
    (Self : not null access constant Package_Item) return Qt4.Rect_Fs.Q_Rect_F;

   overriding procedure Paint
    (Self    : not null access Package_Item;
     Painter : in out Qt4.Painters.Q_Painter'Class;
     Option  :
       Qt4.Style_Option_Graphics_Items.Q_Style_Option_Graphics_Item'Class;
     Widget  : access Qt4.Widgets.Q_Widget'Class := null);

end Modeler.Package_Items;
