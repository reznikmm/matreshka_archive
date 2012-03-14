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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.MOF_Attributes;
with AMF.Visitors.MOF_Iterators;
with AMF.Visitors.MOF_Visitors;
with League.Strings.Internals;

package body AMF.Internals.MOF_Tags is

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant MOF_Tag_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.MOF_Visitors.MOF_Visitor'Class then
         AMF.Visitors.MOF_Visitors.MOF_Visitor'Class
          (Visitor).Enter_Tag (AMF.MOF.Tags.MOF_Tag_Access (Self), Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant MOF_Tag_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.MOF_Visitors.MOF_Visitor'Class then
         AMF.Visitors.MOF_Visitors.MOF_Visitor'Class
          (Visitor).Leave_Tag (AMF.MOF.Tags.MOF_Tag_Access (Self), Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant MOF_Tag_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.MOF_Iterators.MOF_Iterator'Class then
         AMF.Visitors.MOF_Iterators.MOF_Iterator'Class
          (Iterator).Visit_Tag
            (Visitor, AMF.MOF.Tags.MOF_Tag_Access (Self), Control);
      end if;
   end Visit_Element;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant MOF_Tag_Proxy)
       return League.Strings.Universal_String is
   begin
      return
        League.Strings.Internals.Create
         (AMF.Internals.Tables.MOF_Attributes.Internal_Get_Name (Self.Id));
   end Get_Name;

   --------------
   -- Set_Name --
   --------------

   overriding procedure Set_Name
    (Self : not null access MOF_Tag_Proxy;
     To   : League.Strings.Universal_String) is
   begin
      AMF.Internals.Tables.MOF_Attributes.Internal_Set_Name
       (Self.Id,
        League.Strings.Internals.Internal (To));
   end Set_Name;

   ---------------
   -- Get_Value --
   ---------------

   overriding function Get_Value
    (Self : not null access constant MOF_Tag_Proxy)
       return League.Strings.Universal_String is
   begin
      return
        League.Strings.Internals.Create
         (AMF.Internals.Tables.MOF_Attributes.Internal_Get_Value (Self.Id));
   end Get_Value;

   ---------------
   -- Set_Value --
   ---------------

   overriding procedure Set_Value
    (Self : not null access MOF_Tag_Proxy;
     To   : League.Strings.Universal_String) is
   begin
      AMF.Internals.Tables.MOF_Attributes.Internal_Set_Value
       (Self.Id,
        League.Strings.Internals.Internal (To));
   end Set_Value;

   -----------------
   -- Get_Element --
   -----------------

   overriding function Get_Element
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.MOF_Attributes.Internal_Get_Element
             (Self.Id)));
   end Get_Element;

   -------------------
   -- Get_Tag_Owner --
   -------------------

   overriding function Get_Tag_Owner
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.MOF_Attributes.Internal_Get_Tag_Owner
             (Self.Id)));
   end Get_Tag_Owner;

   -------------------
   -- Set_Tag_Owner --
   -------------------

   overriding procedure Set_Tag_Owner
    (Self : not null access MOF_Tag_Proxy;
     To   : AMF.UML.Elements.UML_Element_Access) is
   begin
      AMF.Internals.Tables.MOF_Attributes.Internal_Set_Tag_Owner
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Tag_Owner;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment is
   begin
      return
        AMF.UML.Comments.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.MOF_Attributes.Internal_Get_Owned_Comment
             (Self.Id)));
   end Get_Owned_Comment;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.MOF_Attributes.Internal_Get_Owned_Element
             (Self.Id)));
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.MOF_Attributes.Internal_Get_Owner
             (Self.Id)));
   end Get_Owner;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure MOF_Tag_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant MOF_Tag_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented procedure MOF_Tag_Proxy.Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.MOF_Tags;
