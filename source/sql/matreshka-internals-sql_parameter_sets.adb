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

package body Matreshka.Internals.SQL_Parameter_Sets is

   -----------
   -- Alias --
   -----------

   procedure Alias
    (Self : in out Parameter_Set;
     Name : League.Strings.Universal_String) is
   begin
      raise Program_Error;
   end Alias;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Parameter_Set;
     Name : League.Strings.Universal_String)
   is
      Value : League.Holders.Holder;

   begin
      Self.Names.Insert (Integer (Self.Names.Length) + 1, Name);
      Self.Values.Insert (Name, Value);
   end Append;

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out Parameter_Set) is
   begin
      null;
   end Clear;

   -------------------
   -- Has_Parameter --
   -------------------

   function Has_Parameter
    (Self : Parameter_Set;
     Name : League.Strings.Universal_String) return Boolean is
   begin
      return Self.Values.Contains (Name);
   end Has_Parameter;

   ----------
   -- Hash --
   ----------

   function Hash (Item : Positive) return Ada.Containers.Hash_Type is
   begin
      return Ada.Containers.Hash_Type (Item);
   end Hash;

   -----------
   -- Index --
   -----------

   function Index
    (Self : Parameter_Set;
     Name : League.Strings.Universal_String) return Integer
   is
      use type League.Strings.Universal_String;

      Position : Integer_Maps.Cursor := Self.Names.First;

   begin
      while Integer_Maps.Has_Element (Position) loop
         if Integer_Maps.Element (Position) = Name then
            return Integer_Maps.Key (Position);
         end if;

         Integer_Maps.Next (Position);
      end loop;

      raise Program_Error;
   end Index;

   ---------------------
   -- Number_Of_Named --
   ---------------------

   function Number_Of_Named (Self : Parameter_Set) return Natural is
   begin
      return Natural (Self.Values.Length);
   end Number_Of_Named;

   --------------------------
   -- Number_Of_Positional --
   --------------------------

   function Number_Of_Positional (Self : Parameter_Set) return Natural is
   begin
      return Natural (Self.Names.Length);
   end Number_Of_Positional;

   ---------------
   -- Set_Value --
   ---------------

   procedure Set_Value
    (Self  : in out Parameter_Set;
     Name  : League.Strings.Universal_String;
     Value : League.Holders.Holder) is
   begin
      if Self.Values.Contains (Name) then
         Self.Values.Replace (Name, Value);
      end if;
   end Set_Value;

   -----------
   -- Value --
   -----------

   function Value
    (Self  : Parameter_Set; Index : Positive) return League.Holders.Holder is
   begin
      return Self.Values.Element (Self.Names.Element (Index));
   end Value;

end Matreshka.Internals.SQL_Parameter_Sets;
