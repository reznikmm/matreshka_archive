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
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Element_Collections;
with AMF.Internals.Extents;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.CMOF_Reflection;

package body AMF.Internals.CMOF_Elements is

   use AMF.Internals.Tables.CMOF_Attributes;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant CMOF_Element_Proxy;
     Visitor : not null access AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor.all in AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class then
         CMOF_Element_Proxy'Class (Self.all).Enter_CMOF_Element
          (AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class (Visitor.all)'Access,
           Control);
      end if;
   end Enter_Element;

   -------------
   -- Element --
   -------------

   overriding function Element
    (Self : not null access constant CMOF_Element_Proxy)
       return AMF_Element is
   begin
      return Self.Id;
   end Element;

   ------------
   -- Extent --
   ------------

   overriding function Extent
    (Self : not null access constant CMOF_Element_Proxy)
       return AMF.Extents.Extent_Access is
   begin
      return
        AMF.Internals.Extents.Proxy
         (AMF.Internals.Tables.CMOF_Element_Table.Table (Self.Id).Extent);
   end Extent;

   ---------
   -- Get --
   ---------

   overriding function Get
    (Self     : not null access constant CMOF_Element_Proxy;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Internals.Tables.CMOF_Reflection.Get
         (Self.Id, CMOF_Element_Proxy'Class (Property.all).Id);
   end Get;

   --------------------
   -- Get_Meta_Class --
   --------------------

   overriding function Get_Meta_Class
    (Self : not null access constant CMOF_Element_Proxy)
       return AMF.CMOF.Classes.CMOF_Class_Access is
   begin
      return
        AMF.CMOF.Classes.CMOF_Class_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.CMOF_Reflection.Get_Meta_Class (Self.Id)));
   end Get_Meta_Class;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant CMOF_Element_Proxy)
       return AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment is
   begin
      return
        AMF.CMOF.Comments.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Owned_Comment (Self.Id)));
   end Get_Owned_Comment;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
    (Self : not null access constant CMOF_Element_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element is
   begin
      return
        AMF.CMOF.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Owned_Element (Self.Id)));
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
    (Self : not null access constant CMOF_Element_Proxy)
       return AMF.CMOF.Elements.CMOF_Element_Access is
   begin
      return
        AMF.CMOF.Elements.CMOF_Element_Access
         (AMF.Internals.Helpers.To_Element
           (Internal_Get_Owner (Self.Id)));
   end Get_Owner;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant CMOF_Element_Proxy;
     Visitor : not null access AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor.all in AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class then
         CMOF_Element_Proxy'Class (Self.all).Leave_CMOF_Element
          (AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class (Visitor.all)'Access,
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant CMOF_Element_Proxy) return Boolean
   is
      pragma Unreferenced (Self);

      --  [UML241] 7.3.14 Element (from Kernel)
      --
      --  The query mustBeOwned() indicates whether elements of this type must
      --  have an owner. Subclasses of Element that do not require an owner
      --  must override this operation.
      --
      --  Element::mustBeOwned() : Boolean;
      --  mustBeOwned = true

   begin
      return True;
   end Must_Be_Owned;

   ---------
   -- Set --
   ---------

   overriding procedure Set
    (Self     : not null access CMOF_Element_Proxy;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder) is
   begin
      AMF.Internals.Tables.CMOF_Reflection.Set
       (Self.Id, CMOF_Element_Proxy'Class (Property.all).Id, Value);
   end Set;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant CMOF_Element_Proxy;
     Iterator : not null access AMF.Visitors.Abstract_Iterator'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator.all in AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class then
         CMOF_Element_Proxy'Class (Self.all).Visit_CMOF_Element
          (AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class (Iterator.all)'Access,
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.CMOF_Elements;
