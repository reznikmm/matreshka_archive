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
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.CMOF_Attributes;

package body AMF.Internals.CMOF_Classifiers is

   use AMF.Internals.Tables.CMOF_Attributes;

   -----------------
   -- Conforms_To --
   -----------------

   overriding function Conforms_To
    (Self  : not null access constant CMOF_Classifier_Proxy;
     Other : AMF.CMOF.Types.CMOF_Type_Access)
       return Boolean
   is
      --  7.3.8  Classifier (from Kernel, Dependencies, PowerTypes, Interfaces)
      --
      --  [6] The query conformsTo() gives true for a classifier that defines a
      --  type that conforms to another. This is used, for example, in the
      --  specification of signature conformance for operations.
      --
      --  Classifier::conformsTo(other: Classifier): Boolean;
      --
      --  conformsTo = (self=other) or (self.allParents()->includes(other))

      use type AMF.CMOF.Types.CMOF_Type_Access;

      Generals : constant AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier
        := Self.Get_General;
      General  : AMF.CMOF.Classifiers.CMOF_Classifier_Access;

   begin
      if AMF.CMOF.Types.CMOF_Type_Access (Self) = Other then
         --  Class always conforms to itself.

         return True;
      end if;

      for J in 1 .. Generals.Length loop
         General := Generals.Element (J);

         if General.Conforms_To (Other) then
            --  If general classifier conforms to the specified type when
            --  classifier conforms to is also.

            return True;
         end if;
      end loop;

      --  Otherwise, classifier doesn't conforms to the type.

      return False;
   end Conforms_To;

   -------------------
   -- Get_Attribute --
   -------------------

   overriding function Get_Attribute
    (Self : not null access constant CMOF_Classifier_Proxy)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property is
   begin
      return
        AMF.CMOF.Properties.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Attribute (Self.Element)));
   end Get_Attribute;

   -----------------
   -- Get_Feature --
   -----------------

   overriding function Get_Feature
    (Self : not null access constant CMOF_Classifier_Proxy)
       return AMF.CMOF.Features.Collections.Set_Of_CMOF_Feature is
   begin
      return
        AMF.CMOF.Features.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Feature (Self.Element)));
   end Get_Feature;

   -----------------
   -- Get_General --
   -----------------

   overriding function Get_General
    (Self : not null access constant CMOF_Classifier_Proxy)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier is
   begin
      return
        AMF.CMOF.Classifiers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_General (Self.Element)));
   end Get_General;

   --------------------------
   -- Get_Inherited_Member --
   --------------------------

   overriding function Get_Inherited_Member
    (Self : not null access constant CMOF_Classifier_Proxy)
       return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element is
   begin
      return
        AMF.CMOF.Named_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Inherited_Member (Self.Element)));
   end Get_Inherited_Member;

   ---------------------------------
   -- Get_Is_Final_Specialization --
   ---------------------------------

   overriding function Get_Is_Final_Specialization
    (Self : not null access constant CMOF_Classifier_Proxy)
       return Boolean is
   begin
      return Internal_Get_Is_Final_Specialization (Self.Element);
   end Get_Is_Final_Specialization;

   -----------------
   -- Get_Package --
   -----------------

   overriding function Get_Package
    (Self : not null access constant CMOF_Classifier_Proxy)
       return AMF.CMOF.Packages.CMOF_Package_Access is
   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (AMF.Internals.Helpers.To_Element (Internal_Get_Package (Self.Element)));
   end Get_Package;

end AMF.Internals.CMOF_Classifiers;
