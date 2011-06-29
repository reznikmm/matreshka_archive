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
with Qt4.Graphics_Rect_Items;
with Qt4.Rect_Fs;

with AMF.CMOF.Elements;

with Modeler.Mime_Datas;

with Modeler.Diagram_Scenes.MOC;
pragma Unreferenced (Modeler.Diagram_Scenes.MOC);

package body Modeler.Diagram_Scenes is

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      ------------
      -- Create --
      ------------

      function Create
       (Parent : access Qt4.Objects.Q_Object'Class := null)
          return not null Diagram_Scene_Access is
      begin
         return Self : constant not null Diagram_Scene_Access
           := new Diagram_Scene
         do
            Qt4.Graphics_Scenes.Directors.Constructors.Initialize
             (Self, Parent);
         end return;
      end Create;

   end Constructors;

   ---------------------
   -- Drag_Move_Event --
   ---------------------

   overriding procedure Drag_Move_Event
    (Self  : not null access Diagram_Scene;
     Event : not null access QGSDDE.Q_Graphics_Scene_Drag_Drop_Event'Class) is
   begin
      --  Call default handler, it deliver event to the item under cursor.

      Qt4.Graphics_Scenes.Directors.Q_Graphics_Scene_Director
       (Self.all).Drag_Move_Event (Event);

      --  When event is not delivered to the item under cursor scene handle it
      --  byself.

      if not Event.Is_Accepted
        and then Event.Mime_Data.all
                   in Modeler.Mime_Datas.Modeler_Mime_Data'Class
      then
         Self.Accept_Drop := True;

         --  Accept event to allow to drop at the free space of the scene.

         Event.Accept_Event;

      else
         Self.Accept_Drop := False;
      end if;
   end Drag_Move_Event;

   ----------------
   -- Drop_Event --
   ----------------

   overriding procedure Drop_Event
    (Self  : not null access Diagram_Scene;
     Event : not null access QGSDDE.Q_Graphics_Scene_Drag_Drop_Event'Class) is
   begin
      --  Call default handler, it deliver event to the item under cursor.

      Qt4.Graphics_Scenes.Directors.Q_Graphics_Scene_Director
       (Self.all).Drop_Event (Event);

      --  Handle drop event when it is not handled by the item under cursor.

      if Self.Accept_Drop
        and then Event.Mime_Data.all
                   in Modeler.Mime_Datas.Modeler_Mime_Data'Class
      then
         Event.Accept_Event;
         --  XXX Accept_Proposed_Action should be called instead.

         declare
            E : AMF.CMOF.Elements.CMOF_Element_Access
              := Modeler.Mime_Datas.Modeler_Mime_Data'Class
                  (Event.Mime_Data.all).Element;
            R : Qt4.Graphics_Rect_Items.Q_Graphics_Rect_Item_Access
              := Qt4.Graphics_Rect_Items.Q_Graphics_Rect_Item_Access
                  (Self.Add_Rect
                    (Qt4.Rect_Fs.Create
                      (Event.Scene_Pos.X, Event.Scene_Pos.Y, 50.0, 50.0)));

         begin
            null;
         end;
      end if;
   end Drop_Event;

end Modeler.Diagram_Scenes;
