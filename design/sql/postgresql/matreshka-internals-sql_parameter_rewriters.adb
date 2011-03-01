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
with Ada.Characters.Wide_Wide_Latin_1;

package body Matreshka.Internals.SQL_Parameter_Rewriters is

   function Image (Item : Positive) return League.Strings.Universal_String;
   --  Returns text representation of the specified integer number. Text
   --  representation doesn't contain any leading or trailing spaces.

   -----------
   -- Image --
   -----------

   function Image (Item : Positive) return League.Strings.Universal_String is
      Aux : constant Wide_Wide_String := Integer'Wide_Wide_Image (Item);

   begin
      return
        League.Strings.To_Universal_String (Aux (Aux'First + 1 .. Aux'Last));
   end Image;

   --------------------------
   -- Database_Placeholder --
   --------------------------

   not overriding procedure Database_Placeholder
    (Self        : Parameter_Rewriter;
     Name        : League.Strings.Universal_String;
     Number      : Positive;
     Placeholder : out League.Strings.Universal_String;
     Parameters  : in out SQL_Parameter_Sets.Parameter_Set)
   is
      use type League.Strings.Universal_String;

   begin
      if not Parameters.Has_Parameter (Name) then
         --  Parameter is new, register it.

         Parameters.Append (Name);
      end if;

      Placeholder := '$' & Image (Parameters.Index (Name));
   end Database_Placeholder;

   -------------
   -- Rewrite --
   -------------

   procedure Rewrite
    (Self       : Parameter_Rewriter'Class;
     Source     : League.Strings.Universal_String;
     Rewritten  : out League.Strings.Universal_String;
     Parameters : out SQL_Parameter_Sets.Parameter_Set)
   is
      Placeholder : League.Strings.Universal_String;
      Number      : Positive := 1;
      Index       : Positive := 1;
      First       : Positive;

   begin
      Rewritten.Clear;
      Parameters.Clear;

      while Index <= Source.Length loop
         case Source.Element (Index).To_Wide_Wide_Character is
            when ':' =>
               --  Parameter placeholder.

               First := Index;
               Index := Index + 1;

               --  First character must be ID_Start.

               if Index <= Source.Length
                 and then Source.Element (Index).Is_ID_Start
               then
                  Index := Index + 1;

                  --  And others are ID_Continue.

                  while Index <= Source.Length loop
                     exit when not Source.Element (Index).Is_ID_Continue;

                     Index := Index + 1;
                  end loop;

                  Index := Index - 1;

                  --  Replace generic parameter placeholder by database
                  --  specific one.

                  Self.Database_Placeholder
                   (Source.Slice (First, Index).To_Casefold,
                    Number,
                    Placeholder,
                    Parameters);
                  Rewritten.Append (Placeholder);
                  Number := Number + 1;

               else
                  raise Program_Error;
               end if;

            when ''' =>
               --  String literal.

               Rewritten.Append (Source.Element (Index));

               Index := Index + 1;

	       --  Copy all characters till end of statement or single
               --  apostrophe character (two sequential apostrophe characters
               --  is escape sequence in SQL) is reached.

               while Index <= Source.Length loop
                  Rewritten.Append (Source.Element (Index));

                  exit when Source.Element (Index).To_Wide_Wide_Character = '''
                    and (Index = Source.Length
                           or else Source.Element
                                    (Index + 1).To_Wide_Wide_Character /= ''');

                  Index := Index + 1;
               end loop;

            when '-' =>
               Rewritten.Append (Source.Element (Index));

               --  Comment starts from to minus signs and ends by end of line.

               if Index < Source.Length
                 and then Source.Element (Index + 1).To_Wide_Wide_Character
                            = '-'
               then
                  Index := Index + 1;
                  Rewritten.Append (Source.Element (Index));

                  Index := Index + 1;

                  while Index <= Source.Length loop
                     Rewritten.Append (Source.Element (Index));

                     exit when Source.Element (Index).To_Wide_Wide_Character
                                 = Ada.Characters.Wide_Wide_Latin_1.CR
                       or Source.Element (Index).To_Wide_Wide_Character
                            = Ada.Characters.Wide_Wide_Latin_1.LF;

                     Index := Index + 1;
                  end loop;
               end if;

            when others =>
               Rewritten.Append (Source.Element (Index));
         end case;

         Index := Index + 1;
      end loop;
   end Rewrite;

end Matreshka.Internals.SQL_Parameter_Rewriters;
