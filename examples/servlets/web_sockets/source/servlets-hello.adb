------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                            Examples Component                            --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2016-2020, Vadim Godunko <vgodunko@gmail.com>                --
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

with Ada.Wide_Wide_Text_IO;

with League.Stream_Element_Vectors;
with Web_Socket.Connections;

package body Servlets.Hello is

   function "+"
     (Text : Wide_Wide_String) return League.Strings.Universal_String
      renames League.Strings.To_Universal_String;

   Max_Count : constant := 5;

   type WS_Handler_Access is access all WS_Handler'Class;

   ------------
   -- Do_Get --
   ------------

   overriding procedure Do_Get
     (Self     : in out Hello_Servlet;
      Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
      Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class)
   is
      H : WS_Handler_Access := new WS_Handler;
   begin
      H.WS.Set_Web_Socket_Listener (H.all'Access);
      Request.Upgrade (H.WS'Access);
      Response.Set_Status (Servlet.HTTP_Responses.Switching_Protocols);
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
        "Hello servlet provides WebSocket upgrade responses";
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

   ---------------
   -- On_Binary --
   ---------------

   overriding procedure On_Binary
    (Self : in out WS_Handler;
     Data : Ada.Streams.Stream_Element_Array)
   is
      Vector : League.Stream_Element_Vectors.Stream_Element_Vector;
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
        ("On_Binary:" & Natural'Wide_Wide_Image (Data'Length));

      if Self.Count < Max_Count then
         Self.Count := Self.Count + 1;
         Vector.Append (Data);
         Web_Socket.Connections.Connection'Class (Self.WS).
           Send_Binary (Vector);
         --  Web_Socket.Handlers.AWS_Handlers.Send_Binary (Self.WS, Vector);
         --  Self.WS.Send_Binary (Vector);
      end if;
   end On_Binary;

   --------------
   -- On_Close --
   --------------

   overriding procedure On_Close
    (Self   : in out WS_Handler;
     Status : Web_Socket.Listeners.Status_Code;
     Reason : League.Strings.Universal_String) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
        ("On_Close: "
         & Web_Socket.Listeners.Status_Code'Wide_Wide_Image (Status)
         & Reason.To_Wide_Wide_String);
   end On_Close;

   ----------------
   -- On_Connect --
   ----------------

   overriding procedure On_Connect (Self : in out WS_Handler) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line ("On_Connect");
   end On_Connect;

   --------------
   -- On_Error --
   --------------

   overriding procedure On_Error (Self : in out WS_Handler) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line ("On_Error");
   end On_Error;

   -------------
   -- On_Text --
   -------------

   overriding procedure On_Text
    (Self : in out WS_Handler;
     Text : League.Strings.Universal_String) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line ("On_Text: " & Text.To_Wide_Wide_String);

      if Self.Count < Max_Count then
         Self.Count := Self.Count + 1;
         Web_Socket.Connections.Connection'Class (Self.WS).
           Send_Text (Text);
      end if;
   end On_Text;

end Servlets.Hello;
