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
--  This package provides base tagged type to build server specific HTTP
--  response objects.
------------------------------------------------------------------------------
with Matreshka.Servlet_HTTP_Requests;
with Servlet.HTTP_Responses;

package Matreshka.Servlet_HTTP_Responses is

   pragma Preelaborate;

   type Abstract_HTTP_Servlet_Response is abstract
     limited new Servlet.HTTP_Responses.HTTP_Servlet_Response with private;

   type HTTP_Servlet_Response_Access is
     access all Abstract_HTTP_Servlet_Response'Class;

   procedure Initialize
    (Self    : in out Abstract_HTTP_Servlet_Response'Class;
     Request :
       not null Matreshka.Servlet_HTTP_Requests.HTTP_Servlet_Request_Access);

   procedure Set_Session_Cookie
    (Self : in out Abstract_HTTP_Servlet_Response'Class);
   --  Sets HTTP session cookie when necessary.

   overriding function Get_Status
    (Self : Abstract_HTTP_Servlet_Response)
       return Servlet.HTTP_Responses.Status_Code;
   --  Gets the current status code of this response.

   overriding procedure Set_Status
    (Self   : in out Abstract_HTTP_Servlet_Response;
     Status : Servlet.HTTP_Responses.Status_Code);
   --  Sets the status code for this response.

private

   type Abstract_HTTP_Servlet_Response is abstract
     limited new Servlet.HTTP_Responses.HTTP_Servlet_Response with record
      Status  : Servlet.HTTP_Responses.Status_Code
        := Servlet.HTTP_Responses.Internal_Server_Error;
      Request : Matreshka.Servlet_HTTP_Requests.HTTP_Servlet_Request_Access;
   end record;

end Matreshka.Servlet_HTTP_Responses;
