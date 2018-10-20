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
--  Provides a way to identify a user across more than one page request or
--  visit to a Web site and to store information about that user.
--
--  The servlet container uses this interface to create a session between an
--  HTTP client and an HTTP server. The session persists for a specified time
--  period, across more than one connection or page request from the user. A
--  session usually corresponds to one user, who may visit a site many times.
--  The server can maintain a session in many ways such as using cookies or
--  rewriting URLs.
--
--  This interface allows servlets to
--
--    1. View and manipulate information about a session, such as the session
--       identifier, creation time, and last accessed time
--    2. Bind objects to sessions, allowing user information to persist across
--       multiple user connections 
--
--  When an application stores an object in or removes an object from a
--  session, the session checks whether the object implements
--  HttpSessionBindingListener. If it does, the servlet notifies the object
--  that it has been bound to or unbound from the session. Notifications are
--  sent after the binding methods complete. For session that are invalidated
--  or expire, notifications are sent after the session has been invalidated or
--  expired.
--
--  When container migrates a session between VMs in a distributed container
--  setting, all session attributes implementing the
--  HttpSessionActivationListener interface are notified.
--
--  A servlet should be able to handle cases in which the client does not
--  choose to join a session, such as when cookies are intentionally turned
--  off. Until the client joins the session, isNew returns true. If the client
--  chooses not to join the session, getSession will return a different session
--  on each request, and isNew will always return true.
--
--  Session information is scoped only to the current web application
--  (ServletContext), so information stored in one context will not be directly
--  visible in another.
------------------------------------------------------------------------------
with League.Calendars;
with League.Strings;

package Servlet.HTTP_Sessions is

   pragma Preelaborate;

   type HTTP_Session is limited interface;

   not overriding function Get_Creation_Time
    (Self : HTTP_Session) return League.Calendars.Date_Time is abstract;
   --  Returns the time when this session was created.
   --
   --  Raises Program_Error if this method is called on an invalidated session.

   not overriding function Get_Id
    (Self : HTTP_Session) return League.Strings.Universal_String is abstract;
   --  Returns a string containing the unique identifier assigned to this
   --  session. The identifier is assigned by the servlet container and is
   --  implementation dependent.

   not overriding function Get_Last_Accessed_Time
    (Self : HTTP_Session) return League.Calendars.Date_Time is abstract;
   --  Returns the last time the client sent a request associated with this
   --  session, and marked by the time the container received the request.
   --
   --  Actions that your application takes, such as getting or setting a value
   --  associated with the session, do not affect the access time.
   --
   --  Raises Program_Error if this method is called on an invalidated session.

   not overriding function Is_New
    (Self : HTTP_Session) return Boolean is abstract;
   --  Returns True if the client does not yet know about the session or if the
   --  client chooses not to join the session. For example, if the server used
   --  only cookie-based sessions, and the client had disabled the use of
   --  cookies, then a session would be new on each request.
   --
   --  Returns True if the server has created a session, but the client has not
   --  yet joined.
   --
   --  Raises Program_Error if this method is called on an already invalidated
   --  session.

end Servlet.HTTP_Sessions;
