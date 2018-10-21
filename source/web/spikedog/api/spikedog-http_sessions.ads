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
-- Copyright © 2018, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  Implementation of HTTP_Session interface used by dy default by Spikedog
--  application server.
--
--  Applications can provide type derived from Spikedog_HTTP_Session and
--  corresponding session factory to use own session objects with default
--  session manager.
------------------------------------------------------------------------------
private with Ada.Containers;
private with Interfaces;

private with League.Calendars;
private with League.Strings;

with Servlet.HTTP_Sessions;

package Spikedog.HTTP_Sessions is

   pragma Preelaborate;

   type Spikedog_HTTP_Session is
     limited new Servlet.HTTP_Sessions.HTTP_Session with private;

private

   ------------------------
   -- Session_Identifier --
   ------------------------

   type Session_Identifier is
     array (Positive range 1 .. 4) of Interfaces.Unsigned_64;

   function Encode
    (Value : Session_Identifier) return League.Strings.Universal_String;
   --  Encodes session identifier into textual representation.

   procedure Decode
    (Image      : League.Strings.Universal_String;
     Identifier : out Session_Identifier;
     Success    : out Boolean);
   --  Decodes textual representation of the session identifier into
   --  session identifier. Sets Success to True when decoding was done
   --  successfully.

   function Hash (Value : Session_Identifier) return Ada.Containers.Hash_Type;
   --  Hash function conmatible with standard containers.

   ---------------------------
   -- Spikedog_HTTP_Session --
   ---------------------------

   type Spikedog_HTTP_Session is
     limited new Servlet.HTTP_Sessions.HTTP_Session with record
      Valid              : Boolean;
      Identifier         : Session_Identifier;
      Creation_Time      : League.Calendars.Date_Time;
      Last_Accessed_Time : League.Calendars.Date_Time;
      Is_New             : Boolean;
   end record;

   overriding function Get_Creation_Time
    (Self : Spikedog_HTTP_Session) return League.Calendars.Date_Time;

   overriding function Get_Id
    (Self : Spikedog_HTTP_Session) return League.Strings.Universal_String;

   overriding function Get_Last_Accessed_Time
    (Self : Spikedog_HTTP_Session) return League.Calendars.Date_Time;

   overriding function Is_New (Self : Spikedog_HTTP_Session) return Boolean;

end Spikedog.HTTP_Sessions;
