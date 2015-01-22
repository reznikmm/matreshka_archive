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
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Servlet.HTTP_Requests is

   use type League.Strings.Universal_String;

   ----------------------
   -- Get_Context_Path --
   ----------------------

   function Get_Context_Path
    (Self : HTTP_Servlet_Request'Class) return League.Strings.Universal_String
   is
      Aux : constant League.String_Vectors.Universal_String_Vector
        := Self.Get_Context_Path;

   begin
      if Aux.Is_Empty then
         return League.Strings.Empty_Universal_String;

      else
         return '/' & Aux.Join ('/');
      end if;
   end Get_Context_Path;

   -------------------
   -- Get_Path_Info --
   -------------------

   function Get_Path_Info
    (Self : HTTP_Servlet_Request'Class) return League.Strings.Universal_String
   is
      Aux : constant League.String_Vectors.Universal_String_Vector
        := Self.Get_Path_Info;

   begin
      if Aux.Is_Empty then
         return League.Strings.Empty_Universal_String;

      else
         return '/' & Aux.Join ('/');
      end if;
   end Get_Path_Info;

   ----------------------
   -- Get_Servlet_Path --
   ----------------------

   function Get_Servlet_Path
    (Self : HTTP_Servlet_Request'Class) return League.Strings.Universal_String
   is
      Aux : constant League.String_Vectors.Universal_String_Vector
        := Self.Get_Servlet_Path;

   begin
      if Aux.Is_Empty then
         return League.Strings.Empty_Universal_String;

      else
         return '/' & Aux.Join ('/');
      end if;
   end Get_Servlet_Path;

end Servlet.HTTP_Requests;
