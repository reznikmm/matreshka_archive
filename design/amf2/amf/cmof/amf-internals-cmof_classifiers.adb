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
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.CMOF_Attributes;

package body AMF.Internals.CMOF_Classifiers is

   use AMF.Internals.Tables.CMOF_Attributes;

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
           (Internal_Get_Attribute (Self.Id)));
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
           (Internal_Get_Feature (Self.Id)));
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
           (Internal_Get_General (Self.Id)));
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
           (Internal_Get_Inherited_Member (Self.Id)));
   end Get_Inherited_Member;

   ---------------------------------
   -- Get_Is_Final_Specialization --
   ---------------------------------

   overriding function Get_Is_Final_Specialization
    (Self : not null access constant CMOF_Classifier_Proxy)
       return Boolean is
   begin
      return Internal_Get_Is_Final_Specialization (Self.Id);
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
         (AMF.Internals.Helpers.To_Element (Internal_Get_Package (Self.Id)));
   end Get_Package;

end AMF.Internals.CMOF_Classifiers;
