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
--  $Revision: 1843 $ $Date: 2011-06-22 19:18:40 +0300 (Срд, 22 Июн 2011) $
------------------------------------------------------------------------------
--  Create code point set from it's description.
------------------------------------------------------------------------------

package body Matreshka.Internals.Code_Point_Set_Constructors is

   function Match
     (Descriptor : Code_Point_Set_Descriptor;
      Value      : Matreshka.Internals.Unicode.Ucd.Core_Values)
     return Boolean
   is
      use type Matreshka.Internals.Unicode.Ucd.General_Category;
   begin
      case Descriptor.Kind is
         when General_Category =>
            return Descriptor.GC_Flags (Value.GC);
         when Binary =>
            return Value.B (Descriptor.Property);
      end case;
   end Match;

   procedure To_Set
     (Descriptor : Code_Point_Set_Descriptor;
      Result     : in out Core_Shared_Code_Point_Set)
   is
      use Matreshka.Internals.Unicode.Ucd;

      P      : constant Core_First_Stage_Access := Core.Property'Access;
   begin
      Result.First_Stage := First_Stage_Map (Indexes.Group_Index);
      Result.Second_Stages := (others => All_Off);

      for J in Result.Second_Stages'Range loop
         for K in Code_Point_Sets.Second_Stage_Index loop
            if Match (Descriptor, P (Indexes.Base (J)) (K)) then
               Result.Second_Stages (J) (K) := True;
            end if;
         end loop;
      end loop;
   end To_Set;

end Matreshka.Internals.Code_Point_Set_Constructors;
