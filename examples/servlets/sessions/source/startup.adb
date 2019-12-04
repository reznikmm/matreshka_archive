------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                            Examples Component                            --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2016-2019, Vadim Godunko <vgodunko@gmail.com>                --
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

with Ada.Text_IO;

with League.Holders;
with League.Settings;
with League.Strings;

with Spikedog.HTTP_Session_Managers;
with Spikedog.Servlet_Contexts;

with Sessions.Managers;

--  List of used servlets:
with Servlets.Hello;
pragma Unreferenced (Servlets.Hello);

package body Startup is

   ----------------
   -- On_Startup --
   ----------------

   overriding procedure On_Startup
     (Self    : in out Servlet_Container_Initializer;
      Context : in out Servlet.Contexts.Servlet_Context'Class)
   is
      pragma Unreferenced (Self);

      Manager  : constant Sessions.Managers.HTTP_Session_Manager_Access :=
        new Sessions.Managers.HTTP_Session_Manager;
   begin
      Ada.Text_IO.Put_Line ("Open: http://localhost:8080/count");

      Spikedog.Servlet_Contexts.Spikedog_Servlet_Context'Class
        (Context).Set_Session_Manager
          (Spikedog.HTTP_Session_Managers.HTTP_Session_Manager_Access
             (Manager));
   end On_Startup;

end Startup;
