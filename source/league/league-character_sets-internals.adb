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
--  $Revision: 2342 $ $Date: 2011-12-06 17:15:51 +0200 (Втр, 06 Дек 2011) $
------------------------------------------------------------------------------

package body League.Character_Sets.Internals is

   use Matreshka.Internals.Code_Point_Sets;

   ------------
   -- To_Set --
   ------------

   function To_Set
     (Flags : Matreshka.Internals.Regexps.General_Category_Flags)
     return Universal_Character_Set
   is
      Descriptor : constant Code_Point_Set_Descriptor :=
        (General_Category, Flags);
   begin
      return Wrap (new Shared_Code_Point_Set'(To_Set (Descriptor)));
   end To_Set;

   ------------
   -- To_Set --
   ------------

   function To_Set
     (Property : Matreshka.Internals.Unicode.Ucd.Boolean_Properties)
     return Universal_Character_Set
   is
      Descriptor : constant Code_Point_Set_Descriptor := (Binary, Property);
   begin
      return Wrap (new Shared_Code_Point_Set'(To_Set (Descriptor)));
   end To_Set;

   ----------
   -- Wrap --
   ----------

   function Wrap
     (Data : not null Code_Point_Sets.Shared_Code_Point_Set_Access)
     return Universal_Character_Set
   is
   begin
      return Universal_Character_Set'(Ada.Finalization.Controlled with
                                        Data => Data);
   end Wrap;

end League.Character_Sets.Internals;
