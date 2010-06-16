------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
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
with Matreshka.Internals.Unicode;

package Matreshka.Internals.Regexps.Engine is

   pragma Preelaborate;

   type Instruction_Kinds is
     (None,
      Split,
      I_Terminate,
      Any_Code_Point,
      Code_Point,
      Code_Range,
      I_Property,
      Match,
      Save,
      I_Anchor);

   type Instruction (Kind : Instruction_Kinds := None) is record
      case Kind is
         when None =>
            null;

         when Match =>
            null;

         when others =>
            Next : Natural;

            case Kind is
               when None =>
                  null;

               when I_Terminate =>
                  null;

               when Match =>
                  null;

               when Any_Code_Point =>
                  null;

               when Split =>
                  Another : Natural;

               when Code_Point =>
                  Code : Matreshka.Internals.Unicode.Code_Point;

               when Code_Range =>
                  Negate : Boolean;
                  Low    : Matreshka.Internals.Unicode.Code_Point;
                  High   : Matreshka.Internals.Unicode.Code_Point;

               when I_Property =>
                  Value    : Property_Value;
                  Negative : Boolean;

               when Save =>
                  Slot  : Natural;
                  Start : Boolean;

               when I_Anchor =>
                  Start_Of_Line : Boolean;
                  End_Of_Line   : Boolean;
            end case;
      end case;
   end record;

   type Instruction_Array is array (Positive range <>) of Instruction;

   type Program (Size : Natural) is record
      Instructions : Instruction_Array (1 .. Size);
      Captures     : Natural;
   end record;

end Matreshka.Internals.Regexps.Engine;
