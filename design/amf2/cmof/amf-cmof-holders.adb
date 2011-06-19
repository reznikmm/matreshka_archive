------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
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
with AMF.CMOF.Visibility_Kind_Holders;

package body AMF.CMOF.Holders is

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder) return Optional_CMOF_Visibility_Kind is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.CMOF.Visibility_Kind_Holders.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.CMOF.Visibility_Kind_Holders.Element (Holder));
      end if;
   end Element;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : Optional_CMOF_Visibility_Kind) return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.CMOF.Visibility_Kind_Holders.Value_Tag);

         if not Item.Is_Empty then
            AMF.CMOF.Visibility_Kind_Holders.Replace_Element
             (Result, Item.Value);
         end if;
      end return;
   end To_Holder;

end AMF.CMOF.Holders;
