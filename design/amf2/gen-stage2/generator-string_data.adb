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
with Ada.Integer_Wide_Wide_Text_IO;
with Ada.Wide_Wide_Text_IO;

with League.Holders;
with League.Strings.Internals;
with Matreshka.Internals.Strings;
with Matreshka.Internals.Utf16;

with AMF.CMOF.Types;
with AMF.Holders.Reflective_Collections;
with AMF.Reflective_Collections;

with Generator.Wide_Wide_Text_IO;

package body Generator.String_Data is

   use Ada.Integer_Wide_Wide_Text_IO;
   use Ada.Wide_Wide_Text_IO;
   use Generator.Wide_Wide_Text_IO;
   use type AMF.Optional_String;
   use type League.Strings.Universal_String;

   function String_Data_Package_Name
    (Metamodel_Info : Metamodel_Information;
     Number         : Natural) return League.Strings.Universal_String;
   --  Returns name of string data package where string with specified number
   --  is delcared.

   function String_Data_Constant_Name
    (Number : Natural) return League.Strings.Universal_String;
   --  Returns name of string data constant for the string with specified
   --  number.

   function Is_String_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   package String_Sets is
     new Ada.Containers.Hashed_Sets
          (League.Strings.Universal_String,
           League.Strings.Hash,
           League.Strings."=",
           League.Strings."=");

   --------------------
   -- Assign_Numbers --
   --------------------

   procedure Extract_String_Data
    (Extent : not null AMF.URI_Stores.URI_Store_Access)
   is

      procedure Extract_String_Data
       (Position : CMOF_Element_Sets.Cursor);

      procedure Assign_String (Position : String_Sets.Cursor);

      Elements : AMF.Elements.Collections.Set_Of_Element
        := Extent.Elements;
      Strings  : String_Sets.Set;
      Last     : Natural := 0;

      -------------------
      -- Assign_String --
      -------------------

      procedure Assign_String (Position : String_Sets.Cursor) is
         Element : constant League.Strings.Universal_String
           := String_Sets.Element (Position);

      begin
         Metamodel_Info.String_Numbers.Insert (Element, Last);
         Metamodel_Info.Number_Strings.Insert (Last, Element);
         Last := Last + 1;
      end Assign_String;

      Element : AMF.CMOF.Elements.CMOF_Element_Access;

      -------------------------
      -- Extract_String_Data --
      -------------------------

      procedure Extract_String_Data
       (Position : CMOF_Element_Sets.Cursor)
      is
         Property      : constant AMF.CMOF.Properties.CMOF_Property_Access
           := AMF.CMOF.Properties.CMOF_Property_Access
               (CMOF_Element_Sets.Element (Position));
         Property_Type : constant AMF.CMOF.Types.CMOF_Type_Access
           := Property.Get_Type;
         Value         : League.Holders.Holder;
         Collection    : AMF.Reflective_Collections.Reflective_Collection;

      begin
         if Is_String_Type (Property_Type)
           and then not Property.Get_Is_Derived
         then
            Value :=
              AMF.Elements.Abstract_Element'Class (Element.all).Get (Property);

            if Property.Is_Multivalued then
               Collection :=
                 AMF.Holders.Reflective_Collections.Element (Value);

               for J in 1 .. Collection.Length loop
                  Strings.Include
                   (League.Holders.Element (Collection.Element (J)));
               end loop;

            else
               if not League.Holders.Is_Empty (Value) then
                  Strings.Include (League.Holders.Element (Value));
               end if;
            end if;
         end if;
      end Extract_String_Data;

   begin
      --  Collect string data.

      for J in 1 .. Elements.Length loop
         Element :=
           AMF.CMOF.Elements.CMOF_Element_Access (Elements.Element (J));
         Class_Properties_Except_Redefined
          (AMF.Elements.Abstract_Element'Class
            (Element.all).Get_Meta_Class).Iterate
              (Extract_String_Data'Access);
      end loop;

      --  Assign number for strings.

      Strings.Iterate (Assign_String'Access);
   end Extract_String_Data;

   ------------------------------------
   -- Generate_Metamodel_String_Data --
   ------------------------------------

   procedure Generate_Metamodel_String_Data is

      procedure Generate_String_Constant (Number : Natural);
      --  Generates object declaration and initialization for specified
      --  string.

      ------------------------------
      -- Generate_String_Constant --
      ------------------------------

      procedure Generate_String_Constant (Number : Natural) is
         use type Matreshka.Internals.Utf16.Utf16_String_Index;

         Element  : constant League.Strings.Universal_String
           := Metamodel_Info.Number_Strings.Element (Number);
         Internal : constant Matreshka.Internals.Strings.Shared_String_Access
           := League.Strings.Internals.Internal (Element);

         procedure Put (Item : Matreshka.Internals.Utf16.Utf16_Code_Unit);

         ---------
         -- Put --
         ---------

         procedure Put (Item : Matreshka.Internals.Utf16.Utf16_Code_Unit) is
            use type Matreshka.Internals.Utf16.Utf16_Code_Unit;

            Hex    : constant
              array (Matreshka.Internals.Utf16.Utf16_Code_Unit range 0 .. 15)
                of Wide_Wide_Character := "0123456789ABCDEF";
            Result : Wide_Wide_String := "16#XXXX#";

         begin
            Result (4) := Hex (Item / 4096);
            Result (5) := Hex ((Item / 256) mod 16);
            Result (6) := Hex ((Item / 16) mod 16);
            Result (7) := Hex (Item mod 16);

            Put (Result);
         end Put;

      begin
         New_Line;
         Put_Line ("   --  """ & Element.To_Wide_Wide_String & """");
         New_Line;
         Put_Line
          ("   "
             & String_Data_Constant_Name (Number)
             & " : aliased Matreshka.Internals.Strings.Shared_String");
         Put ("     := (Size   => ");
         Put (Integer (Internal.Size), Width => 0);
         Put_Line (",");
         Put ("         Unused => ");
         Put (Integer (Internal.Unused), Width => 0);
         Put_Line (",");
         Put ("         Length => ");
         Put (Internal.Length, Width => 0);
         Put_Line (",");
         Put_Line ("         Value  =>");
         Put ("          (");

         for J in 0 .. Internal.Unused - 1 loop
            if J /= 0 and J mod 4 = 0 then
               Put_Line (",");
               Put ("           ");

            elsif J /= 0 then
               Put (", ");
            end if;

            Put (Internal.Value (J));
         end loop;

         Put_Line (",");
         Put_Line ("           others => 16#0000#),");
         Put_Line ("         others => <>);");
      end Generate_String_Constant;

   begin
      for J
        in 0 .. Integer (Metamodel_Info.Number_Strings.Length) / 16#100#
      loop
         Put_Header (2010, 2011);
         Put_Line ("with Matreshka.Internals.Strings;");
         New_Line;
         Put_Line
          ("package "
             & String_Data_Package_Name (Metamodel_Info.all, J * 16#100#)
             & " is");

         --  Generate string constants.

         for K in J * 16#100#
                    .. Integer'Min
                        (J * 16#100# + 16#FF#,
                         Integer (Metamodel_Info.Number_Strings.Length) - 1)
         loop
            Generate_String_Constant (K);
         end loop;

         New_Line;
         Put_Line
          ("end "
             & String_Data_Package_Name (Metamodel_Info.all, J * 16#100#)
             & ";");
      end loop;
   end Generate_Metamodel_String_Data;

   --------------------
   -- Is_String_Type --
   --------------------

   function Is_String_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return Element.Get_Name = League.Strings.To_Universal_String ("String");
   end Is_String_Type;

   -------------------------------
   -- String_Data_Constant_Name --
   -------------------------------

   function String_Data_Constant_Name
    (Number : Natural) return League.Strings.Universal_String
   is
      Hex    : constant
        array (Integer range 0 .. 15)
          of Wide_Wide_Character := "0123456789ABCDEF";
      Result : Wide_Wide_String := "MS_XXXX";

   begin
      Result (4) := Hex (Number / 16#1000#);
      Result (5) := Hex (Number / 16#100# mod 16#10#);
      Result (6) := Hex (Number / 16#10# mod 16#10#);
      Result (7) := Hex (Number mod 16#10#);

      return League.Strings.To_Universal_String (Result);
   end String_Data_Constant_Name;

   -------------------------------
   -- String_Data_Constant_Name --
   -------------------------------

   function String_Data_Constant_Name
    (Metamodel_Info : Metamodel_Information;
     Item           : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      return
        String_Data_Constant_Name
         (Metamodel_Info.String_Numbers.Element (Item));
   end String_Data_Constant_Name;

   ------------------------------
   -- String_Data_Package_Name --
   ------------------------------

   function String_Data_Package_Name
    (Metamodel_Info : Metamodel_Information;
     Number         : Natural) return League.Strings.Universal_String
   is
      Hex    : constant
        array (Integer range 0 .. 15)
          of Wide_Wide_Character := "0123456789ABCDEF";
      Result : Wide_Wide_String
        := "AMF.Internals.Tables."
             & Metamodel_Info.Ada_Name.To_Wide_Wide_String
             & "_String_Data_XX";

   begin
      Result (Result'Last - 1) := Hex (Number / 16#1000#);
      Result (Result'Last) := Hex (Number / 16#100# mod 16#10#);

      return League.Strings.To_Universal_String (Result);
   end String_Data_Package_Name;

   ------------------------------
   -- String_Data_Package_Name --
   ------------------------------

   function String_Data_Package_Name
    (Metamodel_Info : Metamodel_Information;
     Item           : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      return
        String_Data_Package_Name
         (Metamodel_Info, Metamodel_Info.String_Numbers.Element (Item));
   end String_Data_Package_Name;

end Generator.String_Data;
