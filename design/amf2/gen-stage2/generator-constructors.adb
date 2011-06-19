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

with AMF.CMOF.Types;
with League.Strings;

with Generator.Names;
with Generator.Wide_Wide_Text_IO;

package body Generator.Constructors is

   use Ada.Wide_Wide_Text_IO;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;

   Boolean_Name                  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Boolean");
   Integer_Name                  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Integer");
   Parameter_Direction_Kind_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("ParameterDirectionKind");
   String_Name                   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("String");
   Unlimited_Natural_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("UnlimitedNatural");
   Visibility_Kind_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("VisibilityKind");

   Unlimited_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("*");
   In_Image        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("in");
   In_Out_Image    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("inout");
   Out_Image       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("out");
   Return_Image    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("return");
   Public_Image    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("public");
   Private_Image   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("private");
   Protected_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("protected");
   Package_Image   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("package");

   ------------------------------------------
   -- Generate_Constructors_Implementation --
   ------------------------------------------

   procedure Generate_Constructors_Implementation is

      procedure Generate_With (Position : Class_Information_Maps.Cursor);
      --  Generates with clause for proxy package.

      procedure Generate_Create (Position : Class_Information_Maps.Cursor);

      procedure Generate_Initialize (Position : Class_Information_Maps.Cursor);

      ---------------------
      -- Generate_Create --
      ---------------------

      procedure Generate_Create (Position : Class_Information_Maps.Cursor) is
         Class           : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Name            : constant Wide_Wide_String
           := "Create_" & To_Ada_Identifier (Class.Class.Get_Name.Value);
         Initialize_Name : constant Wide_Wide_String
           := "Initialize_" & To_Ada_Identifier (Class.Class.Get_Name.Value);

      begin
         Put_Header (Name, 3);
         New_Line;
         Put_Line
          ("   function "
             & Name
             & " (Extent : CMOF_Extent) return CMOF_Element is");
         Put_Line ("   begin");
         Put_Line ("      Elements.Increment_Last;");
         Put_Line ("      " & Initialize_Name & " (Elements.Last, Extent);");
         New_Line;
         Put_Line ("      return Elements.Last;");
         Put_Line ("   end " & Name & ";");
      end Generate_Create;

      -------------------------
      -- Generate_Initialize --
      -------------------------

      procedure Generate_Initialize
       (Position : Class_Information_Maps.Cursor)
      is
         use type AMF.Optional_String;

         Class          : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Class_Name     : constant League.Strings.Universal_String
           := Class.Class.Get_Name.Value;
         Name           : constant Wide_Wide_String
           := "Initialize_" & To_Ada_Identifier (Class.Class.Get_Name.Value);
         Element_Kind   : constant Wide_Wide_String
           := "E_" & To_Ada_Identifier (Class.Class.Get_Name.Value);
         Attribute      : AMF.CMOF.Properties.CMOF_Property_Access;
         Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;
         Default        : AMF.Optional_String;

      begin
         Put_Header (Name, 3);
         New_Line;
         Put_Line ("   procedure " & Name);
         Put_Line ("    (Self   : CMOF_Element;");
         Put_Line ("     Extent : CMOF_Extent) is");
         Put_Line ("   begin");
         Put_Line ("      Elements.Table (Self) :=");
         Put_Line ("       (Kind     => " & Element_Kind & ",");
         Put_Line
          ("        Id       =>"
             & " Matreshka.Internals.Strings.Shared_Empty'Access,");
         Put_Line ("        Extent   => 0,");
         Put_Line ("        Previous => 0,");
         Put_Line ("        Next     => 0,");
         Put_Line ("        Proxy    =>");
         Put_Line
          ("          new AMF.Internals.CMOF_"
             & Plural (To_Ada_Identifier (Class_Name))
             & ".CMOF_"
             & To_Ada_Identifier (Class_Name)
             & "_Proxy'(Id => Self),");
         Put_Line ("        Member   => (0      => (Kind => M_None),");

         for J in 1 .. Natural (Class.Slot_Index.Length) loop
            Attribute := Class.Slot_Index.Element (J);
            Attribute_Type := Attribute.Get_Type;
            Default := Attribute.Get_Default;

            Put ("                    " & Integer'Wide_Wide_Image (J));
            Set_Col (29);
            Put ("=>");

            if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
               case Representation (Attribute) is
                  when Value =>
                     if Default.Is_Empty then
                        Put (" (M_Element, 0),");

                     else
--                        if Boolean'Wide_Wide_Value
--                            (Default.Value.To_Wide_Wide_String)
--                        then
--                           Put (" (M_Boolean, True),");
--
--                        else
--                           Put (" (M_Boolean, False),");
--                        end if;
                        raise Program_Error;
                     end if;

                  when Holder =>
                     if Default.Is_Empty then
                        Put (" (M_Element, 0),");

                     else
--                        if Boolean'Wide_Wide_Value
--                            (Default.Value.To_Wide_Wide_String)
--                        then
--                           Put (" (M_Boolean, True),");
--
--                        else
--                           Put (" (M_Boolean, False),");
--                        end if;
                        raise Program_Error;
                     end if;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;


            elsif Attribute_Type.Get_Name = Boolean_Name then
               case Representation (Attribute) is
                  when Value =>
                     if Default.Is_Empty then
                        raise Program_Error;

                     else
                        if Boolean'Wide_Wide_Value
                            (Default.Value.To_Wide_Wide_String)
                        then
                           Put (" (M_Boolean, True),");

                        else
                           Put (" (M_Boolean, False),");
                        end if;
                     end if;

                  when Holder =>
                     raise Program_Error;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Integer_Name then
               case Representation (Attribute) is
                  when Value =>
--                     if Default.Is_Empty then
--                        raise Program_Error;
--
--                     else
--                        if Boolean'Wide_Wide_Value
--                            (Default.Value.To_Wide_Wide_String)
--                        then
--                           Put (" (M_Boolean, True),");
--
--                        else
--                           Put (" (M_Boolean, False),");
--                        end if;
--                     end if;
                     raise Program_Error;

                  when Holder =>
                     if Default.Is_Empty then
                        raise Program_Error;

                     else
                        Put
                         (" (M_Integer_Holder, (False,"
                            & Integer'Wide_Wide_Image
                               (Integer'Wide_Wide_Value
                                 (Default.Value.To_Wide_Wide_String))
                            & ")),");
                     end if;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Parameter_Direction_Kind_Name then
               case Representation (Attribute) is
                  when Value =>
                     if Default.Is_Empty then
                        raise Program_Error;

                     else
                        if Default = In_Image then
                           Put
                            (" (M_Parameter_Direction_Kind,"
                               & " CMOF.In_Direction),");

                        elsif Default = In_Out_Image then
                           raise Program_Error;

                        elsif Default = Out_Image then
                           raise Program_Error;

                        elsif Default = Return_Image then
                           raise Program_Error;

                        else
                           raise Program_Error;
                        end if;
                     end if;

                  when Holder =>
                     raise Program_Error;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = String_Name then
               case Representation (Attribute) is
                  when Value =>
--                     if Default.Is_Empty then
--                        raise Program_Error;
--
--                     else
--                        if Boolean'Wide_Wide_Value
--                            (Default.Value.To_Wide_Wide_String)
--                        then
--                           Put (" (M_Boolean, True),");
--
--                        else
--                           Put (" (M_Boolean, False),");
--                        end if;
--                     end if;
                     raise Program_Error;

                  when Holder =>
                     if Default.Is_Empty then
                        Put (" (M_String, null),");

                     else
                        raise Program_Error;
--                        if Boolean'Wide_Wide_Value
--                            (Default.Value.To_Wide_Wide_String)
--                        then
--                           Put (" (M_Boolean, True),");
--
--                        else
--                           Put (" (M_Boolean, False),");
--                        end if;
                     end if;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     Put (" (M_Collection_Of_String, 0),");

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     Put (" (M_Collection_Of_String, 0),");
               end case;

            elsif Attribute_Type.Get_Name = Unlimited_Natural_Name then
               case Representation (Attribute) is
                  when Value =>
--                     if Default.Is_Empty then
--                        raise Program_Error;
--
--                     else
--                        if Boolean'Wide_Wide_Value
--                            (Default.Value.To_Wide_Wide_String)
--                        then
--                           Put (" (M_Boolean, True),");
--
--                        else
--                           Put (" (M_Boolean, False),");
--                        end if;
--                     end if;
                     raise Program_Error;

                  when Holder =>
                     if Default.Is_Empty then
                        raise Program_Error;

                     else
                        if Default = Unlimited_Image then
                           raise Program_Error;

                        else
                           New_Line;
                           Set_Col (22);
                           Put
                            (" (M_Unlimited_Natural_Holder, (False, (False,"
                               & Integer'Wide_Wide_Image
                                  (Integer'Wide_Wide_Value
                                    (Default.Value.To_Wide_Wide_String))
                               & "))),");
                        end if;
                     end if;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Visibility_Kind_Name then
               case Representation (Attribute) is
                  when Value =>
                     if Default.Is_Empty then
                        raise Program_Error;

                     else
                        if Default = Public_Image then
                           Put
                            (" (M_Visibility_Kind, CMOF.Public_Visibility),");

                        elsif Default = Private_Image then
                           raise Program_Error;

                        elsif Default = Protected_Image then
                           raise Program_Error;

                        elsif Default = Package_Image then
                           raise Program_Error;

                        else
                           raise Program_Error;
                        end if;
                     end if;

                  when Holder =>
                     if Default.Is_Empty then
                        Put
                         (" (M_Visibility_Holder_Kind,"
                            & " (Is_Empty => True)),");

                     else
                        raise Program_Error;
                     end if;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            else
               raise Program_Error;
            end if;

            New_Line;
            Put_Line
             ("                       --  "
                & Attribute.Get_Name.Value.To_Wide_Wide_String);
         end loop;

         Put_Line ("                     others => (Kind => M_None)));");
         Put_Line
          ("      Allocate_Collection_Of_Cmof_Element_Slots (Self,"
             & Ada.Containers.Count_Type'Wide_Wide_Image
                (Class.Collection_Index.Length)
             & ");");

         for J in 1 .. Natural (Class.Collection_Index.Length) loop
            Attribute := Class.Collection_Index.Element (J);

            case Representation (Attribute) is
               when Value =>
                  raise Program_Error;

               when Holder =>
                  raise Program_Error;

               when Set =>
                  Put ("      Initialize_Set_Collection");
                  Set_Col (42);
                  Put_Line
                   ("--  " & Attribute.Get_Name.Value.To_Wide_Wide_String);

               when Ordered_Set =>
                  Put ("      Initialize_Ordered_Set_Collection");
                  Set_Col (42);
                  Put_Line
                   ("--  " & Attribute.Get_Name.Value.To_Wide_Wide_String);

               when Bag =>
                  raise Program_Error;

               when Sequence =>
                  raise Program_Error;
            end case;

            Put_Line
             ("       (Elements.Table (Self).Member (0).Collection +"
                & Integer'Wide_Wide_Image (J) & ");");
         end loop;

         Put_Line ("      Internal_Append (Extent, Self);");
         Put_Line ("   end " & Name & ';');
      end Generate_Initialize;

      -------------------
      -- Generate_With --
      -------------------

      procedure Generate_With
       (Position : Class_Information_Maps.Cursor)
      is
         Class          : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Class_Name     : constant League.Strings.Universal_String
           := Class.Class.Get_Name.Value;

      begin
         if not Class.Class.Get_Is_Abstract then
            Put_Line
             ("with AMF.Internals.CMOF_"
                & Plural (To_Ada_Identifier (Class_Name))
                & ";");
         end if;
      end Generate_With;

   begin
      Put_Header;
      Class_Info.Iterate (Generate_With'Access);
      Put_Line ("with CMOF.Internals.Extents;");
      Put_Line ("with CMOF.Internals.Tables;");
      Put_Line ("with CMOF.Internals.Types;");
      Put_Line ("with Matreshka.Internals.Strings;");
      New_Line;
      Put_Line ("package body CMOF.Internals.Constructors is");
      New_Line;
      Put_Line ("   use CMOF.Internals.Extents;");
      Put_Line ("   use CMOF.Internals.Tables;");
      Put_Line ("   use CMOF.Internals.Types;");
      Class_Info.Iterate (Generate_Create'Access);
      Class_Info.Iterate (Generate_Initialize'Access);
      New_Line;
      Put_Line ("end CMOF.Internals.Constructors;");
   end Generate_Constructors_Implementation;

   -----------------------------------------
   -- Generate_Constructors_Specification --
   -----------------------------------------

   procedure Generate_Constructors_Specification is

      procedure Generate_Create (Position : Class_Information_Maps.Cursor);

      procedure Generate_Initialize (Position : Class_Information_Maps.Cursor);

      ---------------------
      -- Generate_Create --
      ---------------------

      procedure Generate_Create (Position : Class_Information_Maps.Cursor) is
         Class : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Name  : constant Wide_Wide_String
           := "Create_" & To_Ada_Identifier (Class.Class.Get_Name.Value);

      begin
         New_Line;
         Put_Line
          ("   function "
             & Name
             & " (Extent : CMOF_Extent) return CMOF_Element;");
      end Generate_Create;

      -------------------------
      -- Generate_Initialize --
      -------------------------

      procedure Generate_Initialize
       (Position : Class_Information_Maps.Cursor)
      is
         Class : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Name  : constant Wide_Wide_String
           := "Initialize_" & To_Ada_Identifier (Class.Class.Get_Name.Value);

      begin
         New_Line;
         Put_Line ("   procedure " & Name);
         Put_Line ("    (Self   : CMOF_Element;");
         Put_Line ("     Extent : CMOF_Extent);");
      end Generate_Initialize;

   begin
      Put_Header;

      New_Line;
      Put_Line ("package CMOF.Internals.Constructors is");
      Class_Info.Iterate (Generate_Create'Access);
      Class_Info.Iterate (Generate_Initialize'Access);
      New_Line;
      Put_Line ("end CMOF.Internals.Constructors;");
   end Generate_Constructors_Specification;

end Generator.Constructors;
