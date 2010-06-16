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

package body Matreshka.StAX.Attributes is

   ------------
   -- Create --
   ------------

   function Create
    (Qualified_Name : League.Strings.Universal_String;
     Value          : League.Strings.Universal_String)
       return StAX_Attribute is
   begin
      raise Program_Error;
      return X : StAX_Attribute;
   end Create;

   ------------
   -- Create --
   ------------

   function Create
    (Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String;
     Value         : League.Strings.Universal_String)
       return StAX_Attribute is
   begin
      raise Program_Error;
      return X : StAX_Attribute;
   end Create;

   ----------------
   -- Is_Default --
   ----------------

   function Is_Default (Self : StAX_Attribute'Class) return Boolean is
   begin
      raise Program_Error;
      return False;
   end Is_Default;

   ----------------
   -- Local_Name --
   ----------------

   function Local_Name (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice is
   begin
      raise Program_Error;
      return X : League.Strings.Universal_Slice;
   end Local_Name;

   -------------------
   -- Namespace_URI --
   -------------------

   function Namespace_URI (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice is
   begin
      raise Program_Error;
      return X : League.Strings.Universal_Slice;
   end Namespace_URI;

   ------------
   -- Prefix --
   ------------

   function Prefix (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice is
   begin
      raise Program_Error;
      return X : League.Strings.Universal_Slice;
   end Prefix;

   --------------------
   -- Qualified_Name --
   --------------------

   function Qualified_Name (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice is
   begin
      raise Program_Error;
      return X : League.Strings.Universal_Slice;
   end Qualified_Name;

   -----------
   -- Value --
   -----------

   function Value (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice is
   begin
      raise Program_Error;
      return X : League.Strings.Universal_Slice;
   end Value;

end Matreshka.StAX.Attributes;
