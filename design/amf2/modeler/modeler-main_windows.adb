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
with Qt4.Actions.Constructors;
with Qt4.File_Dialogs;
with Qt4.Mdi_Areas.Constructors;
with Qt4.Menu_Bars.Constructors;
--with Qt4.Status_Bars.Constructors;

with AMF.Facility;
with AMF.URI_Stores;
with XMI.Reader;

with Modeler.Containment_Tree_Docks;

with Modeler.Main_Windows.Moc;
pragma Unreferenced (Modeler.Main_Windows.Moc);

package body Modeler.Main_Windows is

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      procedure Initialize (Self : not null access Main_Window'Class);
      --  Initialize widget.

      ------------
      -- Create --
      ------------

      function Create return not null Main_Window_Access is
      begin
         return Self : constant not null Main_Window_Access
           := new Main_Window
         do
            Initialize (Self);
         end return;
      end Create;

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize (Self : not null access Main_Window'Class) is
         Mdi_Area         : Qt4.Mdi_Areas.Q_Mdi_Area_Access;
         Menu_Bar         : Qt4.Menu_Bars.Q_Menu_Bar_Access;
--         Status_Bar : Qt4.Status_Bars.Q_Status_Bar_Access;
         Containment_Dock :
           Modeler.Containment_Tree_Docks.Containment_Tree_Dock_Access;
         File_New_Action  : Qt4.Actions.Q_Action_Access;
         File_Open_Action : Qt4.Actions.Q_Action_Access;

      begin
         Qt4.Main_Windows.Directors.Constructors.Initialize (Self);

         --  Create actions.

         File_New_Action := Qt4.Actions.Constructors.Create (+"New", Self);
         File_New_Action.Connect
          (Qt4.Signal ("triggered()"), Self, Qt4.Slot ("fileNew()"));

         File_Open_Action := Qt4.Actions.Constructors.Create (+"Open", Self);
         File_Open_Action.Connect
          (Qt4.Signal ("triggered()"), Self, Qt4.Slot ("fileOpen()"));

         --  Create menu bar.

         Menu_Bar := Qt4.Menu_Bars.Constructors.Create (Self);
         Self.Set_Menu_Bar (Menu_Bar);

         Menu_Bar.Add_Action (File_New_Action);
         Menu_Bar.Add_Action (File_Open_Action);

         --  Create MDI area.

         Mdi_Area := Qt4.Mdi_Areas.Constructors.Create (Self);
         Self.Set_Central_Widget (Mdi_Area);

         --  Create docks.

         Containment_Dock :=
           Modeler.Containment_Tree_Docks.Constructors.Create (Self);
         Self.Add_Dock_Widget (Qt4.Left_Dock_Widget_Area, Containment_Dock);

         --  Create status bar.

--  XXX Qt4.Status_Bars.Constructors is not implemented.
--         Status_Bar := Qt4.Status_Bars.Constructors.Create (Self);
--         Self.Set_Status_Bar (Status_Bar);
      end Initialize;

   end Constructors;

   --------------
   -- File_New --
   --------------

   procedure File_New (Self : not null access Main_Window'Class) is
      Store : AMF.URI_Stores.URI_Store_Access;

   begin
      Store := AMF.Facility.Create_URI_Store (+"file:///untitled.xmi");
   end File_New;

   ---------------
   -- File_Open --
   ---------------

   procedure File_Open (Self : not null access Main_Window'Class) is
      Name  : constant Qt4.Strings.Q_String
        := Qt4.File_Dialogs.Get_Open_File_Name (Self);
      Store : AMF.URI_Stores.URI_Store_Access;

   begin
      if not Name.Is_Null then
         Store := XMI.Reader.Read_URI (+Name.To_UCS_4);
      end if;
   end File_Open;

end Modeler.Main_Windows;
