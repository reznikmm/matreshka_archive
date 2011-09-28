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

package body Matreshka.Internals.SQL_Parameter_Rewriters.SQLite3 is

   function Image (Item : Positive) return League.Strings.Universal_String;
   --  Returns text representation of the specified integer number. Text
   --  representation doesn't contain any leading or trailing spaces.

   -----------
   -- Image --
   -----------

   function Image (Item : Positive) return League.Strings.Universal_String is
      Aux : constant Wide_Wide_String := Integer'Wide_Wide_Image (Item);

   begin
      return
        League.Strings.To_Universal_String (Aux (Aux'First + 1 .. Aux'Last));
   end Image;

   --------------------------
   -- Database_Placeholder --
   --------------------------

   overriding procedure Database_Placeholder
    (Self        : SQLite3_Parameter_Rewriter;
     Name        : League.Strings.Universal_String;
     Number      : Positive;
     Placeholder : out League.Strings.Universal_String;
     Parameters  : in out SQL_Parameter_Sets.Parameter_Set)
   is
      use type League.Strings.Universal_String;

   begin
      if not Parameters.Has_Parameter (Name) then
         --  Parameter is new, register it.

         Parameters.Append (Name);
      end if;

      Placeholder := '$' & Image (Parameters.Index (Name));
   end Database_Placeholder;

end Matreshka.Internals.SQL_Parameter_Rewriters.SQLite3;
