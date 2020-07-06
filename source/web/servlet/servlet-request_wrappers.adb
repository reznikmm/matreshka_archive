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
-- Copyright © 2014-2020, Vadim Godunko <vgodunko@gmail.com>                --
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

package body Servlet.Request_Wrappers is

   ----------------------
   -- Get_Content_Type --
   ----------------------

   overriding function Get_Content_Type
    (Self : Servlet_Request_Wrapper) return League.Strings.Universal_String is
   begin
      return Self.Request.Get_Content_Type;
   end Get_Content_Type;

   ----------------------
   -- Get_Input_Stream --
   ----------------------

   overriding function Get_Input_Stream
    (Self : Servlet_Request_Wrapper)
       return not null access Ada.Streams.Root_Stream_Type'Class is
   begin
      return Self.Request.Get_Input_Stream;
   end Get_Input_Stream;

   -------------------------
   -- Get_Parameter_Names --
   -------------------------

   overriding function Get_Parameter_Names
    (Self : Servlet_Request_Wrapper)
       return League.String_Vectors.Universal_String_Vector is
   begin
      return Self.Request.Get_Parameter_Names;
   end Get_Parameter_Names;

   --------------------------
   -- Get_Parameter_Values --
   --------------------------

   overriding function Get_Parameter_Values
    (Self : Servlet_Request_Wrapper;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector is
   begin
      return Self.Request.Get_Parameter_Values (Name);
   end Get_Parameter_Values;

   ----------------
   -- Get_Scheme --
   ----------------

   overriding function Get_Scheme
    (Self : Servlet_Request_Wrapper) return League.Strings.Universal_String is
   begin
      return Self.Request.Get_Scheme;
   end Get_Scheme;

   ---------------------
   -- Get_Server_Name --
   ---------------------

   overriding function Get_Server_Name
    (Self : Servlet_Request_Wrapper) return League.Strings.Universal_String is
   begin
      return Self.Request.Get_Server_Name;
   end Get_Server_Name;

   ---------------------
   -- Get_Server_Port --
   ---------------------

   overriding function Get_Server_Port
    (Self : Servlet_Request_Wrapper) return Positive is
   begin
      return Self.Request.Get_Server_Port;
   end Get_Server_Port;

   -------------------------
   -- Get_Servlet_Context --
   -------------------------

   overriding function Get_Servlet_Context
    (Self : Servlet_Request_Wrapper)
       return access Servlet.Contexts.Servlet_Context'Class is
   begin
      return Self.Request.Get_Servlet_Context;
   end Get_Servlet_Context;

   ------------------------
   -- Is_Async_Supported --
   ------------------------

   overriding function Is_Async_Supported
    (Self : not null access Servlet_Request_Wrapper) return Boolean is
   begin
      return Self.Request.Is_Async_Supported;
   end Is_Async_Supported;

end Servlet.Request_Wrappers;
