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

package body Servlet.Servlet_Registrations is

   -----------------
   -- Add_Mapping --
   -----------------

   function Add_Mapping
    (Self        : not null access Servlet_Registration'Class;
     URL_Pattern : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector
   is
      URL_Patterns : League.String_Vectors.Universal_String_Vector;

   begin
      URL_Patterns.Append (URL_Pattern);

      return Self.Add_Mapping (URL_Patterns);
   end Add_Mapping;

   -----------------
   -- Add_Mapping --
   -----------------

   procedure Add_Mapping
    (Self         : not null access Servlet_Registration'Class;
     URL_Patterns : League.String_Vectors.Universal_String_Vector)
   is
      Aux : constant League.String_Vectors.Universal_String_Vector
        := Self.Add_Mapping (URL_Patterns);
      pragma Unreferenced (Aux);

   begin
      null;
   end Add_Mapping;

   -----------------
   -- Add_Mapping --
   -----------------

   procedure Add_Mapping
    (Self        : not null access Servlet_Registration'Class;
     URL_Pattern : League.Strings.Universal_String)
   is
      Aux : constant League.String_Vectors.Universal_String_Vector
        := Self.Add_Mapping (URL_Pattern);
      pragma Unreferenced (Aux);

   begin
      null;
   end Add_Mapping;

end Servlet.Servlet_Registrations;
