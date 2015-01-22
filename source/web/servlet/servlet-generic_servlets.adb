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
with Ada.Tags;

package body Servlet.Generic_Servlets is

   ------------------------
   -- Get_Servlet_Config --
   ------------------------

   overriding function Get_Servlet_Config
    (Self : Generic_Servlet)
       return access Standard.Servlet.Configs.Servlet_Config'Class is
   begin
      return Self.Config;
   end Get_Servlet_Config;

   ----------------------
   -- Get_Servlet_Name --
   ----------------------

   overriding function Get_Servlet_Name
    (Self : Generic_Servlet) return League.Strings.Universal_String is
   begin
      if Self.Config /= null then
         return Self.Config.Get_Servlet_Name;

      else
         --  Return Ada's external tag for unregistered instances.

         return
           League.Strings.From_UTF_8_String
            (Ada.Tags.External_Tag (Generic_Servlet'Class (Self)'Tag));
      end if;
   end Get_Servlet_Name;

   ----------------
   -- Initialize --
   ----------------

   overriding procedure Initialize
    (Self   : in out Generic_Servlet;
     Config : not null access Standard.Servlet.Configs.Servlet_Config'Class) is
   begin
      Self.Config := Config;
   end Initialize;

end Servlet.Generic_Servlets;
