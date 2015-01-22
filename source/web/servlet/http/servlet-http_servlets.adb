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
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Servlet.HTTP_Servlets is

   ---------------
   -- Do_Delete --
   ---------------

   not overriding procedure Do_Delete
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class) is
   begin
      Response.Set_Status (Servlet.HTTP_Responses.Not_Implemented);
   end Do_Delete;

   ------------
   -- Do_Get --
   ------------

   not overriding procedure Do_Get
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class) is
   begin
      Response.Set_Status (Servlet.HTTP_Responses.Not_Implemented);
   end Do_Get;

   -------------
   -- Do_Head --
   -------------

   not overriding procedure Do_Head
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class) is
   begin
      HTTP_Servlet'Class (Self).Do_Get (Request, Response);
   end Do_Head;

   ----------------
   -- Do_Options --
   ----------------

   not overriding procedure Do_Options
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class) is
   begin
      Response.Set_Status (Servlet.HTTP_Responses.OK);
   end Do_Options;

   -------------
   -- Do_Post --
   -------------

   not overriding procedure Do_Post
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class) is
   begin
      Response.Set_Status (Servlet.HTTP_Responses.Not_Implemented);
   end Do_Post;

   ------------
   -- Do_Put --
   ------------

   not overriding procedure Do_Put
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class) is
   begin
      Response.Set_Status (Servlet.HTTP_Responses.Not_Implemented);
   end Do_Put;

   --------------
   -- Do_Trace --
   --------------

   not overriding procedure Do_Trace
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class) is
   begin
      --  XXX It should be implemented according to RFC 2616.

      Response.Set_Status (Servlet.HTTP_Responses.Not_Implemented);
   end Do_Trace;

   -------------
   -- Service --
   -------------

   overriding procedure Service
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.Requests.Servlet_Request'Class;
     Response : in out Servlet.Responses.Servlet_Response'Class)
   is
      HTTP_Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class
        renames Servlet.HTTP_Requests.HTTP_Servlet_Request'Class (Request);
      HTTP_Response : Servlet.HTTP_Responses.HTTP_Servlet_Response'Class
        renames Servlet.HTTP_Responses.HTTP_Servlet_Response'Class (Response);

   begin
      case HTTP_Request.Get_Method is
         when Servlet.HTTP_Requests.Options =>
            HTTP_Servlet'Class (Self).Do_Options (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Get =>
            HTTP_Servlet'Class (Self).Do_Get (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Head =>
            HTTP_Servlet'Class (Self).Do_Head (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Post =>
            HTTP_Servlet'Class (Self).Do_Post (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Put =>
            HTTP_Servlet'Class (Self).Do_Put (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Delete =>
            HTTP_Servlet'Class (Self).Do_Delete (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Trace =>
            HTTP_Servlet'Class (Self).Do_Trace (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Connect =>
            raise Program_Error;
      end case;
   end Service;

end Servlet.HTTP_Servlets;
