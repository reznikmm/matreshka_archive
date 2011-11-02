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
-- Copyright © 2009-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
--  Atomic counters. Any objects of Counter type has value 1 by default.
--  This assumption allows declaration of implicitly initialized objects in
--  the preelaborateable units.
------------------------------------------------------------------------------
pragma Ada_2012;

private with Interfaces;

package Matreshka.Atomics.Counters is

   pragma Preelaborate;

   type Counter is limited private;

   procedure Increment (Self : in out Counter);
   pragma Inline (Increment);
   --  Atomicaly increment counter value.

   function Decrement (Self : in out Counter) return Boolean;
   pragma Inline (Decrement);
   --  Atomicaly decrement counter value. Returns True if counter has zero
   --  value after decrement.

   procedure Decrement (Self : in out Counter);
   pragma Inline (Decrement);
   --  Atomicaly decrement counter value.

   function Is_Zero (Self : in out Counter) return Boolean;
   pragma Inline (Is_Zero);
   --  Returns True if counter has zero value.

   function Is_One (Self : in out Counter) return Boolean;
   pragma Inline (Is_One);
   --  Returns True if counter has one value.

   function Zero return Counter;
   pragma Inline (Zero);
   --  Initialize counter to zero value.

   function One return Counter;
   pragma Inline (One);
   --  Initialize counter to one value.

private

   type Counter is limited record
      Value : aliased Interfaces.Integer_32 := 1;
      pragma Volatile (Value);
   end record;
   --  Note: Record type is used for automatic initial value assignment.

end Matreshka.Atomics.Counters;
