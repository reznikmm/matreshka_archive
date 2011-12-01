------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Wide_Wide_Text_IO;

with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Simple_Readers;

with AMF.CMOF.Data_Types;
with AMF.CMOF.Enumerations;
with AMF.CMOF.Primitive_Types;

with Generator.Names;
with Generator.Type_Mapping.Handlers;

package body Generator.Type_Mapping is

   use Ada.Wide_Wide_Text_IO;
   use Generator.Names;
   use type League.Strings.Universal_String;

   function Public_Ada_Type_Name
    (The_Type       : not null access AMF.CMOF.Types.CMOF_Type'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String;
   --  Constructs name of the type which is used to represent values of the
   --  specified type.

   ----------------------------------
   -- Ada_Enumeration_Literal_Name --
   ----------------------------------

   function Ada_Enumeration_Literal_Name
    (Element : not null access
       AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal'Class)
       return League.Strings.Universal_String
   is
      Position : constant Enumeration_Literal_Maps.Cursor
        := Literal.Find (AMF.CMOF.Elements.CMOF_Element_Access (Element));

   begin
      if Enumeration_Literal_Maps.Has_Element (Position)
        and then
          not Enumeration_Literal_Maps.Element (Position).Ada_Name.Is_Empty
      then
         return Enumeration_Literal_Maps.Element (Position).Ada_Name;

      else
         declare
            Enumeration : constant
              AMF.CMOF.Enumerations.CMOF_Enumeration_Access
                := Element.Get_Enumeration;

         begin
            Ada.Wide_Wide_Text_IO.Put_Line
             (Ada.Wide_Wide_Text_IO.Standard_Error,
              "error: no mapping for "
                & Enumeration.Get_Name.Value.To_Wide_Wide_String
                & "::"
                & Element.Get_Name.Value.To_Wide_Wide_String);

            raise Program_Error;
         end;
      end if;
   end Ada_Enumeration_Literal_Name;

   -----------------------------
   -- Public_Ada_Package_Name --
   -----------------------------

   function Public_Ada_Package_Name
    (The_Type       : not null access AMF.CMOF.Types.CMOF_Type'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String is
   begin
      if The_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
         if Representation in Value .. Holder then
            return
              "AMF."
                & Owning_Metamodel_Name (The_Type)
                & "."
                & Plural (To_Ada_Identifier (The_Type.Get_Name.Value));

         else
            return
              "AMF."
                & Owning_Metamodel_Name (The_Type)
                & "."
                & Plural (To_Ada_Identifier (The_Type.Get_Name.Value))
                & ".Collections";
         end if;

      elsif The_Type.all in AMF.CMOF.Enumerations.CMOF_Enumeration'Class then
         return "AMF." & Metamodel_Name;

      elsif The_Type.all
              in AMF.CMOF.Primitive_Types.CMOF_Primitive_Type'Class
      then
         return
           Mapping.Element
            (AMF.CMOF.Elements.CMOF_Element_Access
              (The_Type)).Mapping (Representation).Ada_Package;

      else
         raise Program_Error;
      end if;
   end Public_Ada_Package_Name;

   --------------------------
   -- Public_Ada_Type_Name --
   --------------------------

   function Public_Ada_Type_Name
    (The_Type       : not null access AMF.CMOF.Types.CMOF_Type'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String is
   begin
      if The_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
         case Representation is
            when Value | Holder =>
               return
                 Owning_Metamodel_Name (The_Type)
                   & "_"
                   & To_Ada_Identifier (The_Type.Get_Name.Value)
                   & "_Access";

            when Set =>
               return
                 "Set_Of_"
                   & Owning_Metamodel_Name (The_Type)
                   & "_"
                   & To_Ada_Identifier (The_Type.Get_Name.Value);

            when Ordered_Set =>
               return
                 "Ordered_Set_Of_"
                   & Owning_Metamodel_Name (The_Type)
                   & "_"
                   & To_Ada_Identifier (The_Type.Get_Name.Value);

            when Bag =>
               return
                 "Bag_Of_"
                   & Owning_Metamodel_Name (The_Type)
                   & "_"
                   & To_Ada_Identifier (The_Type.Get_Name.Value);

            when Sequence =>
               return
                 "Sequence_Of_"
                   & Owning_Metamodel_Name (The_Type)
                   & "_"
                   & To_Ada_Identifier (The_Type.Get_Name.Value);
         end case;

      elsif The_Type.all in AMF.CMOF.Enumerations.CMOF_Enumeration'Class then
         if Mapping.Contains
             (AMF.CMOF.Elements.CMOF_Element_Access (The_Type))
           and then Mapping.Element
                     (AMF.CMOF.Elements.CMOF_Element_Access
                       (The_Type)).Mapping (Representation) /= null
           and then not Mapping.Element
                         (AMF.CMOF.Elements.CMOF_Element_Access
                           (The_Type)).Mapping
                             (Representation).Ada_Type.Is_Empty
         then
            return
              Mapping.Element
               (AMF.CMOF.Elements.CMOF_Element_Access
                 (The_Type)).Mapping (Representation).Ada_Type;

         else
            case Representation is
               when Value =>
                  return
                    Owning_Metamodel_Name (The_Type)
                      & "_"
                      & To_Ada_Identifier (The_Type.Get_Name.Value);

               when Holder =>
                  return
                    "Optional_"
                      & Owning_Metamodel_Name (The_Type)
                      & "_"
                      & To_Ada_Identifier (The_Type.Get_Name.Value);

               when others =>
                  raise Program_Error;
            end case;
         end if;

      elsif The_Type.all
              in AMF.CMOF.Primitive_Types.CMOF_Primitive_Type'Class
      then
         return
           Mapping.Element
            (AMF.CMOF.Elements.CMOF_Element_Access
              (The_Type)).Mapping (Representation).Ada_Type;

      else
         raise Program_Error;
      end if;
   end Public_Ada_Type_Name;

   ------------------------------------
   -- Public_Ada_Type_Qualified_Name --
   ------------------------------------

   function Public_Ada_Type_Qualified_Name
    (The_Type       : not null access AMF.CMOF.Types.CMOF_Type'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String
   is
      Package_Name : constant League.Strings.Universal_String
        := Public_Ada_Package_Name (The_Type, Representation);

   begin
      if Package_Name.Is_Empty then
         return Public_Ada_Type_Name (The_Type, Representation);

      else
         return
           Package_Name
             & "."
             & Public_Ada_Type_Name (The_Type, Representation);
      end if;
   end Public_Ada_Type_Qualified_Name;

   --------------------------------------
   -- Internal_Ada_Type_Qualified_Name --
   --------------------------------------

   function Internal_Ada_Type_Qualified_Name
    (The_Type       : not null access AMF.CMOF.Types.CMOF_Type'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String is
   begin
      if The_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
         --  Classes are represented by internal data types.

         case Representation is
            when Value | Holder =>
               return "AMF.Internals." & Metamodel_Name & "_Element";

            when Set | Ordered_Set | Bag | Sequence =>
               return
                 League.Strings.To_Universal_String
                  ("AMF.Internals.AMF_Collection_Of_Element");
         end case;

      elsif The_Type.all in AMF.CMOF.Enumerations.CMOF_Enumeration'Class then
         --  Enumeration types are declared in AMF.<metamodel> package and
         --  has <metamodel>_<type> name.

         return
           Public_Ada_Package_Name (The_Type, Representation)
             & "."
             & Public_Ada_Type_Name (The_Type, Representation);

      elsif The_Type.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class then
         --  Data types are mapped according to specified mapping rules.

         --  XXX For enumeration types this can be computed.

         if Mapping.Element
            (AMF.CMOF.Elements.CMOF_Element_Access
              (The_Type)).Mapping (Representation).Internal_Ada_Type.Is_Empty
         then
            return
              Mapping.Element
               (AMF.CMOF.Elements.CMOF_Element_Access
                 (The_Type)).Mapping (Representation).Ada_Type;

         else
            return
              Mapping.Element
               (AMF.CMOF.Elements.CMOF_Element_Access
                 (The_Type)).Mapping (Representation).Internal_Ada_Type;
         end if;

      else
         raise Program_Error;
      end if;
   end Internal_Ada_Type_Qualified_Name;

   ------------------
   -- Load_Mapping --
   ------------------

   procedure Load_Mapping is
      Reader  : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
      Input   : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
      Handler : aliased Generator.Type_Mapping.Handlers.Mapping_Handler;

   begin
      Input.Open_By_File_Name
       (League.Strings.To_Universal_String ("mapping.xml"));
      Reader.Set_Content_Handler (Handler'Unchecked_Access);
--      Reader.Set_Error_Handler (Handler'Unchecked_Access);
      Reader.Parse (Input'Unchecked_Access);
   end Load_Mapping;

   -----------------
   -- Member_Name --
   -----------------

   function Member_Name
    (Element        : not null access AMF.CMOF.Elements.CMOF_Element'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String
   is
      Position : constant Mapping_Maps.Cursor
        := Mapping.Find (AMF.CMOF.Elements.CMOF_Element_Access (Element));

   begin
      if Mapping_Maps.Has_Element (Position)
        and then Mapping_Maps.Element (Position).Mapping (Representation)
                   /= null
        and then not Mapping_Maps.Element
                      (Position).Mapping (Representation).Member_Name.Is_Empty
      then
         return
           Mapping.Element
            (AMF.CMOF.Elements.CMOF_Element_Access (Element)).Mapping
              (Representation).Member_Name;

      else
         Put_Line
          (Standard_Error,
           "error: memberName is not defined for "
             & Representation_Kinds'Wide_Wide_Image (Representation)
             & " of "
             & AMF.CMOF.Named_Elements.CMOF_Named_Element'Class
                (Element.all).Get_Name.Value.To_Wide_Wide_String);

         raise Program_Error;
      end if;
   end Member_Name;

   ----------------------
   -- Member_Kind_Name --
   ----------------------

   function Member_Kind_Name
    (Element        : not null access AMF.CMOF.Elements.CMOF_Element'Class;
     Representation : Representation_Kinds)
       return League.Strings.Universal_String
   is
      Position : constant Mapping_Maps.Cursor
        := Mapping.Find (AMF.CMOF.Elements.CMOF_Element_Access (Element));

   begin
      if Mapping_Maps.Has_Element (Position)
        and then Mapping_Maps.Element (Position).Mapping (Representation)
                   /= null
        and then not Mapping_Maps.Element
                      (Position).Mapping
                        (Representation).Member_Kind_Name.Is_Empty
      then
         return
           Mapping.Element
            (AMF.CMOF.Elements.CMOF_Element_Access (Element)).Mapping
              (Representation).Member_Kind_Name;

      else
         Put_Line
          (Standard_Error,
           "error: memberKindName is not defined for "
             & Representation_Kinds'Wide_Wide_Image (Representation)
             & " of "
             & AMF.CMOF.Named_Elements.CMOF_Named_Element'Class
                (Element.all).Get_Name.Value.To_Wide_Wide_String);

         raise Program_Error;
      end if;
   end Member_Kind_Name;

end Generator.Type_Mapping;
