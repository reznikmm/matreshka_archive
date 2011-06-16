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
with League.Holders.Booleans;
with League.Holders.Integers;

package body AMF.Holders is

   -------------
   -- Element --
   -------------

   function Element (Holder : League.Holders.Holder) return Optional_Boolean is
   begin
      if not League.Holders.Booleans.Is_Enumeration (Holder) then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, League.Holders.Booleans.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element (Holder : League.Holders.Holder) return Optional_Integer is
   begin
      if not League.Holders.Integers.Is_Integer (Holder) then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, League.Holders.Integers.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element (Holder : League.Holders.Holder) return Optional_String is
   begin
      if not League.Holders.Is_Universal_String (Holder) then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, League.Holders.Element (Holder));
      end if;
   end Element;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder (Item : Optional_Boolean) return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, League.Holders.Booleans.Enumeration_Tag);

         if not Item.Is_Empty then
            League.Holders.Booleans.Replace_Element (Result, Item.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder (Item : Optional_Integer) return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag (Result, League.Holders.Integers.Integer_Tag);

         if not Item.Is_Empty then
            League.Holders.Integers.Replace_Element (Result, Item.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder (Item : Optional_String) return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag (Result, League.Holders.Universal_String_Tag);

         if not Item.Is_Empty then
            League.Holders.Replace_Element (Result, Item.Value);
         end if;
      end return;
   end To_Holder;

end AMF.Holders;
