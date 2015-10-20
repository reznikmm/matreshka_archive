------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Wide_Text_IO;

with Asis.Elements;

package body Engines.Generic_Engines is

   ---------
   -- "=" --
   ---------

   overriding function "=" (Left, Right : Property_Key) return Boolean is
   begin
      return Asis.Elements.Is_Identical (Left.Element, Right.Element) and then
        Left.Name = Right.Name;
   end "=";

   ------------------
   -- Get_Property --
   ------------------

   function Get_Property
     (Self    : access Engine;
      Element : Asis.Element;
      Name    : Propert_Name)
      return Property_Type
   is
      Key    : constant Property_Key := (Element, Name);
      Pos    : constant Property_Maps.Cursor := Self.Property_Cache.Find (Key);
      Value  : Property_Type;
      Action : Action_Callback;
   begin
      if Property_Maps.Has_Element (Pos) then
         Value := Property_Maps.Element (Pos);
      else
         declare
            Kind : constant Asis.Extensions.Flat_Kinds.Flat_Element_Kinds :=
              Asis.Extensions.Flat_Kinds.Flat_Element_Kind (Element);
         begin
            Action := Self.Actions.Element ((Kind, Name));
         exception
            when Constraint_Error =>
               Ada.Wide_Text_IO.Put
                 (Asis.Extensions.Flat_Kinds.Flat_Element_Kinds'Wide_Image
                    (Kind));
               Ada.Wide_Text_IO.Put (" ");
               Ada.Wide_Text_IO.Put_Line (Propert_Name'Wide_Image (Name));
               Ada.Wide_Text_IO.Put_Line (Asis.Elements.Debug_Image (Element));
               raise;
         end;

         Value := Action (Self.Context, Element, Name);
         Self.Property_Cache.Insert (Key, Value);
      end if;

      return Value;
   end Get_Property;

   ------------------
   -- Get_Property --
   ------------------

   function Get_Property
     (Self    : access Engine;
      List    : Asis.Element_List;
      Name    : Propert_Name;
      Empty   : Property_Type;
      Sum     : access
        function (Left, Right : Property_Type) return Property_Type)
      return Property_Type
   is
      Result : Property_Type := Empty;
   begin
      for J in List'Range loop
         declare
            Next : constant Property_Type :=
              Self.Get_Property (List (J), Name);
         begin
            Result := Sum (Result, Next);
         end;
      end loop;

      return Result;
   end Get_Property;

   ----------
   -- Hash --
   ----------

   function Hash (Value : Property_Key) return Ada.Containers.Hash_Type is
      use type Ada.Containers.Hash_Type;

      Element_Hash : constant Asis.ASIS_Integer :=
        Asis.Elements.Hash (Value.Element);
      Name_Hash : constant Ada.Containers.Hash_Type :=
        Propert_Name'Pos (Value.Name);
   begin
      return Name_Hash + Ada.Containers.Hash_Type (abs Element_Hash);
   end Hash;

   ----------
   -- Hash --
   ----------

   function Hash (Value : Action_Key) return Ada.Containers.Hash_Type is
      use type Ada.Containers.Hash_Type;

      Kind_Hash : constant Ada.Containers.Hash_Type :=
        Asis.Extensions.Flat_Kinds.Flat_Element_Kinds'Pos (Value.Kind);
      Name_Hash : constant Ada.Containers.Hash_Type :=
        Propert_Name'Pos (Value.Name);
   begin
      return Name_Hash + Kind_Hash;
   end Hash;

   -------------------------
   -- Register_Calculator --
   -------------------------

   procedure Register_Calculator
     (Self   : in out Engine;
      Kind   : Asis.Extensions.Flat_Kinds.Flat_Element_Kinds;
      Name   : Propert_Name;
      Action : access function
        (Engine  : access Abstract_Context;
         Element : Asis.Element;
         Name    : Propert_Name) return Property_Type) is
   begin
      Self.Actions.Insert ((Kind, Name), Action);
   end Register_Calculator;

end Engines.Generic_Engines;
