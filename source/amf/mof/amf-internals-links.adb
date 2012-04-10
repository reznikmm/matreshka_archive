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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.CMOF.Associations;
with AMF.Internals.AMF_Links;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Listener_Registry;
with AMF.Internals.Tables.AMF_Link_Table;
with AMF.Internals.Tables.AMF_Types;
with AMF.Internals.Tables.CMOF_Attributes;

package body AMF.Internals.Links is

   use AMF.Internals.Tables;

   function Internal_Create_Link
    (Association     : CMOF_Element;
     First_Element   : AMF_Element;
     First_Property  : CMOF_Element;
     Second_Element  : AMF_Element;
     Second_Property : CMOF_Element) return AMF_Link;
   --  Internal implementation of link creation.

   -----------------
   -- Create_Link --
   -----------------

   function Create_Link
    (Association    : CMOF_Element;
     First_Element  : AMF_Element;
     Second_Element : AMF_Element) return AMF_Link
   is
      Member_End      : constant AMF_Collection_Of_Element
        := AMF.Internals.Tables.CMOF_Attributes.Internal_Get_Member_End
            (Association);
      First_Property  : constant CMOF_Element
        := AMF.Internals.Element_Collections.Element (Member_End, 1);
      Second_Property : constant CMOF_Element
        := AMF.Internals.Element_Collections.Element (Member_End, 2);
      Link            : constant AMF_Link
        := AMF.Internals.Links.Internal_Create_Link
            (Association,
             First_Element,
             AMF.Internals.Element_Collections.Element (Member_End, 1),
             Second_Element,
             AMF.Internals.Element_Collections.Element (Member_End, 2));

   begin
      --  Synchronize set of links.
      --
      --  XXX This operations need to be circular probably to allow to handle
      --  complicated cases.

      AMF.Internals.Helpers.Synchronize_Link_Set
       (First_Element, First_Property, Link);
      AMF.Internals.Helpers.Synchronize_Link_Set
       (Second_Element, Second_Property, Link);

      return Link;
   end Create_Link;

   -----------------
   -- Create_Link --
   -----------------

   procedure Create_Link
    (Association    : CMOF_Element;
     First_Element  : AMF_Element;
     Second_Element : AMF_Element)
   is
      Aux : constant AMF_Link
        := Create_Link (Association, First_Element, Second_Element);
      pragma Unreferenced (Aux);

   begin
      null;
   end Create_Link;

   --------------------------
   -- Internal_Create_Link --
   --------------------------

   function Internal_Create_Link
    (Association     : CMOF_Element;
     First_Element   : AMF_Element;
     First_Property  : CMOF_Element;
     Second_Element  : AMF_Element;
     Second_Property : CMOF_Element) return AMF_Link
   is
      procedure Create_Single_Single;

      procedure Create_Single_Multiple;

      procedure Create_Multiple_Single;

      procedure Create_Multiple_Multiple;

      ------------------------------
      -- Create_Multiple_Multiple --
      ------------------------------

      procedure Create_Multiple_Multiple is
         Link : constant AMF_Link := AMF_Link_Table.Last;

      begin
         AMF_Link_Table.Table (Link) :=
          (AMF_Types.L_Multiple_Multiple,
           new AMF.Internals.AMF_Links.AMF_Link_Proxy'(Id => Link),
           Association,
           First_Element,
           Second_Element,
           Link);
      end Create_Multiple_Multiple;

      ----------------------------
      -- Create_Multiple_Single --
      ----------------------------

      procedure Create_Multiple_Single is
         Link : constant AMF_Link := AMF_Link_Table.Last;

      begin
         AMF_Link_Table.Table (Link) :=
          (AMF_Types.L_Multiple_Single,
           new AMF.Internals.AMF_Links.AMF_Link_Proxy'(Id => Link),
           Association,
           First_Element,
           Second_Element,
           Link);
      end Create_Multiple_Single;

      ----------------------------
      -- Create_Single_Multiple --
      ----------------------------

      procedure Create_Single_Multiple is
         Link : constant AMF_Link := AMF_Link_Table.Last;

      begin
         AMF_Link_Table.Table (Link) :=
          (AMF_Types.L_Single_Multiple,
           new AMF.Internals.AMF_Links.AMF_Link_Proxy'(Id => Link),
           Association,
           First_Element,
           Second_Element,
           Link);
      end Create_Single_Multiple;

      --------------------------
      -- Create_Single_Single --
      --------------------------

      procedure Create_Single_Single is
         Link : constant AMF_Link := AMF_Link_Table.Last;

      begin
         AMF_Link_Table.Table (Link) :=
          (AMF_Types.L_Single_Single,
           new AMF.Internals.AMF_Links.AMF_Link_Proxy'(Id => Link),
           Association,
           First_Element,
           Second_Element,
           Link);
      end Create_Single_Single;

   begin
      AMF_Link_Table.Increment_Last;

      if AMF.Internals.Tables.CMOF_Attributes.Internal_Get_Upper
          (First_Property).Value > 1
      then
         if AMF.Internals.Tables.CMOF_Attributes.Internal_Get_Upper
             (Second_Property).Value > 1
         then
            Create_Multiple_Multiple;

         else
            Create_Multiple_Single;
         end if;

      else
         if AMF.Internals.Tables.CMOF_Attributes.Internal_Get_Upper
             (Second_Property).Value > 1
         then
            Create_Single_Multiple;

         else
            Create_Single_Single;
         end if;
      end if;

      AMF.Internals.Helpers.Connect_Link_End
       (First_Element, First_Property, AMF_Link_Table.Last, Second_Element);
      AMF.Internals.Helpers.Connect_Link_End
       (Second_Element, Second_Property, AMF_Link_Table.Last, First_Element);

      AMF.Internals.Listener_Registry.Notify_Link_Add
       (AMF.CMOF.Associations.CMOF_Association_Access
         (AMF.Internals.Helpers.To_Element (Association)),
        AMF.Internals.Helpers.To_Element (First_Element),
        AMF.Internals.Helpers.To_Element (Second_Element));

      return AMF_Link_Table.Last;
   end Internal_Create_Link;

   --------------------------
   -- Internal_Create_Link --
   --------------------------

   procedure Internal_Create_Link
    (Association     : CMOF_Element;
     First_Element   : AMF_Element;
     First_Property  : CMOF_Element;
     Second_Element  : AMF_Element;
     Second_Property : CMOF_Element)
   is
      Aux : constant AMF_Link
        := Internal_Create_Link
            (Association,
             First_Element,
             First_Property,
             Second_Element,
             Second_Property);
      pragma Unreferenced (Aux);

   begin
      null;
   end Internal_Create_Link;

   ----------------------
   -- Opposite_Element --
   ----------------------

   function Opposite_Element
    (Self    : AMF_Link;
     Element : AMF_Element) return AMF_Element is
   begin
      if Self = No_AMF_Link then
         return No_AMF_Element;

      elsif AMF_Link_Table.Table (Self).First_Element = Element then
         return AMF_Link_Table.Table (Self).Second_Element;

      else
         return AMF_Link_Table.Table (Self).First_Element;
      end if;
   end Opposite_Element;

   -----------
   -- Proxy --
   -----------

   function Proxy (Self : AMF_Link) return not null AMF.Links.Link_Access is
   begin
      return AMF.Links.Link_Access (AMF_Link_Table.Table (Self).Proxy);
   end Proxy;

end AMF.Internals.Links;
