------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
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
with Scanner_Extractor;
with Scanner_Utilities;

package body Scanner_Analyzer is

   use Scanner_Extractor;
   use Scanner_Utilities;

   procedure Set_0000_Class_To_FFFE_Class;
   --  Sets meta class of 16#0000# code point to meta class of 16#FFFE# code
   --  point.

   -------------
   -- Analyze --
   -------------

   procedure Analyze is
   begin
      case Mode is
         when Regexp =>
            null;

         when XML =>
            Set_0000_Class_To_FFFE_Class;
      end case;
   end Analyze;

   ----------------------------------
   -- Set_0000_Class_To_FFFE_Class --
   ----------------------------------

   procedure Set_0000_Class_To_FFFE_Class is

      procedure Lookup (Position : Plane_Vectors.Cursor);
      --  Searchs 16#00FF# plane and extract meta class.

      procedure Modify (Position : Plane_Vectors.Cursor);
      --  Searchs 16#0000# plane and modify meta class.

      Meta_Class : Integer := 0;

      ------------
      -- Lookup --
      ------------

      procedure Lookup (Position : Plane_Vectors.Cursor) is
         Plane : constant Plane_Information
           := Plane_Vectors.Element (Position);

      begin
         if Plane.Number = 16#00FF# then
            Meta_Class := Plane.Values.Element (16#FE#);
         end if;
      end Lookup;

      ------------
      -- Modify --
      ------------

      procedure Modify (Position : Plane_Vectors.Cursor) is
         Plane : Plane_Information := Plane_Vectors.Element (Position);

      begin
         if Plane.Number = 16#0000# then
            Plane.Values.Replace_Element (16#00#, Meta_Class);
            YY_EC_Planes.Replace_Element (Position, Plane);
         end if;
      end Modify;

   begin
      YY_EC_Planes.Iterate (Lookup'Access);

      if Meta_Class = 0 then
         raise Program_Error;
      end if;

      YY_EC_Planes.Iterate (Modify'Access);
   end Set_0000_Class_To_FFFE_Class;

end Scanner_Analyzer;
