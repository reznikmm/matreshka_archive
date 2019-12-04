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

with League.Strings;
with League.Calendars;

limited with Sessions.Managers;

with Servlet.HTTP_Sessions;

package Sessions is

   type HTTP_Session is new Servlet.HTTP_Sessions.HTTP_Session with private;

   type HTTP_Session_Access is access all HTTP_Session'Class;

   not overriding procedure Count
     (Self   : in out HTTP_Session;
      Result : out Natural);
   --  Increment a counter and return current value.

private

   type HTTP_Session is new Servlet.HTTP_Sessions.HTTP_Session with record
      Id    : League.Strings.Universal_String;
      Count : Natural := 0;
   end record;

   overriding function Get_Id
    (Self : HTTP_Session) return League.Strings.Universal_String;

   overriding function Get_Creation_Time
    (Self : HTTP_Session) return League.Calendars.Date_Time;

   overriding function Get_Last_Accessed_Time
    (Self : HTTP_Session) return League.Calendars.Date_Time;

   overriding function Is_New (Self : HTTP_Session) return Boolean;

end Sessions;
