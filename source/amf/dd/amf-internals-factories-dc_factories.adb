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
with AMF.DD.Holders.Alignment_Kinds;
with AMF.DD.Holders.Known_Colors;
with AMF.Internals.Elements;
with AMF.Internals.Helpers;
with AMF.Internals.Links;
with AMF.Internals.Tables.DC_Metamodel;

package body AMF.Internals.Factories.DC_Factories is

   Start_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("start");
   End_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("end");
   Center_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("center");

   Maroon_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("maroon");
   Red_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("red");
   Orange_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("orange");
   Yellow_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("yellow");
   Olive_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("olive");
   Purple_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("purple");
   Fuchsia_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("fuchsia");
   White_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("white");
   Lime_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("lime");
   Green_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("green");
   Navy_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("navy");
   Blue_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("blue");
   Aqua_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("aqua");
   Teal_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("teal");
   Black_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("black");
   Silver_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("silver");
   Gray_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("gray");

   function Convert_Boolean_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Boolean_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_Bounds_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Bounds_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_Color_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Color_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_Dimension_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Dimension_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_Integer_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Integer_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_Point_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Point_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_Real_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Real_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_String_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_String_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   -----------------
   -- Constructor --
   -----------------

   function Constructor
    (Extent : AMF.Internals.AMF_Extent)
       return not null AMF.Factories.Factory_Access is
   begin
      return new DC_Factory'(Extent => Extent);
   end Constructor;

   -----------------------
   -- Convert_To_String --
   -----------------------

   overriding function Convert_To_String
    (Self      : not null access DC_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Alignment_Kind then
         declare
            Item : constant AMF.DC.DC_Alignment_Kind
              := AMF.DD.Holders.Alignment_Kinds.Element (Value);

         begin
            case Item is
               when AMF.DC.Align_Start =>
                  return Start_Img;

               when AMF.DC.Align_End =>
                  return End_Img;

               when AMF.DC.Align_Center =>
                  return Center_Img;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Boolean then
         return Convert_Boolean_To_String (Value);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Bounds then
         return Convert_Bounds_To_String (Value);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Color then
         return Convert_Color_To_String (Value);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Dimension then
         return Convert_Dimension_To_String (Value);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Integer then
         return Convert_Integer_To_String (Value);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Known_Color then
         declare
            Item : constant AMF.DC.DC_Known_Color
              := AMF.DD.Holders.Known_Colors.Element (Value);

         begin
            case Item is
               when AMF.DC.Maroon =>
                  return Maroon_Img;

               when AMF.DC.Red =>
                  return Red_Img;

               when AMF.DC.Orange =>
                  return Orange_Img;

               when AMF.DC.Yellow =>
                  return Yellow_Img;

               when AMF.DC.Olive =>
                  return Olive_Img;

               when AMF.DC.Purple =>
                  return Purple_Img;

               when AMF.DC.Fuchsia =>
                  return Fuchsia_Img;

               when AMF.DC.White =>
                  return White_Img;

               when AMF.DC.Lime =>
                  return Lime_Img;

               when AMF.DC.Green =>
                  return Green_Img;

               when AMF.DC.Navy =>
                  return Navy_Img;

               when AMF.DC.Blue =>
                  return Blue_Img;

               when AMF.DC.Aqua =>
                  return Aqua_Img;

               when AMF.DC.Teal =>
                  return Teal_Img;

               when AMF.DC.Black =>
                  return Black_Img;

               when AMF.DC.Silver =>
                  return Silver_Img;

               when AMF.DC.Gray =>
                  return Gray_Img;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Point then
         return Convert_Point_To_String (Value);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Real then
         return Convert_Real_To_String (Value);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_String then
         return Convert_String_To_String (Value);

      else
         raise Program_Error;
      end if;
   end Convert_To_String;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access DC_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access is
   begin
      raise Program_Error;
      return null;
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   overriding function Create_From_String
    (Self      : not null access DC_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder
   is
      pragma Unreferenced (Self);

      use type League.Strings.Universal_String;

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Alignment_Kind then
         if Image = Start_Img then
            return
              AMF.DD.Holders.Alignment_Kinds.To_Holder
               (AMF.DC.Align_Start);

         elsif Image = End_Img then
            return
              AMF.DD.Holders.Alignment_Kinds.To_Holder
               (AMF.DC.Align_End);

         elsif Image = Center_Img then
            return
              AMF.DD.Holders.Alignment_Kinds.To_Holder
               (AMF.DC.Align_Center);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Boolean then
         return Create_Boolean_From_String (Image);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Bounds then
         return Create_Bounds_From_String (Image);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Color then
         return Create_Color_From_String (Image);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Dimension then
         return Create_Dimension_From_String (Image);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Integer then
         return Create_Integer_From_String (Image);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Known_Color then
         if Image = Maroon_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Maroon);

         elsif Image = Red_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Red);

         elsif Image = Orange_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Orange);

         elsif Image = Yellow_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Yellow);

         elsif Image = Olive_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Olive);

         elsif Image = Purple_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Purple);

         elsif Image = Fuchsia_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Fuchsia);

         elsif Image = White_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.White);

         elsif Image = Lime_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Lime);

         elsif Image = Green_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Green);

         elsif Image = Navy_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Navy);

         elsif Image = Blue_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Blue);

         elsif Image = Aqua_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Aqua);

         elsif Image = Teal_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Teal);

         elsif Image = Black_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Black);

         elsif Image = Silver_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Silver);

         elsif Image = Gray_Img then
            return
              AMF.DD.Holders.Known_Colors.To_Holder
               (AMF.DC.Gray);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Point then
         return Create_Point_From_String (Image);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_Real then
         return Create_Real_From_String (Image);

      elsif DT = AMF.Internals.Tables.DC_Metamodel.MC_DC_String then
         return Create_String_From_String (Image);

      else
         raise Program_Error;
      end if;
   end Create_From_String;

   -----------------
   -- Create_Link --
   -----------------

   overriding function Create_Link
    (Self           : not null access DC_Factory;
     Association    :
       not null access AMF.CMOF.Associations.CMOF_Association'Class;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access)
       return not null AMF.Links.Link_Access
   is
      pragma Unreferenced (Self);

   begin
      return
        AMF.Internals.Links.Proxy
         (AMF.Internals.Links.Create_Link
           (AMF.Internals.Elements.Element_Base'Class
             (Association.all).Element,
            AMF.Internals.Helpers.To_Element (First_Element),
            AMF.Internals.Helpers.To_Element (Second_Element)));
   end Create_Link;

   -----------------
   -- Get_Package --
   -----------------

   overriding function Get_Package
    (Self : not null access constant DC_Factory)
       return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package
   is
      pragma Unreferenced (Self);

   begin
      return Result : AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package do
         Result.Add (Get_Package);
      end return;
   end Get_Package;

   -----------------
   -- Get_Package --
   -----------------

   function Get_Package return not null AMF.CMOF.Packages.CMOF_Package_Access is
   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.DC_Metamodel.MM_DC_DC));
   end Get_Package;

end AMF.Internals.Factories.DC_Factories;
