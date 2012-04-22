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
with Qt4.Core_Applications;
with Qt4.Pixmaps;
with Qt4.Splash_Screens.Constructors;
with Qt4.Strings;
with Qt_Ada.Application;

with AMF.Facility;

with Modeler.Main_Windows;

procedure Modeler.Driver is

   use type Qt4.Alignment_Flag;

   function "+" (Item : Wide_Wide_String) return Qt4.Strings.Q_String
     renames Qt4.Strings.From_Ucs_4;

   Splash : Qt4.Splash_Screens.Q_Splash_Screen_Access;
   Main   : Modeler.Main_Windows.Main_Window_Access;

begin
   --  Initialize Qt toolkit.

   Qt_Ada.Application.Initialize;
   Qt4.Core_Applications.Set_Organization_Name (+"Vadim Godunko");
   Qt4.Core_Applications.Set_Organization_Domain (+"qtada.com");
   Qt4.Core_Applications.Set_Application_Name (+"Matreshka Modeler");
   Qt4.Core_Applications.Set_Application_Version (+"0.2.0");

   --  Create splash screen.

   Splash := Qt4.Splash_Screens.Constructors.Create;
   Splash.Set_Pixmap (Qt4.Pixmaps.Create (+"splash.png"));
   Splash.Resize (480, 270);
   Splash.Show;

   --  Initialize AMF

   Splash.Show_Message
    (+"Initialize AMF", Qt4.Align_H_Center + Qt4.Align_Bottom);

   AMF.Facility.Initialize;

   --  Initialize GUI

   Splash.Show_Message
    (+"Initialize GUI", Qt4.Align_H_Center + Qt4.Align_Bottom);

   Main := Modeler.Main_Windows.Constructors.Create;
   Main.Show;

   --  Hide splash screen and opens main window.

   Splash.Finish (Main);

   --  Run event handling loop.

   Qt_Ada.Application.Execute;

   --  Finalize Qt toolkit.

   Qt_Ada.Application.Finalize;
end Modeler.Driver;
