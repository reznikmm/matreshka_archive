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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Strings.Internals;
with Matreshka.Internals.Strings;

with AMF.Internals.Tables.UML_Attributes;

package body AMF.Internals.UML_Named_Elements is

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant UML_Named_Element_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace
   is
      --  [UML 2.4.1] 7.3.34 NamedElement (from Kernel, Dependencies)
      --
      --  [1] The query allNamespaces() gives the sequence of namespaces in
      --  which the NamedElement is nested, working outwards.
      --
      --  NamedElement::allNamespaces(): Sequence(Namespace);
      --
      --  allNamespaces =
      --    if self.namespace->isEmpty()
      --    then Sequence{}
      --    else self.namespace.allNamespaces()->prepend(self.namespace)
      --    endif

      use type AMF.UML.Namespaces.UML_Namespace_Access;

      The_Namespace : AMF.UML.Namespaces.UML_Namespace_Access
        := UML_Named_Element_Proxy'Class (Self.all).Get_Namespace;

   begin
      return Result :
               AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace
      do
         while The_Namespace /= null loop
            Result.Add (The_Namespace);
            The_Namespace := The_Namespace.Get_Namespace;
         end loop;
      end return;
   end All_Namespaces;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant UML_Named_Element_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.UML_Attributes.Internal_Get_Name
               (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Name;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
    (Self : not null access constant UML_Named_Element_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Visibility
         (Self.Element);
   end Get_Visibility;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant UML_Named_Element_Proxy)
       return League.Strings.Universal_String
   is
      --  [UML 2.4.1] 7.3.34 NamedElement (from Kernel, Dependencies)
      --
      --  Constraints
      --  [1] If there is no name, or one of the containing namespaces has no
      --  name, there is no qualified name.
      --
      --  (self.name->isEmpty()
      --     or self.allNamespaces()->select
      --         (ns | ns.name->isEmpty())->notEmpty())
      --  implies self.qualifiedName->isEmpty()
      --
      --  [2] When there is a name, and all of the containing namespaces have a
      --  name, the qualified name is constructed from the names of the
      --  containing namespaces.
      --
      --  (self.name->notEmpty()
      --     and self.allNamespaces()->select
      --          (ns | ns.name->isEmpty())->isEmpty())
      --  implies
      --    self.qualifiedName =
      --      self.allNamespaces()->iterate
      --       ( ns : Namespace; result: String = self.name |
      --           ns.name->union(self.separator())->union(result))

      Namespaces : constant
        AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace
          := UML_Named_Element_Proxy'Class (Self.all).All_Namespaces;
      Separator  : constant League.Strings.Universal_String
        := UML_Named_Element_Proxy'Class (Self.all).Separator;
      Name       : AMF.Optional_String
        := UML_Named_Element_Proxy'Class (Self.all).Get_Name;

   begin
      if Name.Is_Empty then
         return League.Strings.Empty_Universal_String;
      end if;

      return Result : League.Strings.Universal_String := Name.Value do
         for J in 1 .. Namespaces.Length loop
            Name := Namespaces.Element (J).Get_Name;

            if Name.Is_Empty then
               --  When name of one of owning namespaces is empty the qualified
               --  name is empty also. Clear result and exit from namespaces
               --  loop.

               Result.Clear;

               exit;

            else
               --  Otherwise prepend separator and name of the namespace.

               Result.Prepend (Separator);
               Result.Prepend (Name.Value);
            end if;
         end loop;
      end return;
   end Qualified_Name;

   ---------------
   -- Separator --
   ---------------

   overriding function Separator
    (Self : not null access constant UML_Named_Element_Proxy)
       return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

      --  [UML241] 7.3.34 NamedElement (from Kernel, Dependencies)
      --
      --  The query separator() gives the string that is used to separate names
      --  when constructing a qualified name.
      --
      --  NamedElement::separator(): String;
      --  separator = ‘::’

   begin
      return League.Strings.To_Universal_String ("::");
   end Separator;

   --------------
   -- Set_Name --
   --------------

   overriding procedure Set_Name
    (Self : not null access UML_Named_Element_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.UML_Attributes.Internal_Set_Name
          (Self.Element, null);

      else
         AMF.Internals.Tables.UML_Attributes.Internal_Set_Name
          (Self.Element, League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Name;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
    (Self : not null access UML_Named_Element_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Visibility
       (Self.Element, To);
   end Set_Visibility;

end AMF.Internals.UML_Named_Elements;
