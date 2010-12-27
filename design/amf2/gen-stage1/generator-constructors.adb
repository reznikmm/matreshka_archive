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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Strings.Fixed;
with Ada.Text_IO;

with Generator.Utilities;

package body Generator.Constructors is

   use Ada.Strings;
   use Ada.Strings.Fixed;
   use Ada.Strings.Unbounded;
   use Ada.Text_IO;
   use Generator.Utilities;

   ------------------------------------------
   -- Generate_Constructors_Implementation --
   ------------------------------------------

   procedure Generate_Constructors_Implementation is

      procedure Generate_Constructor_Implementation
       (Position : Class_Sets.Cursor);
      --  Generates specification of class's constructor for non-abstract
      --  class.

      procedure Generate_Initializer_Implementation
       (Position : Class_Sets.Cursor);
      --  Generates specification of class's constructor for non-abstract
      --  class.

      -----------------------------------------
      -- Generate_Constructor_Implementation --
      -----------------------------------------

      procedure Generate_Constructor_Implementation
       (Position : Class_Sets.Cursor)
      is
         Class             : constant Class_Access
           := Class_Sets.Element (Position);
         Constructor_Name  : constant String
           := "Create_" & To_Ada_Identifier (Class.Name);

      begin
         if not Class.Is_Abstract then
            New_Line;
            Put_Line ("   ---" & (Constructor_Name'Length * '-') & "---");
            Put_Line ("   -- " & Constructor_Name & " --");
            Put_Line ("   ---" & (Constructor_Name'Length * '-') & "---");
            New_Line;
            Put_Line ("   function " & Constructor_Name);
            Put_Line
             ("    (Extent : CMOF_Extent) return Cmof_"
                & To_Ada_Identifier (Class.Name)
                & " is");
            Put_Line ("   begin");
            Put_Line ("      Elements.Increment_Last;");
            Put_Line
             ("      Initialize_"
                & To_Ada_Identifier (Class.Name)
                & " (Elements.Last, Extent);");
            New_Line;
            Put_Line ("      return Elements.Last;");
            Put_Line ("   end " & Constructor_Name & ";");
         end if;
      end Generate_Constructor_Implementation;

      -----------------------------------------
      -- Generate_Initializer_Implementation --
      -----------------------------------------

      procedure Generate_Initializer_Implementation
       (Position : Class_Sets.Cursor)
      is
         Class                     : constant Class_Access
           := Class_Sets.Element (Position);
         Initializer_Name          : constant String
           := "Initialize_" & To_Ada_Identifier (Class.Name);
         Is_Collection_Initialized :
           array (Positive range 1 .. Class.Collection_Slots)
             of Boolean := (others => False);

         procedure Generate_Member_Initialization
          (Position : Property_Full_Sets.Cursor);
         --  Generates code to initialize class's property.

         procedure Generate_Collection_Property_Initialization
          (Position : Property_Full_Sets.Cursor);
         --  Generates code to initialize class's property.

         -------------------------------------------------
         -- Generate_Collection_Property_Initialization --
         -------------------------------------------------

         procedure Generate_Collection_Property_Initialization
          (Position : Property_Full_Sets.Cursor)
         is
            Property       : constant Property_Access
              := Property_Full_Sets.Element (Position);
            Property_Index : constant Positive
              := Class.Expansion.Element (Property).Index;

         begin
            if Is_Collection_Of_Element (Property) then
               --  Note: redefined property can restrict type of elements, so
               --  in case of redefinition the owned property must be
               --  initialized, but for now first property in the set is
               --  initialized.

               if not Is_Collection_Initialized (Property_Index) then
                  Is_Collection_Initialized (Property_Index) := True;

                  if Property.Is_Ordered and Property.Is_Unique then
                     Put_Line
                      ("      Initialize_Ordered_Set_Collection  --  "
                         & To_String (Property.Name));
                     Put_Line
                      ("       (Elements.Table (Self).Member (0).Collection +"
                         & Integer'Image (Property_Index)
                         & ");");

                  elsif Property.Is_Ordered and not Property.Is_Unique then
                     Put_Line
                      ("      Initialize_Sequence_Collection     --  "
                         & To_String (Property.Name));
                     Put_Line
                      ("       (Elements.Table (Self).Member (0).Collection +"
                         & Integer'Image (Property_Index)
                         & ");");

                  elsif Property.Is_Unique then
                     Put_Line
                      ("      Initialize_Set_Collection          --  "
                         & To_String (Property.Name));
                     Put_Line
                      ("       (Elements.Table (Self).Member (0).Collection +"
                         & Integer'Image (Property_Index)
                         & ");");

                  else
                     Put_Line
                      ("      Initialize_Bag_Collection          --  "
                         & To_String (Property.Name));
                     Put_Line
                      ("       (Elements.Table (Self).Member (0).Collection +"
                         & Integer'Image (Property_Index)
                         & ");");
                  end if;
               end if;

            else
               null;
            end if;
         end Generate_Collection_Property_Initialization;

         ------------------------------------
         -- Generate_Member_Initialization --
         ------------------------------------

         procedure Generate_Member_Initialization
          (Position : Property_Full_Sets.Cursor)
         is
            Property       : constant Property_Access
              := Property_Full_Sets.Element (Position);
            Property_Index : constant Positive
              := Class.Expansion.Element (Property).Index;

         begin
            if not Is_Collection_Of_Element (Property) then
               if not Is_Multivalued (Property) then
                  if Has_Boolean_Type (Property) then
                     Put
                      ("                    " & Integer'Image (Property_Index));
                     Set_Col (29);
                     Put ("=> (M_Boolean, ");

                     if Property.Default_Boolean then
                        Put ("True");

                     else
                        Put ("False");
                     end if;

                     Put ("),");
                     Set_Col (60);
                     Put_Line ("--  " & To_String (Property.Name));

                  elsif Has_Integer_Type (Property) then
                     Put
                      ("                    " & Integer'Image (Property_Index));
                     Set_Col (29);
                     Put
                      ("=> (M_Integer,"
                         & Integer'Image (Property.Default_Integer)
                         & "),");
                     Set_Col (60);
                     Put_Line ("--  " & To_String (Property.Name));

                  elsif Has_Unlimited_Natural_Type (Property) then
                     Put
                      ("                    " & Integer'Image (Property_Index));
                     Set_Col (29);
                     Put ("=> (M_Unlimited_Natural,");

                     if Property.Default_Integer = Integer'Last then
                        Put (" (Unlimited => True)");

                     else
                        Put
                         (" (False,"
                            & Integer'Image (Property.Default_Integer)
                            & ")");
                     end if;

                     Put ("),");
                     Set_Col (60);
                     Put_Line ("--  " & To_String (Property.Name));

                  elsif Has_String_Type (Property) then
                     Put
                      ("                    " & Integer'Image (Property_Index));
                     Set_Col (29);
                     Put
                      ("=> (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),");
                     Set_Col (60);
                     Put_Line ("--  " & To_String (Property.Name));

                  elsif Get_Type (Property).all in Class_Record'Class then
                     Put
                      ("                    " & Integer'Image (Property_Index));
                     Set_Col (29);
                     Put
                      ("=> (M_Element, 0),");
                     Set_Col (60);
                     Put_Line ("--  " & To_String (Property.Name));
                  end if;
               end if;
            end if;
         end Generate_Member_Initialization;

      begin
         if not Class.Is_Abstract then
            New_Line;
            Put_Line ("   ---" & (Initializer_Name'Length * '-') & "---");
            Put_Line ("   -- " & Initializer_Name & " --");
            Put_Line ("   ---" & (Initializer_Name'Length * '-') & "---");
            New_Line;
            Put_Line
             ("   procedure " & Initializer_Name);
            Put_Line
             ("    (Self   : CMOF_"
                & To_Ada_Identifier (Class.Name)
                & ";");
            Put_Line ("     Extent : CMOF_Extent) is");
            Put_Line ("   begin");
            Put_Line ("      Elements.Table (Self) :=");
            Put_Line
             ("       (Kind     => E_" & To_Ada_Identifier (Class.Name) & ",");
            Put_Line
             ("        Id       => Matreshka.Internals.Strings.Shared_Empty'Access,");
            Put_Line
             ("        Extent   => 0,");
            Put_Line
             ("        Previous => 0,");
            Put_Line
             ("        Next     => 0,");
            Put_Line
             ("        Member   => (0      => (Kind => M_None),");
            Class.All_Properties.Iterate
             (Generate_Member_Initialization'Access);
            Put_Line ("                     others => (Kind => M_None)));");
            Put_Line
             ("      Allocate_Collection_Of_Cmof_Element_Slots"
                & " (Self, "
                & Trim (Natural'Image (Class.Collection_Slots), Both)
                & ");");
            Class.All_Properties.Iterate
             (Generate_Collection_Property_Initialization'Access);
            Put_Line ("      Internal_Append (Extent, Self);");
            Put_Line ("   end " & Initializer_Name & ";");
         end if;
      end Generate_Initializer_Implementation;

   begin
      Put_Line ("with Matreshka.Internals.Strings;");
      New_Line;
      Put_Line ("with AMF;");
      Put_Line ("with Cmof.Internals.Attributes;");
      Put_Line ("with Cmof.Internals.Extents;");
      Put_Line ("with Cmof.Internals.Metamodel;");
      Put_Line ("with Cmof.Internals.Tables;");
      Put_Line ("with Cmof.Internals.Types;");
      New_Line;
      Put_Line ("package body Cmof.Internals.Constructors is");
      New_Line;
      Put_Line ("   use Cmof.Internals.Attributes;");
      Put_Line ("   use Cmof.Internals.Extents;");
      Put_Line ("   use Cmof.Internals.Metamodel;");
      Put_Line ("   use Cmof.Internals.Tables;");
      Put_Line ("   use Cmof.Internals.Types;");

      Classes.Iterate (Generate_Constructor_Implementation'Access);
      Classes.Iterate (Generate_Initializer_Implementation'Access);

      New_Line;
      Put_Line ("end Cmof.Internals.Constructors;");
   end Generate_Constructors_Implementation;

   -----------------------------------------
   -- Generate_Constructors_Specification --
   -----------------------------------------

   procedure Generate_Constructors_Specification is

      procedure Generate_Constructor_Specification
       (Position : Class_Sets.Cursor);
      --  Generates specification of class's constructor for non-abstract
      --  class.

      procedure Generate_Initializer_Specification
       (Position : Class_Sets.Cursor);
      --  Generates specification of class's constructor for non-abstract
      --  class.

      ----------------------------------------
      -- Generate_Constructor_Specification --
      ----------------------------------------

      procedure Generate_Constructor_Specification
       (Position : Class_Sets.Cursor)
      is
         Class : constant Class_Access := Class_Sets.Element (Position);

      begin
         if not Class.Is_Abstract then
            New_Line;
            Put_Line ("   function Create_" & To_Ada_Identifier (Class.Name));
            Put_Line
             ("    (Extent : CMOF_Extent) return Cmof_"
                & To_Ada_Identifier (Class.Name)
                & ";");
         end if;
      end Generate_Constructor_Specification;

      ----------------------------------------
      -- Generate_Initializer_Specification --
      ----------------------------------------

      procedure Generate_Initializer_Specification
       (Position : Class_Sets.Cursor)
      is
         Class : constant Class_Access := Class_Sets.Element (Position);

      begin
         if not Class.Is_Abstract then
            New_Line;
            Put_Line
             ("   procedure Initialize_" & To_Ada_Identifier (Class.Name));
            Put_Line
             ("    (Self   : Cmof_" & To_Ada_Identifier (Class.Name) & ";");
            Put_Line ("     Extent : CMOF_Extent);");
         end if;
      end Generate_Initializer_Specification;

   begin
      New_Line;
      Put_Line ("package Cmof.Internals.Constructors is");

      Classes.Iterate (Generate_Constructor_Specification'Access);
      Classes.Iterate (Generate_Initializer_Specification'Access);

      New_Line;
      Put_Line ("end Cmof.Internals.Constructors;");
   end Generate_Constructors_Specification;

end Generator.Constructors;
