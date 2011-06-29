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
private with Qt4.Graphics_Scene_Drag_Drop_Events;
with Qt4.Graphics_Scenes;
private with Qt4.Graphics_Scenes.Directors;
with Qt4.Objects;

package Modeler.Diagram_Scenes is

   type Diagram_Scene is
     limited new Qt4.Graphics_Scenes.Q_Graphics_Scene with private;

   type Diagram_Scene_Access is access all Diagram_Scene'Class;

   package Constructors is

      function Create
       (Parent : access Qt4.Objects.Q_Object'Class := null)
          return not null Diagram_Scene_Access;

   end Constructors;

private

   package QGSDDE renames Qt4.Graphics_Scene_Drag_Drop_Events;

   type Diagram_Scene is
     limited new Qt4.Graphics_Scenes.Directors.Q_Graphics_Scene_Director
       with record
      Accept_Drop : Boolean := False;
      --  When True scene handle drop event byself, otherwise default handler
      --  is used.
   end record;

   overriding procedure Drag_Move_Event
    (Self  : not null access Diagram_Scene;
     Event : not null access QGSDDE.Q_Graphics_Scene_Drag_Drop_Event'Class);

   overriding procedure Drop_Event
    (Self  : not null access Diagram_Scene;
     Event : not null access QGSDDE.Q_Graphics_Scene_Drag_Drop_Event'Class);

end Modeler.Diagram_Scenes;
