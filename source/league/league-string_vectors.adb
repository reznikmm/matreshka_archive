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
with League.Strings.Internals;
with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.Unicode;
with Matreshka.Internals.Utf16;

package body League.String_Vectors is

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Universal_String_Vector) is
   begin
      Matreshka.Internals.String_Vectors.Reference (Self.Data);
   end Adjust;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : Universal_String_Vector;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index > Self.Data.Length then
         raise Constraint_Error with "Index is out of range";
      end if;

      return League.Strings.Internals.Create (Self.Data.Value (Index));
   end Element;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Universal_String_Vector) is
      use type Matreshka.Internals.String_Vectors.Shared_String_Vector_Access;

   begin
      --  Finalize can be called more than once (as specified by language
      --  standard), thus implementation should provide protection from
      --  multiple finalization.

      if Self.Data /= null then
         Matreshka.Internals.String_Vectors.Dereference (Self.Data);
      end if;
   end Finalize;

   ------------
   -- Length --
   ------------

   function Length (Self : Universal_String_Vector) return Natural is
   begin
      return Self.Data.Length;
   end Length;

   -----------
   -- Split --
   -----------

   function Split
    (Self      : League.Strings.Universal_String;
     Separator : Wide_Wide_Character) return Universal_String_Vector is
   begin
      return Split (Self, League.Strings.To_Universal_Character (Separator));
   end Split;

   -----------
   -- Split --
   -----------

   function Split
    (Self      : League.Strings.Universal_String;
     Separator : League.Strings.Universal_Character)
       return Universal_String_Vector
   is
      use type Matreshka.Internals.Unicode.Code_Point;
      use type Matreshka.Internals.Utf16.Utf16_String_Index;

      D : constant Matreshka.Internals.Strings.Shared_String_Access
        := League.Strings.Internals.Get_Shared (Self);
      C : constant Matreshka.Internals.Unicode.Code_Unit_32
        := League.Strings.Internals.Get_Code (Separator);

      First_Position   : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      First_Index      : Positive := 1;
      Current_Position : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      Current_Index    : Positive := 1;
      Last_Position    : Matreshka.Internals.Utf16.Utf16_String_Index;
      Last_Index       : Natural;
      Code             : Matreshka.Internals.Unicode.Code_Point;
      S                : Matreshka.Internals.Strings.Shared_String_Access;
      R                :
        Matreshka.Internals.String_Vectors.Shared_String_Vector_Access
          := Matreshka.Internals.String_Vectors.Allocate (1);

   begin
      if not Matreshka.Internals.Unicode.Is_Valid (C) then
         raise Constraint_Error with "Illegal Unicode code point";
      end if;

      if D.Length = 0 then
         return Empty_Universal_String_Vector;
      end if;

      while Current_Position < D.Unused loop
         Last_Position := Current_Position;
         Last_Index    := Current_Index;
         Matreshka.Internals.Utf16.Unchecked_Next
          (D.Value, Current_Position, Code);
         Current_Index := Current_Index + 1;

         if Code = C then
            S :=
              Matreshka.Internals.Strings.Operations.Slice
               (D,
                First_Position,
                Last_Position - First_Position,
                Last_Index - First_Index);
            Matreshka.Internals.String_Vectors.Append (R, S);
            First_Position := Current_Position;
            First_Index    := Current_Index;
         end if;
      end loop;

      if First_Position <= D.Unused then
         S :=
           Matreshka.Internals.Strings.Operations.Slice
            (D,
             First_Position,
             D.Unused - First_Position,
             D.Length - First_Index + 1);
         Matreshka.Internals.String_Vectors.Append (R, S);
      end if;

      return (Ada.Finalization.Controlled with Data => R);
   end Split;

end League.String_Vectors;
