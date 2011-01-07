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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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

package body XML.SAX.Attributes.Internals is

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
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (J).Value_Type);
         end loop;

         Self.Data.Length := 0;

      else
         Dereference (Self.Data);
         Self.Data := new Shared_Attributes (8);
      end if;
   end Clear;

   ----------------------
   -- Unchecked_Append --
   ----------------------

   procedure Unchecked_Append
    (Self           : in out SAX_Attributes'Class;
     Namespace_URI  :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Local_Name     :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Qualified_Name :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Value          :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Value_Type     :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Is_Declared    : Boolean;
     Is_Specified   : Boolean) is
   begin
      --  Detach and reallocate shared object when necessary.

      Detach (Self.Data, Self.Data.Length + 1);

      --  Add attribute.

      Matreshka.Internals.Strings.Reference (Namespace_URI);
      Matreshka.Internals.Strings.Reference (Local_Name);
      Matreshka.Internals.Strings.Reference (Qualified_Name);
      Matreshka.Internals.Strings.Reference (Value);
      Matreshka.Internals.Strings.Reference (Value_Type);

      Self.Data.Length := Self.Data.Length + 1;
      Self.Data.Values (Self.Data.Length) :=
       (Namespace_URI  => Namespace_URI,
        Local_Name     => Local_Name,
        Qualified_Name => Qualified_Name,
        Value          => Value,
        Value_Type     => Value_Type,
        Is_Declared    => Is_Declared,
        Is_Specified   => Is_Specified);
   end Unchecked_Append;

end XML.SAX.Attributes.Internals;
