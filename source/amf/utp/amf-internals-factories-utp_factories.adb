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
with AMF.Internals.Elements;
with AMF.Internals.Extents;
with AMF.Internals.Helpers;
with AMF.Internals.Links;
with AMF.Internals.Listener_Registry;
with AMF.Internals.Tables.Utp_Constructors;
with AMF.Internals.Tables.Utp_Metamodel;
with AMF.Utp.Holders.Verdicts;

package body AMF.Internals.Factories.Utp_Factories is

   None_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("none");
   Pass_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("pass");
   Inconclusive_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("inconclusive");
   Fail_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("fail");
   Error_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("error");

   function Convert_Duration_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Duration_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_Time_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Time_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   function Convert_Timezone_To_String
    (Value : League.Holders.Holder) return League.Strings.Universal_String
       is separate;

   function Create_Timezone_From_String
    (Image : League.Strings.Universal_String) return League.Holders.Holder
       is separate;

   -----------------
   -- Constructor --
   -----------------

   function Constructor
    (Extent : AMF.Internals.AMF_Extent)
       return not null AMF.Factories.Factory_Access is
   begin
      return new Utp_Factory'(Extent => Extent);
   end Constructor;

   -----------------------
   -- Convert_To_String --
   -----------------------

   overriding function Convert_To_String
    (Self      : not null access Utp_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Duration then
         return Convert_Duration_To_String (Value);

      elsif DT = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Time then
         return Convert_Time_To_String (Value);

      elsif DT = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Timezone then
         return Convert_Timezone_To_String (Value);

      elsif DT = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Verdict then
         declare
            Item : constant AMF.Utp.Utp_Verdict
              := AMF.Utp.Holders.Verdicts.Element (Value);

         begin
            case Item is
               when AMF.Utp.None =>
                  return None_Image;

               when AMF.Utp.Pass =>
                  return Pass_Image;

               when AMF.Utp.Inconclusive =>
                  return Inconclusive_Image;

               when AMF.Utp.Fail =>
                  return Fail_Image;

               when AMF.Utp.Error =>
                  return Error_Image;
            end case;
         end;

      else
         raise Program_Error;
      end if;
   end Convert_To_String;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access Utp_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access
   is
      pragma Unreferenced (Self);

      MC      : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Meta_Class.all).Element;
      Element : AMF.Internals.AMF_Element;

   begin
      if MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Coding_Rule then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Coding_Rule;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Data_Partition then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Data_Partition;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Data_Pool then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Data_Pool;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Data_Selector then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Data_Selector;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Default then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Default;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Default_Application then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Default_Application;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Determ_Alt then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Determ_Alt;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Finish_Action then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Finish_Action;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Get_Timezone_Action then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Get_Timezone_Action;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Literal_Any then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Literal_Any;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Literal_Any_Or_Null then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Literal_Any_Or_Null;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Log_Action then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Log_Action;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Managed_Element then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Managed_Element;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Read_Timer_Action then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Read_Timer_Action;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_SUT then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_SUT;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Set_Timezone_Action then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Set_Timezone_Action;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Start_Timer_Action then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Start_Timer_Action;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Stop_Timer_Action then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Stop_Timer_Action;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Case then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Test_Case;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Component then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Test_Component;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Context then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Test_Context;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Log then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Test_Log;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Log_Application then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Test_Log_Application;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Objective then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Test_Objective;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Suite then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Test_Suite;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Time_Out then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Time_Out;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Time_Out_Action then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Time_Out_Action;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Time_Out_Message then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Time_Out_Message;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Timer_Running_Action then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Timer_Running_Action;

      elsif MC = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Validation_Action then
         Element := AMF.Internals.Tables.Utp_Constructors.Create_Utp_Validation_Action;

      else
         raise Program_Error;
      end if;

      AMF.Internals.Extents.Internal_Append (Self.Extent, Element);
      AMF.Internals.Listener_Registry.Notify_Instance_Create
       (AMF.Internals.Helpers.To_Element (Element));

      return AMF.Internals.Helpers.To_Element (Element);
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   overriding function Create_From_String
    (Self      : not null access Utp_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder
   is
      pragma Unreferenced (Self);

      use type League.Strings.Universal_String;

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Duration then
         return Create_Duration_From_String (Image);

      elsif DT = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Time then
         return Create_Time_From_String (Image);

      elsif DT = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Timezone then
         return Create_Timezone_From_String (Image);

      elsif DT = AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Verdict then
         if Image = None_Image then
            return
              AMF.Utp.Holders.Verdicts.To_Holder
               (AMF.Utp.None);

         elsif Image = Pass_Image then
            return
              AMF.Utp.Holders.Verdicts.To_Holder
               (AMF.Utp.Pass);

         elsif Image = Inconclusive_Image then
            return
              AMF.Utp.Holders.Verdicts.To_Holder
               (AMF.Utp.Inconclusive);

         elsif Image = Fail_Image then
            return
              AMF.Utp.Holders.Verdicts.To_Holder
               (AMF.Utp.Fail);

         elsif Image = Error_Image then
            return
              AMF.Utp.Holders.Verdicts.To_Holder
               (AMF.Utp.Error);

         else
            raise Constraint_Error;
         end if;

      else
         raise Program_Error;
      end if;
   end Create_From_String;

   -----------------
   -- Create_Link --
   -----------------

   overriding function Create_Link
    (Self           : not null access Utp_Factory;
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
    (Self : not null access constant Utp_Factory)
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
           (AMF.Internals.Tables.Utp_Metamodel.MM_Utp_Utp));
   end Get_Package;

end AMF.Internals.Factories.Utp_Factories;
