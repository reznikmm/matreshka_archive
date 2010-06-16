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
with Ada.Containers.Vectors;
with Ada.Strings.Wide_Unbounded;

with Asis;

package Scanner_Extractor is

   package Unbounded_Wide_String_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           Ada.Strings.Wide_Unbounded.Unbounded_Wide_String,
           Ada.Strings.Wide_Unbounded."=");

   type Choice_Information (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Choice : Positive;
            Line   : Positive;
            File   : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
            Text   : Unbounded_Wide_String_Vectors.Vector;
      end case;
   end record;

   package Choice_Vectors is
     new Ada.Containers.Vectors (Positive, Choice_Information);

   type State_Constant_Information is record
      Name  : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
      Value : Integer;
   end record;

   package State_Constants_Vectors is
     new Ada.Containers.Vectors (Positive, State_Constant_Information);

   package Integer_Vectors is
     new Ada.Containers.Vectors (Natural, Integer);

   type Plane_Information is record
      Number : Natural;
      Values : Integer_Vectors.Vector;
   end record;

   type Reference_Information is record
      Number    : Natural;
      Reference : Natural;
   end record;

   package Plane_Vectors is
     new Ada.Containers.Vectors (Positive, Plane_Information);

   package Reference_Vectors is
     new Ada.Containers.Vectors (Positive, Reference_Information);

   YY_End_Of_Buffer  : Integer := -1;
   YY_Jam_State      : Integer := -1;
   YY_First_Template : Integer := -1;
   State_Constants   : State_Constants_Vectors.Vector;
   YY_EC_Planes      : Plane_Vectors.Vector;
   YY_EC_Base        : Reference_Vectors.Vector;
   YY_EC_Base_Others : Natural;
   YY_Accept         : Integer_Vectors.Vector;
   YY_Meta           : Integer_Vectors.Vector;
   YY_Base           : Integer_Vectors.Vector;
   YY_Def            : Integer_Vectors.Vector;
   YY_Nxt            : Integer_Vectors.Vector;
   YY_Chk            : Integer_Vectors.Vector;
   Choices           : Choice_Vectors.Vector;

   procedure Extract (Element : Asis.Element);

end Scanner_Extractor;
