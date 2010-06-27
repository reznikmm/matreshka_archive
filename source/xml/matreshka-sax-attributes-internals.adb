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
--  This package is for internal use only.
------------------------------------------------------------------------------
with League.Strings.Internals;
with Matreshka.Internals.Strings.Compare;

package body Matreshka.SAX.Attributes.Internals is

   ------------
   -- Append --
   ------------

   procedure Append
    (Self           : in out SAX_Attributes'Class;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Value          : League.Strings.Universal_String) is
   begin
      --  Looking for duplicating qualified names.

      for J in 1 .. Self.Data.Length loop
         if Matreshka.Internals.Strings.Compare.Is_Equal
             (Self.Data.Values (J).Qualified_Name,
              League.Strings.Internals.Get_Shared (Qualified_Name))
         then
            raise Constraint_Error;
         end if;
      end loop;

      --  Reallocate shared object when necessary.

      if not Can_Be_Reused (Self.Data)
         --  Object can't be mutated because someone else use it. Allocate
         --  new shared object and copy data.
        or else Self.Data.Length = Self.Data.Last
         --  There are no enought space to store new attribute. Reallocate new
         --  object and copy data.
      then
         declare
            Aux : Shared_Attributes_Access
              := new Shared_Attributes ((Self.Data.Length + 8) / 8 * 8);

         begin
            Aux.Values (1 .. Self.Data.Length) :=
              Self.Data.Values (1 .. Self.Data.Length);
            Aux.Length := Self.Data.Length;

            for J in 1 .. Aux.Length loop
               Matreshka.Internals.Strings.Reference
                (Aux.Values (J).Namespace_URI);
               Matreshka.Internals.Strings.Reference
                (Aux.Values (J).Local_Name);
               Matreshka.Internals.Strings.Reference
                (Aux.Values (J).Qualified_Name);
               Matreshka.Internals.Strings.Reference
                (Aux.Values (J).Value);
            end loop;

            Dereference (Self.Data);
            Self.Data := Aux;
         end;
      end if;

      --  Add attribute.

      Self.Data.Length := Self.Data.Length + 1;
      Self.Data.Values (Self.Data.Length) :=
       (Namespace_URI  =>
          League.Strings.Internals.Get_Shared (Namespace_URI),
        Local_Name     =>
          League.Strings.Internals.Get_Shared (Local_Name),
        Qualified_Name =>
          League.Strings.Internals.Get_Shared (Qualified_Name),
        Value          =>
          League.Strings.Internals.Get_Shared (Value));

      Matreshka.Internals.Strings.Reference
       (Self.Data.Values (Self.Data.Length).Namespace_URI);
      Matreshka.Internals.Strings.Reference
       (Self.Data.Values (Self.Data.Length).Local_Name);
      Matreshka.Internals.Strings.Reference
       (Self.Data.Values (Self.Data.Length).Qualified_Name);
      Matreshka.Internals.Strings.Reference
       (Self.Data.Values (Self.Data.Length).Value);
   end Append;

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out SAX_Attributes'Class) is
   begin
      if Can_Be_Reused (Self.Data) then
         for J in 1 .. Self.Data.Length loop
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (J).Namespace_URI);
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (J).Local_Name);
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (J).Qualified_Name);
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (J).Value);
         end loop;

         Self.Data.Length := 0;

      else
         Dereference (Self.Data);
         Self.Data := new Shared_Attributes (8);
      end if;
   end Clear;

end Matreshka.SAX.Attributes.Internals;
