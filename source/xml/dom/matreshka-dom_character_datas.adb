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
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Matreshka.DOM_Character_Datas is

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize
       (Self     : not null access Character_Data_Node'Class;
        Document : not null Matreshka.DOM_Nodes.Document_Access;
        Data     : League.Strings.Universal_String) is
      begin
         Matreshka.DOM_Nodes.Constructors.Initialize (Self, Document);
         Self.Data := Data;
      end Initialize;

   end Constructors;

   --------------
   -- Get_Data --
   --------------

   overriding function Get_Data
    (Self : not null access constant Character_Data_Node)
       return League.Strings.Universal_String is
   begin
      return Self.Data;
   end Get_Data;

   ------------------
   -- Replace_Data --
   ------------------

   overriding procedure Replace_Data
    (Self   : not null access Character_Data_Node;
     Offset : Positive;
     Count  : Natural;
     Arg    : League.Strings.Universal_String) is
   begin
      if Offset <= Self.Data.Length then
         --  Position of first character of the replaced slice is inside
         --  string. Position of last character of replaced slice can't be
         --  greater than length of the string.

         Self.Data.Replace
          (Offset,
           Natural'Min (Offset + Count - 1, Self.Data.Length),
           Arg);

      elsif Offset = Self.Data.Length + 1 then
         --  Position of first character points to first position after
         --  position of last character of the string. Specified new data need
         --  to be appended to the string.

         Self.Data.Append (Arg);

      else
         --  Position of the first character points outside of current data,
         --  DOM_INDEX_SIZE_ERR need to be raised.

         Self.Raise_Index_Size_Error;
      end if;
   end Replace_Data;

   --------------
   -- Set_Data --
   --------------

   overriding procedure Set_Data
    (Self      : not null access Character_Data_Node;
     New_Value : League.Strings.Universal_String) is
   begin
      Self.Data := New_Value;
   end Set_Data;

end Matreshka.DOM_Character_Datas;
