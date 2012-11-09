------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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

package AMF.DC is

   pragma Preelaborate;

   type DC_Alignment_Kind is
    (Align_Start,
     Align_End,
     Align_Center);

   type Optional_DC_Alignment_Kind (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DC_Alignment_Kind;
      end case;
   end record;

   type DC_Known_Color is
    (Maroon,
     Red,
     Orange,
     Yellow,
     Olive,
     Purple,
     Fuchsia,
     White,
     Lime,
     Green,
     Navy,
     Blue,
     Aqua,
     Teal,
     Black,
     Silver,
     Gray);

   type Optional_DC_Known_Color (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DC_Known_Color;
      end case;
   end record;

   type DC_Bounds is record
      X      : AMF.Real := 0.0;
      Y      : AMF.Real := 0.0;
      Width  : AMF.Real := 0.0;
      Height : AMF.Real := 0.0;
   end record;

   type Optional_DC_Bounds (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DC_Bounds;
      end case;
   end record;

   type DC_Color is record
      Red   : Integer;
      Green : Integer;
      Blue  : Integer;
   end record;

   type Optional_DC_Color (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DC_Color;
      end case;
   end record;

   type DC_Dimension is record
      Width  : AMF.Real := 0.0;
      Height : AMF.Real := 0.0;
   end record;

   type DC_Point is record
      X : AMF.Real := 0.0;
      Y : AMF.Real := 0.0;
   end record;

   type Sequence_OF_DC_Point is null record;

end AMF.DC;
