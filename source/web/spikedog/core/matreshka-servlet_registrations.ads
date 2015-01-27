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
with League.String_Vectors;
with League.Strings;

limited with Matreshka.Servlet_Containers;
with Servlet.Configs;
with Servlet.Servlet_Registrations;
with Servlet.Servlets;

package Matreshka.Servlet_Registrations is

   type Servlet_Access is access all Servlet.Servlets.Servlet'Class;

   type Servlet_Registration
    (Context :
       not null access Matreshka.Servlet_Containers.Servlet_Container'Class) is
     limited new Servlet.Servlet_Registrations.Servlet_Registration
       and Servlet.Configs.Servlet_Config with
   record
      Name    : League.Strings.Universal_String;
      Servlet : Servlet_Access;
   end record;

   type Servlet_Registration_Access is access all Servlet_Registration'Class;

   overriding function Add_Mapping
    (Self         : not null access Servlet_Registration;
     URL_Patterns : League.String_Vectors.Universal_String_Vector)
       return League.String_Vectors.Universal_String_Vector;

   overriding function Get_Servlet_Name
    (Self : Servlet_Registration) return League.Strings.Universal_String;
   --  Returns the name of this servlet instance. The name may be provided via
   --  server administration, assigned in the web application deployment
   --  descriptor, or for an unregistered (and thus unnamed) servlet instance
   --  it will be the servlet's class name.

end Matreshka.Servlet_Registrations;
