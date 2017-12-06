------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2017, Vadim Godunko <vgodunko@gmail.com>                     --
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

with Services;
with League.Strings;
with League.String_Vectors;

with Matreshka.Servlet_Servers.AWS_Servers;
with Matreshka.Servlet_Containers;

package Spikedog.Service is

   type Service is new Services.Service with private;
--  Windows Service to run Spikedog server

private

   protected type Semaphore is
      entry Acquire;
      entry Release;
   private
      Busy : Boolean := True;
   end Semaphore;

   type Service is new Services.Service with record
      AWS_Server : aliased Matreshka.Servlet_Servers.AWS_Servers.AWS_Server;
      Container  : Matreshka.Servlet_Containers.Servlet_Container_Access :=
        new Matreshka.Servlet_Containers.Servlet_Container;
      Stop_Flag  : Semaphore;
      Application_Name : League.Strings.Universal_String :=
        League.Strings.To_Universal_String ("Spikedog Application Server");
   end record;

   overriding function Name (Self : Service)
     return League.Strings.Universal_String;

   overriding procedure Run
     (Self   : in out Service;
      Args   : League.String_Vectors.Universal_String_Vector;
      Status : Services.Status_Listener_Access);

   overriding procedure Control
     (Self    : in out Service;
      Control : Services.Control_Kind;
      Status  : Services.Status_Listener_Access);

end Spikedog.Service;
