------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                              Tools Component                             --
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

with League.Text_Codecs;
with Ada.Streams;
with Ada.Wide_Wide_Text_IO;

package body Nodes is
   
   --------------
   -- Add_Rule --
   --------------
   
   procedure Add_Rule
     (RegExp : League.Strings.Universal_String;
      Action : League.Strings.Universal_String)
   is
      procedure Add
        (Name      : League.Strings.Universal_String;
         Condition : in out Start_Condition);
      
      procedure Add_Inclusive
        (Name      : League.Strings.Universal_String;
         Condition : in out Start_Condition);
      
      procedure Each_Inclusive (Cursor : Start_Condition_Maps.Cursor);
      
      Text  : League.Strings.Universal_String := RegExp;
      To    : constant Natural := Text.Index ('>');
      Index : Positive;
      
      ---------
      -- Add --
      ---------
      
      procedure Add
        (Name      : League.Strings.Universal_String;
         Condition : in out Start_Condition) is
      begin
         Condition.Rules.Append (Index);
      end Add;
      
      -------------------
      -- Add_Inclusive --
      -------------------
      
      procedure Add_Inclusive
        (Name      : League.Strings.Universal_String;
         Condition : in out Start_Condition) is
      begin
         if not Condition.Exclusive then
            Add (Name, Condition);
         end if;
      end Add_Inclusive;
      
      --------------------
      -- Each_Inclusive --
      --------------------
      
      procedure Each_Inclusive (Cursor : Start_Condition_Maps.Cursor) is
      begin
         Conditions.Update_Element (Cursor, Add_Inclusive'Access);
      end Each_Inclusive;
   begin
      Actions.Append (Action);
      Index := Actions.Length;
      
      if Text.Starts_With ("<") then
         declare
            Conditions : constant League.Strings.Universal_String :=
              Text.Slice (2, To - 1);
            List : constant League.String_Vectors.Universal_String_Vector := 
              Conditions.Split (',');
         begin
            for J in 1 .. List.Length loop
               declare
                  Condition : constant League.Strings.Universal_String :=
                    List.Element (J);
                  Cursor : constant Start_Condition_Maps.Cursor :=
                    Nodes.Conditions.Find (Condition);
               begin
                  if Start_Condition_Maps.Has_Element (Cursor) then
                     Nodes.Conditions.Update_Element (Cursor, Add'Access);
                  else
                     Ada.Wide_Wide_Text_IO.Put_Line
                       ("No such start condition: " &
                          Condition.To_Wide_Wide_String);
                  end if;
               end;
            end loop;
         end;
      else
         Conditions.Iterate (Each_Inclusive'Access);
      end if;
      
      Rules.Append (Text);
   end Add_Rule;
   
   --------------------------
   -- Add_Start_Conditions --
   --------------------------
   
   procedure Add_Start_Conditions
     (List      : League.String_Vectors.Universal_String_Vector;
      Exclusive : Boolean) is
   begin
      for J in 1 .. List.Length loop
         Conditions.Insert (List.Element (J), (Exclusive, others => <>));
      end loop;
   end Add_Start_Conditions;
   
   function To_Node (Value : String) return Node is
      Raw : Ada.Streams.Stream_Element_Array (1 .. Value'Length);
      for Raw'Address use Value'Address;
      Unicode : constant League.Strings.Universal_String :=
        League.Text_Codecs.Codec_For_Application_Locale.Decode (Raw);
   begin
      return (Text, Unicode);
   end To_Node;
   
end Nodes;
