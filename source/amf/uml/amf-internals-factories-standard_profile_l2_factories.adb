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
with AMF.Internals.Tables.Standard_Profile_L2_Metamodel;
with AMF.Internals.Tables.UML_Constructors;

package body AMF.Internals.Factories.Standard_Profile_L2_Factories is

   -----------------
   -- Constructor --
   -----------------

   function Constructor
    (Extent : AMF.Internals.AMF_Extent)
       return not null AMF.Factories.Factory_Access is
   begin
      return new Standard_Profile_L2_Factory'(Extent => Extent);
   end Constructor;

   -----------------------
   -- Convert_To_String --
   -----------------------

   overriding function Convert_To_String
    (Self      : not null access Standard_Profile_L2_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String is
   begin
      raise Program_Error;
      return League.Strings.Empty_Universal_String;
   end Convert_To_String;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self       : not null access Standard_Profile_L2_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access
   is
      pragma Unreferenced (Self);

      MC      : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Meta_Class.all).Element;
      Element : AMF.Internals.AMF_Element;

   begin
      if MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Auxiliary then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Auxiliary;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Call then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Call;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Create then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Create;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Derive then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Derive;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Destroy then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Destroy;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Document then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Document;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Entity then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Entity;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Executable then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Executable;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Focus then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Focus;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Framework then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Framework;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Implement then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Implement;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Implementation_Class then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Implementation_Class;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Instantiate then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Instantiate;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Library then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Library;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Metaclass then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Metaclass;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Model_Library then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Model_Library;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Process then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Process;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Realization then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Realization;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Refine then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Refine;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Responsibility then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Responsibility;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Script then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Script;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Send then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Send;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Service then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Service;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Source then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Source;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Specification then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Specification;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Subsystem then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Subsystem;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Trace then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Trace;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Type then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Type;

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Utility then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Utility;

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
    (Self      : not null access Standard_Profile_L2_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder is
   begin
      raise Program_Error;
      return League.Holders.Empty_Holder;
   end Create_From_String;

   -----------------
   -- Create_Link --
   -----------------

   overriding function Create_Link
    (Self           : not null access Standard_Profile_L2_Factory;
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
    (Self : not null access constant Standard_Profile_L2_Factory)
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
           (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MM_Standard_Profile_L2_Standard_Profile_L2));
   end Get_Package;

end AMF.Internals.Factories.Standard_Profile_L2_Factories;
