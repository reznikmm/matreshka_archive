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
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.Standard_Profile_L2_Metamodel;
with AMF.Internals.Tables.UML_Attribute_Mappings;
with AMF.Internals.Tables.UML_Constructors;
with AMF.Internals.Tables.UML_Element_Table;
with AMF.Internals.Tables.UML_Metamodel;

package body AMF.Internals.Factories.Standard_Profile_L2_Factory is

   use AMF.Internals.Tables.Standard_Profile_L2_Metamodel;

   --------------------
   -- Connect_Extent --
   --------------------

   overriding procedure Connect_Extent
    (Self    : not null access constant Standard_Profile_L2_Factory;
     Element : AMF.Internals.AMF_Element;
     Extent  : AMF.Internals.AMF_Extent)
   is
      pragma Unreferenced (Self);

   begin
      AMF.Internals.Tables.UML_Element_Table.Table (Element).Extent := Extent;
   end Connect_Extent;

   ----------------------
   -- Connect_Link_End --
   ----------------------

   overriding procedure Connect_Link_End
    (Self     : not null access constant Standard_Profile_L2_Factory;
     Element  : AMF.Internals.AMF_Element;
     Property : AMF.Internals.CMOF_Element;
     Link     : AMF.Internals.AMF_Link;
     Other    : AMF.Internals.AMF_Element)
   is
      pragma Unreferenced (Self);

      use AMF.Internals.Tables;
      use AMF.Internals.Tables.UML_Attribute_Mappings;
      use AMF.Internals.Tables.UML_Metamodel;

   begin
      --  Properties which comes from UML metamodel.

      if Property in MB_UML .. ML_UML then
         declare
            PO : constant AMF.Internals.CMOF_Element := Property - MB_UML;

         begin
            if PO in UML_Collection_Offset'Range (2) then
               AMF.Internals.Element_Collections.Internal_Append
                (UML_Element_Table.Table (Element).Member (0).Collection
                   + UML_Collection_Offset
                      (UML_Element_Table.Table (Element).Kind, PO),
                 Other,
                 Link);

            elsif PO in UML_Member_Offset'Range (2)
              and then UML_Member_Offset
                        (UML_Element_Table.Table (Element).Kind, PO) /= 0
            then
               UML_Element_Table.Table (Element).Member
                (UML_Member_Offset
                  (UML_Element_Table.Table (Element).Kind, PO)).Link := Link;

            else
               AMF.Internals.Element_Collections.Internal_Append
                (UML_Element_Table.Table (Element).Member (0).Collection,
                 Other,
                 Link);
            end if;
         end;

      elsif Property in MB_Standard_Profile_L2 .. ML_Standard_Profile_L2 then
         declare
            PO : constant AMF.Internals.CMOF_Element := Property - MB_Standard_Profile_L2;

         begin
            if PO in Standard_Profile_L2_Collection_Offset'Range (2) then
               AMF.Internals.Element_Collections.Internal_Append
                (UML_Element_Table.Table (Element).Member (0).Collection
                   + Standard_Profile_L2_Collection_Offset
                      (UML_Element_Table.Table (Element).Kind, PO),
                 Other,
                 Link);

            elsif PO in Standard_Profile_L2_Member_Offset'Range (2)
              and then Standard_Profile_L2_Member_Offset
                        (UML_Element_Table.Table (Element).Kind, PO) /= 0
            then
               UML_Element_Table.Table (Element).Member
                (Standard_Profile_L2_Member_Offset
                  (UML_Element_Table.Table (Element).Kind, PO)).Link := Link;

            else
               AMF.Internals.Element_Collections.Internal_Append
                (UML_Element_Table.Table (Element).Member (0).Collection,
                 Other,
                 Link);
            end if;
         end;
      end if;
   end Connect_Link_End;

   -----------------------
   -- Convert_To_String --
   -----------------------

   function Convert_To_String
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
      MC      : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Meta_Class));
      Element : AMF.Internals.UML_Element;

   begin
      --  Create corresponding element.

      if MC = MC_Standard_Profile_L2_Auxiliary then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Auxiliary;

      elsif MC = MC_Standard_Profile_L2_Call then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Call;

      elsif MC = MC_Standard_Profile_L2_Create then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Create;

      elsif MC = MC_Standard_Profile_L2_Derive then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Derive;

      elsif MC = MC_Standard_Profile_L2_Destroy then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Destroy;

      elsif MC = MC_Standard_Profile_L2_Document then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Document;

      elsif MC = MC_Standard_Profile_L2_Entity then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Entity;

      elsif MC = MC_Standard_Profile_L2_Executable then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Executable;

      elsif MC = MC_Standard_Profile_L2_Focus then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Focus;

      elsif MC = MC_Standard_Profile_L2_Framework then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Framework;

      elsif MC = MC_Standard_Profile_L2_Implement then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Implement;

      elsif MC = MC_Standard_Profile_L2_Implementation_Class then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Implementation_Class;

      elsif MC = MC_Standard_Profile_L2_Instantiate then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Instantiate;

      elsif MC = MC_Standard_Profile_L2_Library then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Library;

      elsif MC = MC_Standard_Profile_L2_Metaclass then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Metaclass;

      elsif MC = MC_Standard_Profile_L2_Model_Library then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Model_Library;

      elsif MC = MC_Standard_Profile_L2_Process then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Process;

      elsif MC = MC_Standard_Profile_L2_Realization then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Realization;

      elsif MC = MC_Standard_Profile_L2_Refine then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Refine;

      elsif MC = MC_Standard_Profile_L2_Responsibility then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Responsibility;

      elsif MC = MC_Standard_Profile_L2_Script then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Script;

      elsif MC = MC_Standard_Profile_L2_Send then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Send;

      elsif MC = MC_Standard_Profile_L2_Service then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Service;

      elsif MC = MC_Standard_Profile_L2_Source then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Source;

      elsif MC = MC_Standard_Profile_L2_Specification then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Specification;

      elsif MC = MC_Standard_Profile_L2_Subsystem then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Subsystem;

      elsif MC = MC_Standard_Profile_L2_Trace then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Trace;

      elsif MC = MC_Standard_Profile_L2_Type then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Type;

      elsif MC = MC_Standard_Profile_L2_Utility then
         Element := AMF.Internals.Tables.UML_Constructors.Create_Standard_Profile_L2_Utility;

      else
         raise Program_Error with CMOF_Element'Image (MC);
      end if;

      return Self.To_Element (Element);
   end Create;

   ------------------------
   -- Create_From_String --
   ------------------------

   function Create_From_String
    (Self      : not null access Standard_Profile_L2_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder is
   begin
      raise Program_Error;
      return League.Holders.Empty_Holder;
   end Create_From_String;

   -------------------
   -- Get_Metamodel --
   -------------------

   overriding function Get_Metamodel
    (Self : not null access constant Standard_Profile_L2_Factory)
       return AMF.Internals.AMF_Metamodel
   is
      pragma Unreferenced (Self);

   begin
      return UML_Metamodel;
   end Get_Metamodel;

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
         (AMF.Internals.Helpers.To_Element (MM_Standard_Profile_L2_Standard_Profile_L2));
   end Get_Package;

   ----------------
   -- To_Element --
   ----------------

   overriding function To_Element
    (Self     : not null access constant Standard_Profile_L2_Factory;
     Element  : AMF.Internals.AMF_Element) return AMF.Elements.Element_Access
   is
      pragma Unreferenced (Self);

   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Element).Proxy;
   end To_Element;

end AMF.Internals.Factories.Standard_Profile_L2_Factory;
