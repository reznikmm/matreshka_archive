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

with AWF.Objects;
with AWF.Signals;
private with AWF.Signals.Emitters;

package AWF.Internals.AWF_Objects is

   type AWF_Object_Proxy is
     abstract limited new AWF.Objects.AWF_Object with private;

   type AWF_Object_Proxy_Access is
     access all AWF_Object_Proxy'Class;

   overriding function Children
    (Self : not null access constant AWF_Object_Proxy)
       return AWF.Objects.AWF_Object_Access_Array;

   overriding function Parent
    (Self : not null access AWF_Object_Proxy)
       return AWF.Objects.AWF_Object_Access;

   overriding procedure Set_Parent
    (Self   : not null access AWF_Object_Proxy;
     Parent : access AWF.Objects.AWF_Object'Class);

   overriding function Destroyed
    (Self : not null access AWF_Object_Proxy) return AWF.Signals.Connector;

   package Constructors is

      procedure Initialize
       (Self   : not null access AWF_Object_Proxy'Class;
        Parent : access AWF.Objects.AWF_Object'Class := null);

   end Constructors;

private

   type AWF_Object_Proxy is
     abstract new Ada.Finalization.Limited_Controlled
       and AWF.Objects.AWF_Object with
   record
      Parent           : AWF_Object_Proxy_Access;
      First_Child      : AWF_Object_Proxy_Access;
      Last_Child       : AWF_Object_Proxy_Access;
      Next_Sibling     : AWF_Object_Proxy_Access;
      Previous_Sibling : AWF_Object_Proxy_Access;
      Children_Count   : Natural := 0;
      Destroyed        :
        AWF.Signals.Emitters.Emitter (AWF_Object_Proxy'Access);
   end record;

   overriding procedure Finalize (Self : in out AWF_Object_Proxy);

end AWF.Internals.AWF_Objects;
