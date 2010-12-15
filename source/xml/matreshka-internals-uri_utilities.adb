------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Matreshka.Internals.URI_Utilities is

   use type League.Strings.Universal_String;

   --------------------
   -- Construct_Base --
   --------------------

   function Construct_Base
    (Base      : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      Dir : constant League.Strings.Universal_String
        := Directory_Name (System_Id);

   begin
      if not Base.Is_Empty then
         if not Dir.Is_Empty then
            return Base & '/' & Dir;

         else
            return Base;
         end if;

      else
         return Dir;
      end if;
   end Construct_Base;

   -------------------------
   -- Construct_System_Id --
   -------------------------

   function Construct_System_Id
    (Base      : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      if not Base.Is_Empty then
         return Base & '/' & System_Id;

      else
         return System_Id;
      end if;
   end Construct_System_Id;

   --------------------
   -- Directory_Name --
   --------------------

   function Directory_Name
    (Base : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      for J in reverse 1 .. Base.Length loop
         if Base.Element (J) = '/' then
            return Base.Slice (1, J - 1);
         end if;
      end loop;

      return League.Strings.Empty_Universal_String;
   end Directory_Name;

end Matreshka.Internals.URI_Utilities;
