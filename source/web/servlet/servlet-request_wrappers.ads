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
--  Provides a convenient implementation of the ServletRequest interface that
--  can be subclassed by developers wishing to adapt the request to a Servlet.
--  This class implements the Wrapper or Decorator pattern. Methods default to
--  calling through to the wrapped request object.
------------------------------------------------------------------------------
with Ada.Streams;

with League.String_Vectors;
with League.Strings;

with Servlet.Contexts;
with Servlet.Requests;

package Servlet.Request_Wrappers is

   pragma Preelaborate;

   type Servlet_Request_Wrapper
    (Request : not null access Servlet.Requests.Servlet_Request'Class) is
       limited new Servlet.Requests.Servlet_Request with null record;

   overriding function Get_Content_Type
    (Self : Servlet_Request_Wrapper) return League.Strings.Universal_String;

   overriding function Get_Input_Stream
    (Self : Servlet_Request_Wrapper)
       return not null access Ada.Streams.Root_Stream_Type'Class;

   overriding function Get_Parameter_Names
    (Self : Servlet_Request_Wrapper)
       return League.String_Vectors.Universal_String_Vector;

   overriding function Get_Parameter_Values
    (Self : Servlet_Request_Wrapper;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector;

   overriding function Get_Scheme
    (Self : Servlet_Request_Wrapper) return League.Strings.Universal_String;

   overriding function Get_Server_Name
    (Self : Servlet_Request_Wrapper) return League.Strings.Universal_String;

   overriding function Get_Server_Port
    (Self : Servlet_Request_Wrapper) return Positive;

   overriding function Get_Servlet_Context
    (Self : Servlet_Request_Wrapper)
       return access Servlet.Contexts.Servlet_Context'Class;

   overriding function Is_Async_Supported
    (Self : not null access Servlet_Request_Wrapper) return Boolean;

end Servlet.Request_Wrappers;
