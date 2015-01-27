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
-- Copyright © 2014-2015, Vadim Godunko <vgodunko@gmail.com>                --
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

with Servlet.HTTP_Cookies;
with Servlet.HTTP_Sessions;

package body Matreshka.Servlet_HTTP_Responses is

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self    : in out Abstract_HTTP_Servlet_Response'Class;
     Request :
       not null Matreshka.Servlet_HTTP_Requests.HTTP_Servlet_Request_Access) is
   begin
      Self.Request := Request;
   end Initialize;

   ----------------
   -- Get_Status --
   ----------------

   overriding function Get_Status
    (Self : Abstract_HTTP_Servlet_Response)
       return Servlet.HTTP_Responses.Status_Code is
   begin
      return Self.Status;
   end Get_Status;

   ------------------------
   -- Set_Session_Cookie --
   ------------------------

   procedure Set_Session_Cookie
    (Self : in out Abstract_HTTP_Servlet_Response'Class)
   is
      Session : constant access Servlet.HTTP_Sessions.HTTP_Session'Class
        := Self.Request.Get_Session (False);
      Cookie  : Servlet.HTTP_Cookies.Cookie;

   begin
      if Session /= null
        and then not Self.Request.Is_Requested_Session_Id_Valid
      then
         --  Create cookie with session identifier and add it to response.

         Cookie.Initialize
          (League.Strings.To_Universal_String ("MSID"), Session.Get_Id);
         Cookie.Set_Http_Only (True);
         Cookie.Set_Path (Self.Request.Get_Context_Path);
         Self.Add_Cookie (Cookie);
      end if;
   end Set_Session_Cookie;

   ----------------
   -- Set_Status --
   ----------------

   overriding procedure Set_Status
    (Self   : in out Abstract_HTTP_Servlet_Response;
     Status : Servlet.HTTP_Responses.Status_Code) is
   begin
      Self.Status := Status;
   end Set_Status;

end Matreshka.Servlet_HTTP_Responses;
