------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
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
with Qt4.Tree_Views.Constructors;

with Modeler.Containment_Tree_Models;

with Modeler.Containment_Tree_Docks.Moc;
pragma Unreferenced (Modeler.Containment_Tree_Docks.Moc);

package body Modeler.Containment_Tree_Docks is

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      procedure Initialize
       (Self   : not null access Containment_Tree_Dock'Class;
        Parent : access Qt4.Widgets.Q_Widget'Class);
      --  Initialize widget.

      ------------
      -- Create --
      ------------

      function Create
       (Parent : access Qt4.Widgets.Q_Widget'Class := null)
          return not null Containment_Tree_Dock_Access is
      begin
         return Self : constant not null Containment_Tree_Dock_Access
           := new Containment_Tree_Dock
         do
            Initialize (Self, Parent);
         end return;
      end Create;

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize
       (Self   : not null access Containment_Tree_Dock'Class;
        Parent : access Qt4.Widgets.Q_Widget'Class)
      is
         View  : Qt4.Tree_Views.Q_Tree_View_Access;
         Model : Modeler.Containment_Tree_Models.Containment_Tree_Model_Access;

      begin
         Qt4.Dock_Widgets.Directors.Constructors.Initialize
          (Self, +"Containment Tree", Parent);

         View := Qt4.Tree_Views.Constructors.Create (Self);
         Self.Set_Widget (View);

         Model := Modeler.Containment_Tree_Models.Constructors.Create (View);
         View.Set_Model (Model);
      end Initialize;

   end Constructors;

end Modeler.Containment_Tree_Docks;
