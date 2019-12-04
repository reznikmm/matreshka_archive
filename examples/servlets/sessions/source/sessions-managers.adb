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

package body Sessions.Managers is

   -----------------------
   -- Change_Session_Id --
   -----------------------

   overriding procedure Change_Session_Id
    (Self    : in out HTTP_Session_Manager;
     Session : not null access Servlet.HTTP_Sessions.HTTP_Session'Class) is
   begin
      raise Program_Error with "Unimplemented";
   end Change_Session_Id;

   -----------------
   -- Get_Session --
   -----------------

   overriding function Get_Session
     (Self       : in out HTTP_Session_Manager;
      Identifier : League.Strings.Universal_String)
      return access Servlet.HTTP_Sessions.HTTP_Session'Class
   is
   begin
      if Identifier.To_Wide_Wide_String = "aaa" then
         return Self.One;
      else
         return null;
      end if;
   end Get_Session;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : in out HTTP_Session_Manager) is
   begin
      Self.One := null;
   end Initialize;

   ---------------------------------
   -- Is_Session_Identifier_Valid --
   ---------------------------------

   overriding function Is_Session_Identifier_Valid
     (Self       : HTTP_Session_Manager;
      Identifier : League.Strings.Universal_String)
      return Boolean
   is
   begin
      return Identifier.To_Wide_Wide_String = "aaa";
   end Is_Session_Identifier_Valid;

   -----------------
   -- New_Session --
   -----------------

   overriding function New_Session
     (Self : in out HTTP_Session_Manager)
      return access Servlet.HTTP_Sessions.HTTP_Session'Class
   is
      New_Id : League.Strings.Universal_String :=
        League.Strings.To_Universal_String ("aaa");
   begin
      Self.One := new Sessions.HTTP_Session'
        (Servlet.HTTP_Sessions.HTTP_Session with Id => New_Id, Count => 0);

      return Self.One;
   end New_Session;

end Sessions.Managers;
