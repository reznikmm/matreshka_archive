------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
--                                                                          --
--                        Runtime Library Component                         --
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
--  This package provides type and operations to handle set of parameters of
--  SQL statements.
------------------------------------------------------------------------------
private with Ada.Containers.Hashed_Maps;

with League.Strings;
with League.Values;
private with League.Strings.Hash;

package Matreshka.Internals.SQL_Parameter_Sets is

   type Parameter_Set is tagged limited private;

   procedure Clear (Self : in out Parameter_Set);
   --  Clears set of parameters.

   function Has_Parameter
    (Self : Parameter_Set;
     Name : League.Strings.Universal_String) return Boolean;
   --  Returns True when set has specified parameter.

   function Index
    (Self : Parameter_Set;
     Name : League.Strings.Universal_String) return Integer;
   --  Returns Index of the first occurrence of the specified parameter.

   procedure Append
    (Self : in out Parameter_Set;
     Name : League.Strings.Universal_String);
   --  Appends parameter with specified name and assign next index to it.

   procedure Alias
    (Self : in out Parameter_Set;
     Name : League.Strings.Universal_String);
   --  Creates alias for parameter with specified name and assign next index
   --  to it.

private

   package Universal_String_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           League.Values.Value,
           League.Strings.Hash,
           League.Strings."=",
           League.Values."=");

   function Hash (Item : Positive) return Ada.Containers.Hash_Type;

   package Integer_Maps is
     new Ada.Containers.Hashed_Maps
          (Positive,
           League.Strings.Universal_String,
           Hash,
           "=",
           League.Strings."=");

   type Parameter_Set is tagged limited record
      Values : Universal_String_Maps.Map;
      Names  : Integer_Maps.Map;
   end record;

end Matreshka.Internals.SQL_Parameter_Sets;
