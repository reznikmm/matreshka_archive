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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.DG.Holders.Close_Paths;
with AMF.DG.Holders.Cubic_Curve_Tos;
with AMF.DG.Holders.Elliptical_Arc_Tos;
with AMF.DG.Holders.Gradient_Stops;
with AMF.DG.Holders.Line_Tos;
with AMF.DG.Holders.Matrixs;
with AMF.DG.Holders.Move_Tos;
with AMF.DG.Holders.Path_Commands;
with AMF.DG.Holders.Quadratic_Curve_Tos;
with AMF.DG.Holders.Rotates;
with AMF.DG.Holders.Scales;
with AMF.DG.Holders.Skews;
with AMF.DG.Holders.Transforms;
with AMF.DG.Holders.Translates;

package body AMF.DG.Holders is

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Close_Path is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Close_Paths.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Close_Paths.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Cubic_Curve_To is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Cubic_Curve_Tos.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Cubic_Curve_Tos.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Elliptical_Arc_To is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Elliptical_Arc_Tos.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Elliptical_Arc_Tos.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Gradient_Stop is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Gradient_Stops.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Gradient_Stops.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Line_To is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Line_Tos.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Line_Tos.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Matrix is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Matrixs.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Matrixs.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Move_To is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Move_Tos.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Move_Tos.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Path_Command is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Path_Commands.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Path_Commands.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Quadratic_Curve_To is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Quadratic_Curve_Tos.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Quadratic_Curve_Tos.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Rotate is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Rotates.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Rotates.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Scale is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Scales.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Scales.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Skew is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Skews.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Skews.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Transform is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Transforms.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Transforms.Element (Holder));
      end if;
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Holder : League.Holders.Holder)
       return AMF.DG.Optional_DG_Translate is
   begin
      if not League.Holders.Has_Tag
              (Holder, AMF.DG.Holders.Translates.Value_Tag)
      then
         raise Constraint_Error;
      end if;

      if League.Holders.Is_Empty (Holder) then
         return (Is_Empty => True);

      else
         return (False, AMF.DG.Holders.Translates.Element (Holder));
      end if;
   end Element;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Close_Path)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Close_Paths.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Close_Paths.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Cubic_Curve_To)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Cubic_Curve_Tos.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Cubic_Curve_Tos.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Elliptical_Arc_To)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Elliptical_Arc_Tos.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Elliptical_Arc_Tos.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Gradient_Stop)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Gradient_Stops.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Gradient_Stops.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Line_To)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Line_Tos.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Line_Tos.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Matrix)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Matrixs.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Matrixs.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Move_To)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Move_Tos.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Move_Tos.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Path_Command)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Path_Commands.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Path_Commands.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Quadratic_Curve_To)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Quadratic_Curve_Tos.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Quadratic_Curve_Tos.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Rotate)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Rotates.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Rotates.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Scale)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Scales.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Scales.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Skew)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Skews.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Skews.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Transform)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Transforms.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Transforms.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Element : AMF.DG.Optional_DG_Translate)
       return League.Holders.Holder is
   begin
      return Result : League.Holders.Holder do
         League.Holders.Set_Tag
          (Result, AMF.DG.Holders.Translates.Value_Tag);

         if not Element.Is_Empty then
            AMF.DG.Holders.Translates.Replace_Element
             (Result, Element.Value);
         end if;
      end return;
   end To_Holder;

end AMF.DG.Holders;
