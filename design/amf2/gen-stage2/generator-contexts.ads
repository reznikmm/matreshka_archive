------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  Utilities to manage set of Ada compilation unit's context clauses.
------------------------------------------------------------------------------
private with Ada.Containers.Ordered_Maps;

private with League.Strings.Hash;

package Generator.Contexts is

   type Context is tagged limited private;

   procedure Add
    (Self       : in out Context;
     Unit       : League.Strings.Universal_String;
     Is_Limited : Boolean := False;
     Is_Private : Boolean := False);
   --  Adds context clause for the specified compilation unit.

   procedure Instantiate
    (Self : in out Context;
     Unit : League.Strings.Universal_String);
   --  Correct context to be used for specified package.

   procedure Iterate
    (Self     : Context;
     Iterator : not null access procedure
      (Unit       : League.Strings.Universal_String;
       Is_Limited : Boolean := False;
       Is_Private : Boolean := False));
   --  Iterate through collected context clauses.

private

   type Context_Information is record
      Is_Limited : Boolean;
      Is_Private : Boolean;
   end record;

   type Context_Information_Access is access all Context_Information;

   package String_Context_Maps is
     new Ada.Containers.Ordered_Maps
          (League.Strings.Universal_String,
           Context_Information_Access,
           League.Strings."<");

   type Context is tagged limited record
      Map : String_Context_Maps.Map;
   end record;

end Generator.Contexts;
