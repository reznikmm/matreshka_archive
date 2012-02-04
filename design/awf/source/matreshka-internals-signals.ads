------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package contains base implementation of signal-slot mechanism.
------------------------------------------------------------------------------
with League.Holders;
with League.Objects;
limited with League.Objects.Impl;

package Matreshka.Internals.Signals is

   type Holder_Array is array (Positive range <>) of League.Holders.Holder;

   ----------------------
   -- Abstract_Emitter --
   ----------------------

   type Abstract_Emitter
    (Object : not null access League.Objects.Impl.Object_Impl'Class)
       is tagged limited private;

   type Emitter_Access is access all Abstract_Emitter'Class;

   procedure Connect
    (Self     : in out Abstract_Emitter'Class;
     Receiver : not null League.Objects.Object_Access;
     Handler  : not null access procedure
      (Object    : not null League.Objects.Object_Access;
       Arguments : Holder_Array));

   procedure Emit
    (Self      : in out Abstract_Emitter'Class;
     Arguments : Holder_Array);

   ---------------------
   -- Abstract_Signal --
   ---------------------

   type Abstract_Signal
    (Emitter : not null access Abstract_Emitter'Class)
       is tagged limited null record;

   -----------------
   -- Connections --
   -----------------

   type Connections
    (Object : not null access League.Objects.Impl.Object_Impl'Class)
       is limited private;

   type Connections_Access is access all Connections;

   procedure Disconnect (Self : in out Connections);

private

   type Connection;
   type Connection_Access is access all Connection;

   type Connection
    (Emitter  : not null Emitter_Access;
     Receiver : not null League.Objects.Object_Access;
     Handler  : not null access procedure
       (Object    : not null League.Objects.Object_Access;
        Arguments : Holder_Array)) is limited
   record
      Previous_Emitter  : Connection_Access;
      Next_Emitter      : Connection_Access;
      --  References to previous and next connections in the signal emitter's
      --  list of connections.

      Previous_Sender   : Connection_Access;
      Next_Sender       : Connection_Access;
      --  References to previous and next connections in the list of sender's
      --  connections.

      Previous_Receiver : Connection_Access;
      Next_Receiver     : Connection_Access;
      --  References to previous and next connections in the list of receiver's
      --  connections.
   end record;

   type Abstract_Emitter
    (Object : not null access League.Objects.Impl.Object_Impl'Class)
       is tagged limited
   record
      First : Connection_Access;
      Last  : Connection_Access;
   end record;

   type Connections
    (Object : not null access League.Objects.Impl.Object_Impl'Class)
       is limited
   record
      First : Connection_Access;
      Last  : Connection_Access;
   end record;

end Matreshka.Internals.Signals;
