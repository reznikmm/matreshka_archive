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
with AMF.Elements;
with AMF.Holders.Elements;

package body AMF.Internals.Holders.CMOF_Holders is

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Associations.CMOF_Association_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Classes.CMOF_Class_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Constraints.CMOF_Constraint_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Data_Types.CMOF_Data_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Elements.CMOF_Element_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Enumerations.CMOF_Enumeration_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Namespaces.CMOF_Namespace_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Operations.CMOF_Operation_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Packages.CMOF_Package_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Types.CMOF_Type_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder
    (Item : AMF.CMOF.Value_Specifications.CMOF_Value_Specification_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Holders.Elements.To_Holder (AMF.Elements.Element_Access (Item));
   end To_Holder;

end AMF.Internals.Holders.CMOF_Holders;
