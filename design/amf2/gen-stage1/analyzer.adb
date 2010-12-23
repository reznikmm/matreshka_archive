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
with Ada.Strings.Unbounded;
with Ada.Text_IO;

with Generator;

package body Analyzer is

   use Ada.Strings.Unbounded;
   use Ada.Text_IO;
   use Generator;

   procedure Compute_All_Properties (Position : Class_Sets.Cursor);
   --  Compute list of all properties of the class.

   procedure Compute_Indices (Position : Class_Sets.Cursor);
   --  Compute indices for all properties. All_Properties attribute must be
   --  computed already.

   procedure Resolve_Redefined_Property (Position : Class_Sets.Cursor);
   --  Resolve Redefined_Property attribute for all class's properties.

   procedure Resolve_Association (Position : Association_Sets.Cursor);
   --  Resolve Property::association attribute for both ends of association.

   Current_Class : Class_Access;
   --  Currently processed class.

   -------------
   -- Analyze --
   -------------

   procedure Analyze is
   begin
      --  Resolve Redefined_Property attribute.

      Classes.Iterate (Resolve_Redefined_Property'Access);

      --  Compute list of all class's properties.

      Classes.Iterate (Compute_All_Properties'Access);

      --  Compute properties' indices.

      Classes.Iterate (Compute_Indices'Access);

      --  Resolves Property::association attribute.

      Associations.Iterate (Resolve_Association'Access);
   end Analyze;

   ----------------------------
   -- Compute_All_Properties --
   ----------------------------

   procedure Compute_All_Properties (Position : Class_Sets.Cursor) is

      procedure Process_Property (Position : Property_Sets.Cursor);
      --  Process property by adding it to the set of all properties of the
      --  currently processed class (this operation can be called for
      --  superclass also).

      procedure Process_Superclass (Position : Unbounded_String_Sets.Cursor);
      --  Process superclass by resolving its identifier and recursively call
      --  Compute_All_Properties.

      ----------------------
      -- Process_Property --
      ----------------------

      procedure Process_Property (Position : Property_Sets.Cursor) is
         Property  : Property_Access := Property_Sets.Element (Position);
         Duplicate : Property_Full_Sets.Cursor :=
           Current_Class.All_Properties.Find (Property);

      begin
         if not Property_Full_Sets.Has_Element (Duplicate) then
            Current_Class.All_Properties.Insert (Property);
         end if;
      end Process_Property;

      ------------------------
      -- Process_Superclass --
      ------------------------

      procedure Process_Superclass (Position : Unbounded_String_Sets.Cursor) is
         Id    : Unbounded_String := Unbounded_String_Sets.Element (Position);
         Class : Class_Access := Class_Access (Elements.Element (Id));

      begin
         Class.Properties.Iterate (Process_Property'Access);
         Class.Super_Classes.Iterate (Process_Superclass'Access);
      end Process_Superclass;

      Class : Class_Access := Class_Sets.Element (Position);

   begin
      if Current_Class = null then
         Current_Class := Class;
      end if;

      Class.Properties.Iterate (Process_Property'Access);
      Class.Super_Classes.Iterate (Process_Superclass'Access);

      if Current_Class = Class then
         Current_Class := null;
      end if;
   end Compute_All_Properties;

   ---------------------
   -- Compute_Indices --
   ---------------------

   procedure Compute_Indices (Position : Class_Sets.Cursor) is

      procedure Process_Property (Position : Property_Full_Sets.Cursor);

      Class           : Class_Access := Class_Sets.Element (Position);
      Last_Collection : Natural := 0;
      Last_Single     : Natural := 0;
      Index           : Natural;

      ----------------------
      -- Process_Property --
      ----------------------

      procedure Process_Property (Position : Property_Full_Sets.Cursor) is

         Property : Property_Access := Property_Full_Sets.Element (Position);

      begin
         if Property.Redefined_Property /= null then
            if Property.Redefined_Property.Redefined_Property /= null then
               raise Program_Error
                 with "chain of redefinition is not supported";
            end if;

            --  Property redefines another property, both properties share
            --  the same collection/field.

            declare
               Expansion : Property_Expansion_Maps.Cursor :=
                 Class.Expansion.Find (Property.Redefined_Property);

            begin
               if Property_Expansion_Maps.Has_Element (Expansion) then
                  Class.Expansion.Insert
                    (Property,
                     new Property_Expansion_Record'
                           (Index =>
                              Property_Expansion_Maps.Element
                                (Expansion).Index));

               else
                  if Is_Collection_Of_Element (Property) then
                     Last_Collection := Last_Collection + 1;
                     Index := Last_Collection;

                  else
                     Last_Single := Last_Single + 1;
                     Index := Last_Single;
                  end if;

                  Class.Expansion.Insert
                    (Property, new Property_Expansion_Record'(Index => Index));
                  Class.Expansion.Insert
                    (Property.Redefined_Property,
                     new Property_Expansion_Record'(Index => Index));
               end if;
            end;

         else
            if Is_Collection_Of_Element (Property) then
               Last_Collection := Last_Collection + 1;
               Index := Last_Collection;

            else
               Last_Single := Last_Single + 1;
               Index := Last_Single;
            end if;

            Class.Expansion.Insert
              (Property, new Property_Expansion_Record'(Index => Index));
         end if;
      end Process_Property;

   begin
      if not Class.Is_Abstract then
         --  Indices are computed for non-abstract classes only.

         Class.All_Properties.Iterate (Process_Property'Access);
         Class.Collection_Slots := Last_Collection;
      end if;
   end Compute_Indices;

   -------------------------
   -- Resolve_Association --
   -------------------------

   procedure Resolve_Association (Position : Association_Sets.Cursor) is
      Association : constant Association_Access
        := Association_Sets.Element (Position);
      First_End   : constant Property_Access
        := Property_Access (To_Element (Association.First_End));
      Second_End  : constant Property_Access
        := Property_Access (To_Element (Association.Second_End));

   begin
      First_End.Association := Association;
      Second_End.Association := Association;
   end Resolve_Association;

   --------------------------------
   -- Resolve_Redefined_Property --
   --------------------------------

   procedure Resolve_Redefined_Property (Position : Class_Sets.Cursor) is

      procedure Process_Property (Position : Property_Sets.Cursor);
      --  Resolve Redefined_Property attribute.

      ----------------------
      -- Process_Property --
      ----------------------

      procedure Process_Property (Position : Property_Sets.Cursor) is
         Property : Property_Access := Property_Sets.Element (Position);

      begin
         if Property.Redefined_Property_Id /= Null_Unbounded_String then
            Property.Redefined_Property :=
              Property_Access
                (Elements.Element (Property.Redefined_Property_Id));
         end if;
      end Process_Property;

      Class : Class_Access := Class_Sets.Element (Position);

   begin
      Class.Properties.Iterate (Process_Property'Access);
   end Resolve_Redefined_Property;

end Analyzer;
