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
with Matreshka.Internals.Unicode.Ucd.Core;
with Matreshka.Internals.Unicode.Ucd.Indexes;
with Matreshka.Internals.Code_Point_Sets;
use Matreshka.Internals.Code_Point_Sets;

package Matreshka.Internals.Code_Point_Set_Constructors is

   pragma Preelaborate;

   type Code_Point_Set_Descriptor is record
      Category : Matreshka.Internals.Unicode.Ucd.General_Category;
   end record;

   function Match
     (Descriptor : Code_Point_Set_Descriptor;
      Value      : Matreshka.Internals.Unicode.Ucd.Core_Values)
     return Boolean;
   pragma Inline (Match);

   subtype Core_Shared_Code_Point_Set is Shared_Code_Point_Set
     (Last => Matreshka.Internals.Unicode.Ucd.Indexes.Base_Last);

   procedure To_Set
     (Descriptor : Code_Point_Set_Descriptor;
      Result     : in out Core_Shared_Code_Point_Set);

end Matreshka.Internals.Code_Point_Set_Constructors;
