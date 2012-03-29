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
with AMF.Internals.Helpers;
with AMF.Internals.Tables.Standard_Profile_L2_Metamodel;
with AMF.Internals.Tables.UML_Constructors;

package body AMF.Internals.Factories.Standard_Profile_L2_Factories is

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

      MC : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Elements.Element_Base'Class (Meta_Class.all).Element;

   begin
      if MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Auxiliary then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Auxiliary);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Call then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Call);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Create then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Create);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Derive then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Derive);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Destroy then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Destroy);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Document then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Document);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Entity then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Entity);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Executable then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Executable);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Focus then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Focus);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Framework then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Framework);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Implement then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Implement);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Implementation_Class then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Implementation_Class);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Instantiate then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Instantiate);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Library then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Library);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Metaclass then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Metaclass);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Model_Library then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Model_Library);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Process then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Process);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Realization then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Realization);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Refine then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Refine);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Responsibility then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Responsibility);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Script then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Script);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Send then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Send);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Service then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Service);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Source then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Source);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Specification then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Specification);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Subsystem then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Subsystem);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Trace then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Trace);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Type then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Type);

      elsif MC = AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MC_Standard_Profile_L2_Utility then
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Utility);

      else
         raise Program_Error;
      end if;
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
   -- Get_Package --
   -----------------

   overriding function Get_Package
    (Self : not null access constant Standard_Profile_L2_Factory)
       return not null AMF.CMOF.Packages.CMOF_Package_Access
   is
      pragma Unreferenced (Self);

   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MM_Standard_Profile_L2_Standard_Profile_L2));
   end Get_Package;

end AMF.Internals.Factories.Standard_Profile_L2_Factories;
