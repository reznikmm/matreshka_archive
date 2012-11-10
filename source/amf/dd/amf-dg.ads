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

package AMF.DG is

   pragma Preelaborate;

   type Set_Of_DG_Gradient_Stop is new Integer;

   type Sequence_Of_DG_Transform is new Integer;

   type Sequence_Of_Path_Command is new Integer;

   type DG_Close_Path is null record;

   type Optional_DG_Close_Path (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Close_Path;
      end case;
   end record;

   type DG_Cubic_Curve_To is null record;

   type Optional_DG_Cubic_Curve_To (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Cubic_Curve_To;
      end case;
   end record;

   type DG_Elliptical_Arc_To is null record;

   type Optional_DG_Elliptical_Arc_To (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Elliptical_Arc_To;
      end case;
   end record;

   type DG_Gradient_Stop is null record;

   type Optional_DG_Gradient_Stop (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Gradient_Stop;
      end case;
   end record;

   type DG_Line_To is null record;

   type Optional_DG_Line_To (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Line_To;
      end case;
   end record;

   type DG_Matrix is null record;

   type Optional_DG_Matrix (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Matrix;
      end case;
   end record;

   type DG_Move_To is null record;

   type Optional_DG_Move_To (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Move_To;
      end case;
   end record;

   type DG_Path_Command is null record;

   type Optional_DG_Path_Command (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Path_Command;
      end case;
   end record;

   type DG_Quadratic_Curve_To is null record;

   type Optional_DG_Quadratic_Curve_To (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Quadratic_Curve_To;
      end case;
   end record;

   type DG_Rotate is null record;

   type Optional_DG_Rotate (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Rotate;
      end case;
   end record;

   type DG_Scale is null record;

   type Optional_DG_Scale (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Scale;
      end case;
   end record;

   type DG_XXX is null record;

   type Optional_DG_XXX (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_XXX;
      end case;
   end record;

   type DG_Skew is null record;

   type Optional_DG_Skew (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Skew;
      end case;
   end record;

   type DG_Transform is null record;

   type Optional_DG_Transform (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Transform;
      end case;
   end record;

   type DG_Translate is null record;

   type Optional_DG_Translate (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : DG_Translate;
      end case;
   end record;

end AMF.DG;
