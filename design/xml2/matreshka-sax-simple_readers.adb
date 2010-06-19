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
with League.Strings.Internals;
with Matreshka.SAX.Readers;
with Matreshka.SAX.Simple_Readers.Parser;
with Matreshka.SAX.Simple_Readers.Scanner;

package body Matreshka.SAX.Simple_Readers is

   use Matreshka.SAX.Readers;

   ---------------------
   -- Content_Handler --
   ---------------------

   overriding function Content_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Content_Handler_Access is
   begin
      if Self.Content_Handler = Default_Handler'Access then
         return null;

      else
         return Self.Content_Handler;
      end if;
   end Content_Handler;

   ------------------
   -- Decl_Handler --
   ------------------

   overriding function Decl_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Decl_Handler_Access is
   begin
      if Self.Decl_Handler = Default_Handler'Access then
         return null;

      else
         return Self.Decl_Handler;
      end if;
   end Decl_Handler;

   -----------------
   -- DTD_Handler --
   -----------------

   overriding function DTD_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_DTD_Handler_Access is
   begin
      if Self.DTD_Handler = Default_Handler'Access then
         return null;

      else
         return Self.DTD_Handler;
      end if;
   end DTD_Handler;

   -------------------
   -- Error_Handler --
   -------------------

   overriding function Error_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Error_Handler_Access is
   begin
      if Self.Error_Handler = Default_Handler'Access then
         return null;

      else
         return Self.Error_Handler;
      end if;
   end Error_Handler;

   ----------
   -- Hash --
   ----------

   function Hash
    (Item : League.Strings.Universal_String) return Ada.Containers.Hash_Type
   is
      pragma Assert
       (Ada.Containers.Hash_Type'Modulus = League.Strings.Hash_Type'Modulus);
      --  This implementation assume both types are modular and have same
      --  modulus.

   begin
      return Ada.Containers.Hash_Type (Item.Hash);
   end Hash;

   ---------------------
   -- Lexical_Handler --
   ---------------------

   overriding function Lexical_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Lexical_Handler_Access is
   begin
      if Self.Lexical_Handler = Default_Handler'Access then
         return null;

      else
         return Self.Lexical_Handler;
      end if;
   end Lexical_Handler;

   -----------
   -- Parse --
   -----------

   procedure Parse
    (Self : not null access SAX_Simple_Reader;
     Data : League.Strings.Universal_String) is
   begin
      Self.Scanner_State.Data := League.Strings.Internals.Get_Shared (Data);
      Parser.YYParse (Self);
   end Parse;

   -------------------------
   -- Set_Content_Handler --
   -------------------------

   overriding procedure Set_Content_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Content_Handler_Access) is
   begin
      if Handler = null then
         Self.Content_Handler := Default_Handler'Access;

      else
         Self.Content_Handler := Handler;
      end if;
   end Set_Content_Handler;

   ----------------------
   -- Set_Decl_Handler --
   ----------------------

   overriding procedure Set_Decl_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Decl_Handler_Access) is
   begin
      if Handler = null then
         Self.Decl_Handler := Default_Handler'Access;

      else
         Self.Decl_Handler := Handler;
      end if;
   end Set_Decl_Handler;

   ---------------------
   -- Set_DTD_Handler --
   ---------------------

   overriding procedure Set_DTD_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_DTD_Handler_Access) is
   begin
      if Handler = null then
         Self.DTD_Handler := Default_Handler'Access;

      else
         Self.DTD_Handler := Handler;
      end if;
   end Set_DTD_Handler;

   -----------------------
   -- Set_Error_Handler --
   -----------------------

   overriding procedure Set_Error_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Error_Handler_Access) is
   begin
      if Handler = null then
         Self.Error_Handler := Default_Handler'Access;

      else
         Self.Error_Handler := Handler;
      end if;
   end Set_Error_Handler;

   -------------------------
   -- Set_Lexical_Handler --
   -------------------------

   overriding procedure Set_Lexical_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Lexical_Handler_Access) is
   begin
      if Handler = null then
         Self.Lexical_Handler := Default_Handler'Access;

      else
         Self.Lexical_Handler := Handler;
      end if;
   end Set_Lexical_Handler;

end Matreshka.SAX.Simple_Readers;
