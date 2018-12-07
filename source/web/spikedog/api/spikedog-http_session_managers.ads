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
-- Copyright © 2015-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Strings;

with Servlet.HTTP_Sessions;

package Spikedog.HTTP_Session_Managers is

   pragma Preelaborate;

   type HTTP_Session_Manager is limited interface;

   type HTTP_Session_Manager_Access is access all HTTP_Session_Manager'Class;

   not overriding function Is_Session_Identifier_Valid
    (Self       : HTTP_Session_Manager;
     Identifier : League.Strings.Universal_String) return Boolean is abstract;
   --  Returns True when given session identifier is valid (it can be processed
   --  by session manager, but not necessary points to any active session).

   not overriding function Get_Session
    (Self       : in out HTTP_Session_Manager;
     Identifier : League.Strings.Universal_String)
       return access Servlet.HTTP_Sessions.HTTP_Session'Class is abstract;
   --  Returns session this specified identifier, or null when session with
   --  given identifier is not known. When session is found its last access
   --  time attribute is updated to current time.

   not overriding function New_Session
    (Self : in out HTTP_Session_Manager)
       return access Servlet.HTTP_Sessions.HTTP_Session'Class is abstract;

   not overriding procedure Change_Session_Id
    (Self    : in out HTTP_Session_Manager;
     Session : not null access Servlet.HTTP_Sessions.HTTP_Session'Class)
       is abstract;
   --  Changes session identifier for given session.

end Spikedog.HTTP_Session_Managers;
