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

with Sessions;

package body Servlets.Hello is

   function "+"
     (Text : Wide_Wide_String) return League.Strings.Universal_String
      renames League.Strings.To_Universal_String;

   ------------
   -- Do_Get --
   ------------

   overriding procedure Do_Get
     (Self     : in out Hello_Servlet;
      Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
      Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class)
   is
      pragma Unreferenced (Self);

      Counter   : Natural;

      Session   : constant not null Sessions.HTTP_Session_Access :=
        Sessions.HTTP_Session_Access (Request.Get_Session);

   begin
      Session.Count (Counter);

      Response.Set_Status (Servlet.HTTP_Responses.OK);
      Response.Set_Content_Type (+"text/html");
      Response.Set_Character_Encoding (+"utf-8");

      declare
         Text : constant Wide_Wide_String :=
           "Counter:" & Natural'Wide_Wide_Image (Counter);
      begin
         Response.Get_Output_Stream.Write (+Text);
      end;
   end Do_Get;

   ----------------------
   -- Get_Servlet_Info --
   ----------------------

   overriding function Get_Servlet_Info
     (Self : Hello_Servlet)
      return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);
      Text : constant Wide_Wide_String :=
        "Hello servlet renders Hello_World result";
   begin
      return +Text;
   end Get_Servlet_Info;

   -----------------
   -- Instantiate --
   -----------------

   overriding function Instantiate
     (Parameters : not null access
       Servlet.Generic_Servlets.Instantiation_Parameters'Class)
      return Hello_Servlet
   is
      pragma Unreferenced (Parameters);
   begin
      return (Servlet.HTTP_Servlets.HTTP_Servlet with null record);
   end Instantiate;

end Servlets.Hello;
