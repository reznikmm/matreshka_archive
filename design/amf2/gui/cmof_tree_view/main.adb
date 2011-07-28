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
with Qt_Ada.Application;
with Qt4.Core_Applications;
with Qt4.Strings;
with Qt4.Tree_Views.Constructors;

with AMF.Facility;
with AMF.URI_Stores;
with League.Application;
with XMI.Reader;

with CMOF_Tree_Models;
with Main_Windows;

procedure Main is
   function "+" (Item : String) return Qt4.Strings.Q_String
     renames Qt4.Strings.From_Utf_8;

   Window : Main_Windows.Main_Window_Access;
   Model  : CMOF_Tree_Models.CMOF_Tree_Model_Access;
   View   : Qt4.Tree_Views.Q_Tree_View_Access;
   Root   : AMF.URI_Stores.URI_Store_Access;

begin
   Qt_Ada.Application.Initialize;
   Qt4.Core_Applications.Set_Organization_Name (+"Vadim Godunko");
   Qt4.Core_Applications.Set_Organization_Domain (+"qtada.com");
   Qt4.Core_Applications.Set_Application_Name (+"Matreshka Model Viewer");
   Qt4.Core_Applications.Set_Application_Version (+"0.0.6");

   --  Initialize Facility

   AMF.Facility.Initialize;

   Root := XMI.Reader (League.Application.Arguments.Element (1));

   Model := CMOF_Tree_Models.Constructors.Create;
   Model.Set_Extent (Root);

   View := Qt4.Tree_Views.Constructors.Create;
   View.Set_Model (Model);

   Window := Main_Windows.Constructors.Create;
   Window.Set_Central_Widget (View);
   Window.Show;

   Qt_Ada.Application.Execute;
   Qt_Ada.Application.Finalize;
end Main;
