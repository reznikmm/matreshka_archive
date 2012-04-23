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
with Ada.Containers.Vectors;

package body AMF.Internals.Listener_Registry is

   package Listener_Vectors is
     new Ada.Containers.Vectors
          (Positive, AMF.Listeners.Listener_Access, AMF.Listeners."=");

   Registry : Listener_Vectors.Vector;

   --------------------------
   -- Notify_Attribute_Set --
   --------------------------

   procedure Notify_Attribute_Set
    (Element   : not null AMF.Elements.Element_Access;
     Property  : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Position  : Optional_Integer;
     Old_Value : League.Holders.Holder;
     New_Value : League.Holders.Holder) is
   begin
      for J in 1 .. Natural (Registry.Length) loop
         Registry.Element (J).Attribute_Set
          (Element, Property, Position, Old_Value, New_Value);
      end loop;
   end Notify_Attribute_Set;

   --------------------------
   -- Notify_Extent_Create --
   --------------------------

   procedure Notify_Extent_Create
    (Extent : not null AMF.Extents.Extent_Access) is
   begin
      for J in 1 .. Natural (Registry.Length) loop
         Registry.Element (J).Extent_Create (Extent);
      end loop;
   end Notify_Extent_Create;

   ----------------------------
   -- Notify_Instance_Create --
   ----------------------------

   procedure Notify_Instance_Create
    (Element : not null AMF.Elements.Element_Access) is
   begin
      for J in 1 .. Natural (Registry.Length) loop
         Registry.Element (J).Instance_Create (Element);
      end loop;
   end Notify_Instance_Create;

   ---------------------
   -- Notify_Link_Add --
   ---------------------

   procedure Notify_Link_Add
    (Association    : not null AMF.CMOF.Associations.CMOF_Association_Access;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access) is
   begin
      for J in 1 .. Natural (Registry.Length) loop
         Registry.Element (J).Link_Add
          (Association, First_Element, Second_Element);
      end loop;
   end Notify_Link_Add;

   --------------
   -- Register --
   --------------

   procedure Register (Listener : not null AMF.Listeners.Listener_Access) is
   begin
      Registry.Append (Listener);
   end Register;

end AMF.Internals.Listener_Registry;
