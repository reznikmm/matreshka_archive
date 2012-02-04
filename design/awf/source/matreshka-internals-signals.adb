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
with League.Objects.Impl.Internals;

package body Matreshka.Internals.Signals is

   -------------
   -- Connect --
   -------------

   procedure Connect
    (Self     : in out Abstract_Emitter'Class;
     Receiver : not null League.Objects.Object_Access;
     Handler  : not null access procedure
       (Object    : not null League.Objects.Object_Access;
        Arguments : Holder_Array))
   is
      C            : constant not null Connection_Access
        := new Connection
                (Self'Unchecked_Access,
                 Receiver,
                 Handler);
      Sender_Set   : constant not null Connections_Access
        := League.Objects.Impl.Internals.Get_Connections (Self.Object.all);
--        := League.Objects.Impl.Internals.Get_Connections (League.Objects.Object_Access (Self.Object.all'Unchecked_Access));
      Receiver_Set : constant not null Connections_Access
        := League.Objects.Impl.Internals.Get_Connections (Receiver.all);
--        := League.Objects.Impl.Internals.Get_Connections (Receiver);

   begin
      --  Add connection to emitter.

      if Self.First = null then
         Self.First := C;
         Self.Last  := C;

      else
         C.Previous_Emitter := Self.Last;
         C.Previous_Emitter.Next_Emitter := C;
         Self.Last := C;
      end if;

      --  Add connection to sender.

      if Sender_Set.First = null then
         Sender_Set.First := C;
         Sender_Set.Last  := C;

      else
         C.Previous_Sender := Sender_Set.Last;
         C.Previous_Sender.Next_Sender := C;
         Sender_Set.Last := C;
      end if;

      --  Add connection to receiver.

      if Receiver_Set.First = null then
         Receiver_Set.First := C;
         Receiver_Set.Last  := C;

      else
         C.Previous_Receiver := Receiver_Set.Last;
         C.Previous_Receiver.Next_Receiver := C;
         Receiver_Set.Last := C;
      end if;
   end Connect;

   ----------------
   -- Disconnect --
   ----------------

   procedure Disconnect (Self : in out Connections) is
   begin
      null;
   end Disconnect;

   ----------
   -- Emit --
   ----------

   procedure Emit
    (Self      : in out Abstract_Emitter'Class;
     Arguments : Holder_Array)
   is
      Current : Connection_Access := Self.First;

   begin
      while Current /= null loop
         Current.Handler (Current.Receiver, Arguments);
         Current := Current.Next_Emitter;
      end loop;
   end Emit;

end Matreshka.Internals.Signals;
