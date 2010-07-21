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
-- Copyright © 2009, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.Internals.Host_Types;

package League.Values.Integers is

   pragma Preelaborate;

   function Is_Abstract_Integer (Self : Value) return Boolean;
   --  Returns True if contained value has integer type.

   function Get (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer;
   --  Returns internal value as a longest supported integer.

   procedure Set
    (Self : in out Value;
     To   : Matreshka.Internals.Host_Types.Longest_Integer);
   --  Set value from a longest supported integer. Raises Contraint_Error if
   --  value is outside of the range of valid values for actual integer type.

   function First (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer;
   --  Returns minimal value of the range of valid values.

   function Last (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer;
   --  Returns maximum value of the range of valid values.

   procedure Set
    (Self      : in out Value;
     Type_Hint : Value_Type;
     To        : Matreshka.Internals.Host_Types.Longest_Integer);
   --  Set value from a longest supported integer. Type_Hint represents
   --  expected type of the value. Raises Contraint_Error if value is outside
   --  of the range of valid values for actual integer type, or value has
   --  wrong type.

private

   type Abstract_Integer_Container is
     abstract new Abstract_Container with null record;

   not overriding function Constructor
    (Value : not null access Matreshka.Internals.Host_Types.Longest_Integer)
       return Abstract_Integer_Container
         is abstract;

   not overriding function Get
    (Self : not null access Abstract_Integer_Container)
       return Matreshka.Internals.Host_Types.Longest_Integer
         is abstract;

   not overriding procedure Set
    (Self : not null access Abstract_Integer_Container;
     To   : Matreshka.Internals.Host_Types.Longest_Integer)
       is abstract;

   not overriding function First
    (Self : not null access Abstract_Integer_Container)
       return Matreshka.Internals.Host_Types.Longest_Integer
         is abstract;

   not overriding function Last
    (Self : not null access Abstract_Integer_Container)
       return Matreshka.Internals.Host_Types.Longest_Integer
         is abstract;

end League.Values.Integers;
