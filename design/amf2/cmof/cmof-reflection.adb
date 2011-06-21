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
with CMOF.Associations;
with CMOF.Classes;
with CMOF.Collections;
with CMOF.Extents;
with CMOF.Internals.Extents;
with CMOF.Internals.Reflection;
with CMOF.Properties;

package body CMOF.Reflection is

   use CMOF.Associations;
   use CMOF.Classes;
   use CMOF.Collections;
   use CMOF.Extents;
   use CMOF.Properties;

   function All_Properties_Except_Redefined
    (Self : CMOF_Class) return CMOF_Element_Sets.Set;
   --  Returns all properties of the specified class (including properties of
   --  superclasses, but except redefined properties).

   -------------------------------------
   -- All_Properties_Except_Redefined --
   -------------------------------------

   function All_Properties_Except_Redefined
    (Self : CMOF_Class) return CMOF_Element_Sets.Set
   is
      Result        : CMOF_Element_Sets.Set;
      All_Redefined : CMOF_Element_Sets.Set;

      procedure Process_Class (Class : CMOF_Class);

      -------------------
      -- Process_Class --
      -------------------

      procedure Process_Class (Class : CMOF_Class) is
         Owned_Attribute    : constant Ordered_Set_Of_CMOF_Property
           := Get_Owned_Attribute (Class);
         Super_Class        : constant Set_Of_CMOF_Class
           := Get_Super_Class (Class);

      begin
         --  Analyze owned properties.

         for J in 1 .. Length (Owned_Attribute) loop
            declare
               Attribute          : constant CMOF_Property
                 := Element (Owned_Attribute, J);
               Redefined_Property : constant Set_Of_CMOF_Property
                 := Get_Redefined_Property (Attribute);

            begin
               --  Add all redefined properties into the set of redefined
               --  properties.

               for J in 1 .. Length (Redefined_Property) loop
                  declare
                     Redefined : constant CMOF_Property
                       := Element (Redefined_Property, J);

                  begin
                     if not All_Redefined.Contains (Redefined) then
                        All_Redefined.Insert (Redefined);
                     end if;
                  end;
               end loop;

               --  Add attribute into the result when it is not redefined and
               --  not in the result set already.

               if not All_Redefined.Contains (Attribute)
                 and not Result.Contains (Attribute)
               then
                  Result.Insert (Attribute);
               end if;
            end;
         end loop;

         --  Analyze superclasses

         for J in 1 .. Length (Super_Class) loop
            Process_Class (Element (Super_Class, J));
         end loop;
      end Process_Class;

   begin
      Process_Class (Self);

      return Result;
   end All_Properties_Except_Redefined;

   ---------------
   -- Container --
   ---------------

   function Container (Self : CMOF_Element) return CMOF_Element
     renames CMOF.Internals.Extents.Container;

   ---------
   -- Get --
   ---------

   function Get
    (Self     : CMOF_Element;
     Property : CMOF_Property) return League.Holders.Holder is
   begin
      return CMOF.Internals.Reflection.Get (Self, Property);
   end Get;

   --------------------
   -- Get_Meta_Class --
   --------------------

   function Get_Meta_Class (Self : CMOF_Element) return CMOF_Class is
   begin
      return CMOF.Internals.Reflection.Get_Meta_Class (Self);
   end Get_Meta_Class;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self     : CMOF_Element;
     Property : CMOF_Property;
     Value    : League.Holders.Holder) is
   begin
      CMOF.Internals.Reflection.Set (Self, Property, Value);
   end Set;

end CMOF.Reflection;
