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
with AMF.Internals.Tables.UMLDI_Metamodel;
with AMF.Internals.Tables.UML_Constructors;
with AMF.UMLDI.Holders.UML_Association_Or_Connector_Or_Link_Shape_Kinds;
with AMF.UMLDI.Holders.UML_Inherited_State_Border_Kinds;
with AMF.UMLDI.Holders.UML_Interaction_Diagram_Kinds;
with AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds;
with AMF.UMLDI.Holders.UML_Navigability_Notation_Kinds;

package body AMF.Internals.Factories.UMLDI_Factories is

   Diamond_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("diamond");
   Triangle_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("triangle");

   Dashed_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("dashed");
   Gray_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("gray");

   Communication_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("communication");
   Overview_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("overview");
   Sequence_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("sequence");
   Table_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("table");
   Timing_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("timing");

   Constraint_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("constraint");
   Diagram_Identifier_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("diagramIdentifier");
   Generated_Instance_Name_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("generatedInstanceName");
   Lifeline_Class_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("lifelineClass");
   Lifeline_Instance_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("lifelineInstance");
   Message_Name_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("messageName");
   Message_Receiving_Class_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("messageReceivingClass");
   Message_Receiving_Instance_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("messageReceivingInstance");
   Message_Sending_Class_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("messageSendingClass");
   Message_Sending_Instance_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("messageSendingInstance");
   Other_End_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("otherEnd");
   Parameter_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("parameter");
   Return_Value_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("returnValue");
   Sequence_Number_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("sequenceNumber");
   Weak_Order_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("weakOrder");

   Always_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("always");
   Never_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("never");
   One_Way_Img : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("oneWay");

   -----------------
   -- Constructor --
   -----------------

   function Constructor
    (Extent : AMF.Internals.AMF_Extent)
       return not null AMF.Factories.Factory_Access is
   begin
      return new UMLDI_Factory'(Extent => Extent);
   end Constructor;

   -----------------------
   -- Convert_To_String --
   -----------------------

   overriding function Convert_To_String
    (Self      : not null access UMLDI_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Kind then
         declare
            Item : constant AMF.UMLDI.UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Kind
              := AMF.UMLDI.Holders.UML_Association_Or_Connector_Or_Link_Shape_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UMLDI.Diamond =>
                  return Diamond_Img;

               when AMF.UMLDI.Triangle =>
                  return Triangle_Img;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Inherited_State_Border_Kind then
         declare
            Item : constant AMF.UMLDI.UMLDI_UML_Inherited_State_Border_Kind
              := AMF.UMLDI.Holders.UML_Inherited_State_Border_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UMLDI.Dashed =>
                  return Dashed_Img;

               when AMF.UMLDI.Gray =>
                  return Gray_Img;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Interaction_Diagram_Kind then
         declare
            Item : constant AMF.UMLDI.UMLDI_UML_Interaction_Diagram_Kind
              := AMF.UMLDI.Holders.UML_Interaction_Diagram_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UMLDI.Communication =>
                  return Communication_Img;

               when AMF.UMLDI.Overview =>
                  return Overview_Img;

               when AMF.UMLDI.Sequence =>
                  return Sequence_Img;

               when AMF.UMLDI.Table =>
                  return Table_Img;

               when AMF.UMLDI.Timing =>
                  return Timing_Img;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Interaction_Table_Label_Kind then
         declare
            Item : constant AMF.UMLDI.UMLDI_UML_Interaction_Table_Label_Kind
              := AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UMLDI.Constraint =>
                  return Constraint_Img;

               when AMF.UMLDI.Diagram_Identifier =>
                  return Diagram_Identifier_Img;

               when AMF.UMLDI.Generated_Instance_Name =>
                  return Generated_Instance_Name_Img;

               when AMF.UMLDI.Lifeline_Class =>
                  return Lifeline_Class_Img;

               when AMF.UMLDI.Lifeline_Instance =>
                  return Lifeline_Instance_Img;

               when AMF.UMLDI.Message_Name =>
                  return Message_Name_Img;

               when AMF.UMLDI.Message_Receiving_Class =>
                  return Message_Receiving_Class_Img;

               when AMF.UMLDI.Message_Receiving_Instance =>
                  return Message_Receiving_Instance_Img;

               when AMF.UMLDI.Message_Sending_Class =>
                  return Message_Sending_Class_Img;

               when AMF.UMLDI.Message_Sending_Instance =>
                  return Message_Sending_Instance_Img;

               when AMF.UMLDI.Other_End =>
                  return Other_End_Img;

               when AMF.UMLDI.Parameter =>
                  return Parameter_Img;

               when AMF.UMLDI.Return_Value =>
                  return Return_Value_Img;

               when AMF.UMLDI.Sequence_Number =>
                  return Sequence_Number_Img;

               when AMF.UMLDI.Weak_Order =>
                  return Weak_Order_Img;
            end case;
         end;

      elsif DT = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Navigability_Notation_Kind then
         declare
            Item : constant AMF.UMLDI.UMLDI_UML_Navigability_Notation_Kind
              := AMF.UMLDI.Holders.UML_Navigability_Notation_Kinds.Element (Value);

         begin
            case Item is
               when AMF.UMLDI.Always =>
                  return Always_Img;

               when AMF.UMLDI.Never =>
                  return Never_Img;

               when AMF.UMLDI.One_Way =>
                  return One_Way_Img;
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
    (Self       : not null access UMLDI_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access
   is
      MC      : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Meta_Class.all).Element;
      Element : AMF.Internals.AMF_Element;

   begin
      if MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Activity_Diagram then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Activity_Diagram;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Association_End_Label then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Association_End_Label;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Association_Or_Connector_Or_Link_Shape then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Association_Or_Connector_Or_Link_Shape;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Class_Diagram then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Class_Diagram;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Classifier_Shape then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Classifier_Shape;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Compartment then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Compartment;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Compartmentable_Shape then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Compartmentable_Shape;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Component_Diagram then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Component_Diagram;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Composite_Structure_Diagram then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Composite_Structure_Diagram;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Deployment_Diagram then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Deployment_Diagram;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Edge then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Edge;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Interaction_Diagram then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Interaction_Diagram;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Interaction_Table_Label then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Interaction_Table_Label;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Keyword_Label then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Keyword_Label;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Label then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Label;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Multiplicity_Label then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Multiplicity_Label;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Name_Label then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Name_Label;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Object_Diagram then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Object_Diagram;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Package_Diagram then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Package_Diagram;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Profile_Diagram then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Profile_Diagram;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Redefines_Label then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Redefines_Label;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Shape then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Shape;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_State_Machine_Diagram then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_State_Machine_Diagram;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_State_Shape then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_State_Shape;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Stereotype_Property_Value_Label then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Stereotype_Property_Value_Label;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Style then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Style;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Typed_Element_Label then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Typed_Element_Label;

      elsif MC = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Use_Case_Diagram then
         Element := AMF.Internals.Tables.UML_Constructors.Create_UMLDI_UML_Use_Case_Diagram;

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
    (Self      : not null access UMLDI_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder
   is
      pragma Unreferenced (Self);

      use type League.Strings.Universal_String;

      DT : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Data_Type.all).Element;

   begin
      if DT = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Kind then
         if Image = Diamond_Img then
            return
              AMF.UMLDI.Holders.UML_Association_Or_Connector_Or_Link_Shape_Kinds.To_Holder
               (AMF.UMLDI.Diamond);

         elsif Image = Triangle_Img then
            return
              AMF.UMLDI.Holders.UML_Association_Or_Connector_Or_Link_Shape_Kinds.To_Holder
               (AMF.UMLDI.Triangle);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Inherited_State_Border_Kind then
         if Image = Dashed_Img then
            return
              AMF.UMLDI.Holders.UML_Inherited_State_Border_Kinds.To_Holder
               (AMF.UMLDI.Dashed);

         elsif Image = Gray_Img then
            return
              AMF.UMLDI.Holders.UML_Inherited_State_Border_Kinds.To_Holder
               (AMF.UMLDI.Gray);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Interaction_Diagram_Kind then
         if Image = Communication_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Diagram_Kinds.To_Holder
               (AMF.UMLDI.Communication);

         elsif Image = Overview_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Diagram_Kinds.To_Holder
               (AMF.UMLDI.Overview);

         elsif Image = Sequence_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Diagram_Kinds.To_Holder
               (AMF.UMLDI.Sequence);

         elsif Image = Table_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Diagram_Kinds.To_Holder
               (AMF.UMLDI.Table);

         elsif Image = Timing_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Diagram_Kinds.To_Holder
               (AMF.UMLDI.Timing);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Interaction_Table_Label_Kind then
         if Image = Constraint_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Constraint);

         elsif Image = Diagram_Identifier_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Diagram_Identifier);

         elsif Image = Generated_Instance_Name_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Generated_Instance_Name);

         elsif Image = Lifeline_Class_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Lifeline_Class);

         elsif Image = Lifeline_Instance_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Lifeline_Instance);

         elsif Image = Message_Name_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Message_Name);

         elsif Image = Message_Receiving_Class_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Message_Receiving_Class);

         elsif Image = Message_Receiving_Instance_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Message_Receiving_Instance);

         elsif Image = Message_Sending_Class_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Message_Sending_Class);

         elsif Image = Message_Sending_Instance_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Message_Sending_Instance);

         elsif Image = Other_End_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Other_End);

         elsif Image = Parameter_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Parameter);

         elsif Image = Return_Value_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Return_Value);

         elsif Image = Sequence_Number_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Sequence_Number);

         elsif Image = Weak_Order_Img then
            return
              AMF.UMLDI.Holders.UML_Interaction_Table_Label_Kinds.To_Holder
               (AMF.UMLDI.Weak_Order);

         else
            raise Constraint_Error;
         end if;

      elsif DT = AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Navigability_Notation_Kind then
         if Image = Always_Img then
            return
              AMF.UMLDI.Holders.UML_Navigability_Notation_Kinds.To_Holder
               (AMF.UMLDI.Always);

         elsif Image = Never_Img then
            return
              AMF.UMLDI.Holders.UML_Navigability_Notation_Kinds.To_Holder
               (AMF.UMLDI.Never);

         elsif Image = One_Way_Img then
            return
              AMF.UMLDI.Holders.UML_Navigability_Notation_Kinds.To_Holder
               (AMF.UMLDI.One_Way);

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
    (Self           : not null access UMLDI_Factory;
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
    (Self : not null access constant UMLDI_Factory)
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
           (AMF.Internals.Tables.UMLDI_Metamodel.MM_UMLDI_UMLDI));
   end Get_Package;

   ---------------------------------
   -- Create_UML_Activity_Diagram --
   ---------------------------------

   overriding function Create_UML_Activity_Diagram
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Activity_Diagrams.UMLDI_UML_Activity_Diagram_Access is
   begin
      return
        AMF.UMLDI.UML_Activity_Diagrams.UMLDI_UML_Activity_Diagram_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Activity_Diagram))));
   end Create_UML_Activity_Diagram;

   --------------------------------------
   -- Create_UML_Association_End_Label --
   --------------------------------------

   overriding function Create_UML_Association_End_Label
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Association_End_Labels.UMLDI_UML_Association_End_Label_Access is
   begin
      return
        AMF.UMLDI.UML_Association_End_Labels.UMLDI_UML_Association_End_Label_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Association_End_Label))));
   end Create_UML_Association_End_Label;

   -------------------------------------------------------
   -- Create_UML_Association_Or_Connector_Or_Link_Shape --
   -------------------------------------------------------

   overriding function Create_UML_Association_Or_Connector_Or_Link_Shape
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Association_Or_Connector_Or_Link_Shapes.UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Access is
   begin
      return
        AMF.UMLDI.UML_Association_Or_Connector_Or_Link_Shapes.UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Association_Or_Connector_Or_Link_Shape))));
   end Create_UML_Association_Or_Connector_Or_Link_Shape;

   ------------------------------
   -- Create_UML_Class_Diagram --
   ------------------------------

   overriding function Create_UML_Class_Diagram
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Class_Diagrams.UMLDI_UML_Class_Diagram_Access is
   begin
      return
        AMF.UMLDI.UML_Class_Diagrams.UMLDI_UML_Class_Diagram_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Class_Diagram))));
   end Create_UML_Class_Diagram;

   ---------------------------------
   -- Create_UML_Classifier_Shape --
   ---------------------------------

   overriding function Create_UML_Classifier_Shape
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Classifier_Shapes.UMLDI_UML_Classifier_Shape_Access is
   begin
      return
        AMF.UMLDI.UML_Classifier_Shapes.UMLDI_UML_Classifier_Shape_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Classifier_Shape))));
   end Create_UML_Classifier_Shape;

   ----------------------------
   -- Create_UML_Compartment --
   ----------------------------

   overriding function Create_UML_Compartment
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Compartments.UMLDI_UML_Compartment_Access is
   begin
      return
        AMF.UMLDI.UML_Compartments.UMLDI_UML_Compartment_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Compartment))));
   end Create_UML_Compartment;

   --------------------------------------
   -- Create_UML_Compartmentable_Shape --
   --------------------------------------

   overriding function Create_UML_Compartmentable_Shape
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Compartmentable_Shapes.UMLDI_UML_Compartmentable_Shape_Access is
   begin
      return
        AMF.UMLDI.UML_Compartmentable_Shapes.UMLDI_UML_Compartmentable_Shape_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Compartmentable_Shape))));
   end Create_UML_Compartmentable_Shape;

   ----------------------------------
   -- Create_UML_Component_Diagram --
   ----------------------------------

   overriding function Create_UML_Component_Diagram
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Component_Diagrams.UMLDI_UML_Component_Diagram_Access is
   begin
      return
        AMF.UMLDI.UML_Component_Diagrams.UMLDI_UML_Component_Diagram_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Component_Diagram))));
   end Create_UML_Component_Diagram;

   --------------------------------------------
   -- Create_UML_Composite_Structure_Diagram --
   --------------------------------------------

   overriding function Create_UML_Composite_Structure_Diagram
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Composite_Structure_Diagrams.UMLDI_UML_Composite_Structure_Diagram_Access is
   begin
      return
        AMF.UMLDI.UML_Composite_Structure_Diagrams.UMLDI_UML_Composite_Structure_Diagram_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Composite_Structure_Diagram))));
   end Create_UML_Composite_Structure_Diagram;

   -----------------------------------
   -- Create_UML_Deployment_Diagram --
   -----------------------------------

   overriding function Create_UML_Deployment_Diagram
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Deployment_Diagrams.UMLDI_UML_Deployment_Diagram_Access is
   begin
      return
        AMF.UMLDI.UML_Deployment_Diagrams.UMLDI_UML_Deployment_Diagram_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Deployment_Diagram))));
   end Create_UML_Deployment_Diagram;

   ---------------------
   -- Create_UML_Edge --
   ---------------------

   overriding function Create_UML_Edge
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Edges.UMLDI_UML_Edge_Access is
   begin
      return
        AMF.UMLDI.UML_Edges.UMLDI_UML_Edge_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Edge))));
   end Create_UML_Edge;

   ------------------------------------
   -- Create_UML_Interaction_Diagram --
   ------------------------------------

   overriding function Create_UML_Interaction_Diagram
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Interaction_Diagrams.UMLDI_UML_Interaction_Diagram_Access is
   begin
      return
        AMF.UMLDI.UML_Interaction_Diagrams.UMLDI_UML_Interaction_Diagram_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Interaction_Diagram))));
   end Create_UML_Interaction_Diagram;

   ----------------------------------------
   -- Create_UML_Interaction_Table_Label --
   ----------------------------------------

   overriding function Create_UML_Interaction_Table_Label
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Interaction_Table_Labels.UMLDI_UML_Interaction_Table_Label_Access is
   begin
      return
        AMF.UMLDI.UML_Interaction_Table_Labels.UMLDI_UML_Interaction_Table_Label_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Interaction_Table_Label))));
   end Create_UML_Interaction_Table_Label;

   ------------------------------
   -- Create_UML_Keyword_Label --
   ------------------------------

   overriding function Create_UML_Keyword_Label
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Keyword_Labels.UMLDI_UML_Keyword_Label_Access is
   begin
      return
        AMF.UMLDI.UML_Keyword_Labels.UMLDI_UML_Keyword_Label_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Keyword_Label))));
   end Create_UML_Keyword_Label;

   ----------------------
   -- Create_UML_Label --
   ----------------------

   overriding function Create_UML_Label
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Labels.UMLDI_UML_Label_Access is
   begin
      return
        AMF.UMLDI.UML_Labels.UMLDI_UML_Label_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Label))));
   end Create_UML_Label;

   -----------------------------------
   -- Create_UML_Multiplicity_Label --
   -----------------------------------

   overriding function Create_UML_Multiplicity_Label
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Multiplicity_Labels.UMLDI_UML_Multiplicity_Label_Access is
   begin
      return
        AMF.UMLDI.UML_Multiplicity_Labels.UMLDI_UML_Multiplicity_Label_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Multiplicity_Label))));
   end Create_UML_Multiplicity_Label;

   ---------------------------
   -- Create_UML_Name_Label --
   ---------------------------

   overriding function Create_UML_Name_Label
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Name_Labels.UMLDI_UML_Name_Label_Access is
   begin
      return
        AMF.UMLDI.UML_Name_Labels.UMLDI_UML_Name_Label_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Name_Label))));
   end Create_UML_Name_Label;

   -------------------------------
   -- Create_UML_Object_Diagram --
   -------------------------------

   overriding function Create_UML_Object_Diagram
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Object_Diagrams.UMLDI_UML_Object_Diagram_Access is
   begin
      return
        AMF.UMLDI.UML_Object_Diagrams.UMLDI_UML_Object_Diagram_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Object_Diagram))));
   end Create_UML_Object_Diagram;

   --------------------------------
   -- Create_UML_Package_Diagram --
   --------------------------------

   overriding function Create_UML_Package_Diagram
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Package_Diagrams.UMLDI_UML_Package_Diagram_Access is
   begin
      return
        AMF.UMLDI.UML_Package_Diagrams.UMLDI_UML_Package_Diagram_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Package_Diagram))));
   end Create_UML_Package_Diagram;

   --------------------------------
   -- Create_UML_Profile_Diagram --
   --------------------------------

   overriding function Create_UML_Profile_Diagram
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Profile_Diagrams.UMLDI_UML_Profile_Diagram_Access is
   begin
      return
        AMF.UMLDI.UML_Profile_Diagrams.UMLDI_UML_Profile_Diagram_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Profile_Diagram))));
   end Create_UML_Profile_Diagram;

   --------------------------------
   -- Create_UML_Redefines_Label --
   --------------------------------

   overriding function Create_UML_Redefines_Label
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Redefines_Labels.UMLDI_UML_Redefines_Label_Access is
   begin
      return
        AMF.UMLDI.UML_Redefines_Labels.UMLDI_UML_Redefines_Label_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Redefines_Label))));
   end Create_UML_Redefines_Label;

   ----------------------
   -- Create_UML_Shape --
   ----------------------

   overriding function Create_UML_Shape
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Shapes.UMLDI_UML_Shape_Access is
   begin
      return
        AMF.UMLDI.UML_Shapes.UMLDI_UML_Shape_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Shape))));
   end Create_UML_Shape;

   --------------------------------------
   -- Create_UML_State_Machine_Diagram --
   --------------------------------------

   overriding function Create_UML_State_Machine_Diagram
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_State_Machine_Diagrams.UMLDI_UML_State_Machine_Diagram_Access is
   begin
      return
        AMF.UMLDI.UML_State_Machine_Diagrams.UMLDI_UML_State_Machine_Diagram_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_State_Machine_Diagram))));
   end Create_UML_State_Machine_Diagram;

   ----------------------------
   -- Create_UML_State_Shape --
   ----------------------------

   overriding function Create_UML_State_Shape
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_State_Shapes.UMLDI_UML_State_Shape_Access is
   begin
      return
        AMF.UMLDI.UML_State_Shapes.UMLDI_UML_State_Shape_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_State_Shape))));
   end Create_UML_State_Shape;

   ------------------------------------------------
   -- Create_UML_Stereotype_Property_Value_Label --
   ------------------------------------------------

   overriding function Create_UML_Stereotype_Property_Value_Label
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Stereotype_Property_Value_Labels.UMLDI_UML_Stereotype_Property_Value_Label_Access is
   begin
      return
        AMF.UMLDI.UML_Stereotype_Property_Value_Labels.UMLDI_UML_Stereotype_Property_Value_Label_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Stereotype_Property_Value_Label))));
   end Create_UML_Stereotype_Property_Value_Label;

   ----------------------
   -- Create_UML_Style --
   ----------------------

   overriding function Create_UML_Style
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access is
   begin
      return
        AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Style))));
   end Create_UML_Style;

   ------------------------------------
   -- Create_UML_Typed_Element_Label --
   ------------------------------------

   overriding function Create_UML_Typed_Element_Label
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Typed_Element_Labels.UMLDI_UML_Typed_Element_Label_Access is
   begin
      return
        AMF.UMLDI.UML_Typed_Element_Labels.UMLDI_UML_Typed_Element_Label_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Typed_Element_Label))));
   end Create_UML_Typed_Element_Label;

   ---------------------------------
   -- Create_UML_Use_Case_Diagram --
   ---------------------------------

   overriding function Create_UML_Use_Case_Diagram
    (Self : not null access UMLDI_Factory)
       return AMF.UMLDI.UML_Use_Case_Diagrams.UMLDI_UML_Use_Case_Diagram_Access is
   begin
      return
        AMF.UMLDI.UML_Use_Case_Diagrams.UMLDI_UML_Use_Case_Diagram_Access
         (Self.Create
           (AMF.CMOF.Classes.CMOF_Class_Access
             (AMF.Internals.Helpers.To_Element
               (AMF.Internals.Tables.UMLDI_Metamodel.MC_UMLDI_UML_Use_Case_Diagram))));
   end Create_UML_Use_Case_Diagram;

end AMF.Internals.Factories.UMLDI_Factories;
