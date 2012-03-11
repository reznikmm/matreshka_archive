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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.Internals.Extents;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.OCL_Element_Table;
with AMF.Internals.Tables.OCL_Reflection;

package body AMF.Internals.OCL_Elements is

   -------------
   -- Element --
   -------------

   overriding function Element
    (Self : not null access constant OCL_Element_Proxy)
       return AMF.Internals.AMF_Element is
   begin
      return Self.Id;
   end Element;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant OCL_Element_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      raise Program_Error;
--      if Visitor.all in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
--         UML_Element_Proxy'Class (Self.all).Enter_UML_Element
--          (AMF.Visitors.UML_Visitors.UML_Visitor'Class (Visitor.all)'Access,
--           Control);
--      end if;
   end Enter_Element;

   ------------
   -- Extent --
   ------------

   overriding function Extent
    (Self : not null access constant OCL_Element_Proxy)
       return AMF.Extents.Extent_Access is
   begin
      return
        AMF.Internals.Extents.Proxy
         (AMF.Internals.Tables.OCL_Element_Table.Table (Self.Id).Extent);
   end Extent;

   ---------
   -- Get --
   ---------

   overriding function Get
    (Self     : not null access constant OCL_Element_Proxy;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return League.Holders.Holder is
   begin
      return
        AMF.Internals.Tables.OCL_Reflection.Get
         (Self.Id,
          AMF.Internals.Helpers.To_Element
           (AMF.Elements.Element_Access (Property)));
   end Get;

   --------------------
   -- Get_Meta_Class --
   --------------------

   overriding function Get_Meta_Class
    (Self : not null access constant OCL_Element_Proxy)
       return AMF.CMOF.Classes.CMOF_Class_Access is
   begin
      return
        AMF.CMOF.Classes.CMOF_Class_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.OCL_Reflection.Get_Meta_Class (Self.Id)));
   end Get_Meta_Class;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant OCL_Element_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      raise Program_Error;
--      if Visitor.all in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
--         UML_Element_Proxy'Class (Self.all).Leave_UML_Element
--          (AMF.Visitors.UML_Visitors.UML_Visitor'Class (Visitor.all)'Access,
--           Control);
--      end if;
   end Leave_Element;

--   -------------------
--   -- Must_Be_Owned --
--   -------------------
--
--   overriding function Must_Be_Owned
--    (Self : not null access constant UML_Element_Proxy) return Boolean
--   is
--      pragma Unreferenced (Self);
--
--      --  [UML241] 7.3.14 Element (from Kernel)
--      --
--      --  The query mustBeOwned() indicates whether elements of this type must
--      --  have an owner. Subclasses of Element that do not require an owner
--      --  must override this operation.
--      --
--      --  Element::mustBeOwned() : Boolean;
--      --  mustBeOwned = true
--
--   begin
--      return True;
--   end Must_Be_Owned;

   ---------
   -- Set --
   ---------

   overriding procedure Set
    (Self     : not null access OCL_Element_Proxy;
     Property : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Value    : League.Holders.Holder) is
   begin
      AMF.Internals.Tables.OCL_Reflection.Set
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (Property)),
        Value);
   end Set;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant OCL_Element_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      raise Program_Error;
--      if Iterator.all in AMF.Visitors.OCL_Iterators.OCL_Iterator'Class then
--         OCL_Element_Proxy'Class (Self.all).Visit_OCL_Element
--          (AMF.Visitors.OCL_Iterators.OCL_Iterator'Class (Iterator.all)'Access,
--           Control);
--      end if;
   end Visit_Element;

end AMF.Internals.OCL_Elements;
