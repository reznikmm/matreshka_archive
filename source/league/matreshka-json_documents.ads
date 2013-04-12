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
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.Atomics.Counters;
with Matreshka.JSON_Types;

package Matreshka.JSON_Documents is

   pragma Preelaborate;

   type Shared_JSON_Document is limited record
      Counter      : Matreshka.Atomics.Counters.Counter;
      Array_Value  : Matreshka.JSON_Types.Shared_JSON_Array_Access;
      Object_Value : Matreshka.JSON_Types.Shared_JSON_Object_Access;
   end record;

   type Shared_JSON_Document_Access is access all Shared_JSON_Document;

   Empty_Shared_JSON_Document : aliased Shared_JSON_Document
     := (Counter => <>, Array_Value => null, Object_Value => null);

   procedure Reference (Self : not null Shared_JSON_Document_Access);
   --  Increments internal reference counter.

   procedure Dereference (Self : in out Shared_JSON_Document_Access);
   --  Decrements internal reference counter and deallocates shared document
   --  when counter reach zero. Sets Self to null.

   procedure Mutate (Self : in out not null Shared_JSON_Document_Access);
   --  Mutate object: new shared object is allocated when reference counter is
   --  greater than one, reference counter of original object is decremented
   --  and original value is copied. Otherwise, shared object is unchanged.

end Matreshka.JSON_Documents;
