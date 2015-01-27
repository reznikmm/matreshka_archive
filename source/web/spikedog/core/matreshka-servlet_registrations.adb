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

with Matreshka.Servlet_Containers;

package body Matreshka.Servlet_Registrations is

   -----------------
   -- Add_Mapping --
   -----------------

   overriding function Add_Mapping
    (Self         : not null access Servlet_Registration;
     URL_Patterns : League.String_Vectors.Universal_String_Vector)
       return League.String_Vectors.Universal_String_Vector
   is
      Success : Boolean;

   begin
      return Result : League.String_Vectors.Universal_String_Vector do
         for J in 1 .. URL_Patterns.Length loop
            Self.Context.Add_Mapping (Self, URL_Patterns (J), Success);

            if not Success then
               Result.Append (URL_Patterns (J));
            end if;
         end loop;
      end return;
   end Add_Mapping;

   ----------------------
   -- Get_Servlet_Name --
   ----------------------

   overriding function Get_Servlet_Name
    (Self : Servlet_Registration) return League.Strings.Universal_String is
   begin
      if not Self.Name.Is_Empty then
         return Self.Name;

      else
         return
           League.Strings.From_UTF_8_String
            (Ada.Tags.External_Tag (Self.Servlet'Tag));
      end if;
   end Get_Servlet_Name;

end Matreshka.Servlet_Registrations;
