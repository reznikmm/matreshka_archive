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
     Value          : League.Strings.Universal_String)
   is
      use Attribute_Vectors;
      use type League.Strings.Universal_String;

      Position : Attribute_Vectors.Cursor := Self.Attributes.First;

   begin
      while Has_Element (Position) loop
         if Matreshka.Internals.Strings.Compare.Is_Equal
             (Element (Position).Qualified_Name,
              League.Strings.Internals.Get_Shared (Qualified_Name))
         then
            raise Constraint_Error;
         end if;

         Next (Position);
      end loop;

      declare
         Aux : constant Attribute
           := (Ada.Finalization.Controlled with
                 Namespace_URI  =>
                   League.Strings.Internals.Get_Shared (Namespace_URI),
                 Local_Name     =>
                   League.Strings.Internals.Get_Shared (Local_Name),
                 Qualified_Name =>
                   League.Strings.Internals.Get_Shared (Qualified_Name),
                 Value          =>
                   League.Strings.Internals.Get_Shared (Value));

      begin
         Matreshka.Internals.Strings.Reference (Aux.Namespace_URI);
         Matreshka.Internals.Strings.Reference (Aux.Local_Name);
         Matreshka.Internals.Strings.Reference (Aux.Qualified_Name);
         Matreshka.Internals.Strings.Reference (Aux.Value);

         Self.Attributes.Append (Aux);
      end;
   end Append;

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out SAX_Attributes'Class) is
   begin
      Self.Attributes.Clear;
   end Clear;

end Matreshka.SAX.Attributes.Internals;
