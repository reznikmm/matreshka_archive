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
private with Ada.Finalization;

with League.Signals;
private with League.Signals.Emitters;
private with Matreshka.Internals.Signals;

package League.Objects.Impl is

   type Object_Impl is abstract limited new League.Objects.Object with private;

   type Object_Impl_Access is access all Object_Impl'Class;

   not overriding procedure Finalize
    (Self : not null access Object_Impl) is null;
   --  This procedure is called before dellocation of memory occupied by object
   --  itself. It can be overridden by derived types to release own resources.

   overriding function Children
    (Self : not null access constant Object_Impl)
       return League.Objects.Object_Access_Array;

   overriding function Parent
    (Self : not null access Object_Impl) return League.Objects.Object_Access;

   overriding procedure Set_Parent
    (Self   : not null access Object_Impl;
     Parent : access League.Objects.Object'Class);

   overriding function Destroyed
    (Self : not null access Object_Impl) return League.Signals.Signal;

   package Constructors is

      procedure Initialize
       (Self   : not null access Object_Impl'Class;
        Parent : access League.Objects.Object'Class := null);

   end Constructors;

private

   type Object_Impl is
     abstract new Ada.Finalization.Limited_Controlled
       and League.Objects.Object with
   record
      Parent           : Object_Impl_Access;
      First_Child      : Object_Impl_Access;
      Last_Child       : Object_Impl_Access;
      Next_Sibling     : Object_Impl_Access;
      Previous_Sibling : Object_Impl_Access;
      Children_Count   : Natural := 0;
      Destroyed        : aliased
        League.Signals.Emitters.Emitter (Object_Impl'Access);
      Connections      : aliased
        Matreshka.Internals.Signals.Connections (Object_Impl'Access);
   end record;

   overriding procedure Finalize (Self : in out Object_Impl);

end League.Objects.Impl;
