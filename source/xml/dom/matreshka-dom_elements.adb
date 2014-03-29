------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.DOM_Attributes;
with Matreshka.DOM_Documents;
with Matreshka.DOM_Lists;

package body Matreshka.DOM_Elements is

   use type League.Strings.Universal_String;
   use type Matreshka.DOM_Nodes.Node_Access;

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize
       (Self     : not null access Abstract_Element_Node'Class;
        Document : not null Matreshka.DOM_Nodes.Document_Access) is
      begin
         Matreshka.DOM_Nodes.Constructors.Initialize (Self, Document);
      end Initialize;

   end Constructors;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Parameters : not null access Element_L2_Parameters)
       return Element_Node is
   begin
      return Self : Element_Node do
         Matreshka.DOM_Nodes.Constructors.Initialize
          (Self'Unchecked_Access, Parameters.Document);

         Self.Namespace_URI := Parameters.Namespace_URI;
         Self.Prefix        := Parameters.Prefix;
         Self.Local_Name    := Parameters.Local_Name;
      end return;
   end Create;

   ----------------
   -- Enter_Node --
   ----------------

   overriding procedure Enter_Node
    (Self    : not null access Abstract_Element_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Element
       (XML.DOM.Elements.DOM_Element_Access (Self), Control);
   end Enter_Node;

   ---------------------------
   -- Get_Attribute_Node_NS --
   ---------------------------

   overriding function Get_Attribute_Node_NS
    (Self          : not null access Abstract_Element_Node;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return XML.DOM.Attributes.DOM_Attribute_Access
   is
      Current : Matreshka.DOM_Nodes.Node_Access := Self.First_Attribute;

   begin
      while Current /= null loop
         exit when
           Current.Get_Namespace_URI = Namespace_URI
             and then Current.Get_Local_Name = Local_Name;

         Current := Current.Next;
      end loop;

      return XML.DOM.Attributes.DOM_Attribute_Access (Current);
   end Get_Attribute_Node_NS;

   --------------------
   -- Get_Local_Name --
   --------------------

   overriding function Get_Local_Name
    (Self : not null access constant Element_Node)
       return League.Strings.Universal_String is
   begin
      return Self.Local_Name;
   end Get_Local_Name;

   -----------------------
   -- Get_Namespace_URI --
   -----------------------

   overriding function Get_Namespace_URI
    (Self : not null access constant Element_Node)
       return League.Strings.Universal_String is
   begin
      return Self.Namespace_URI;
   end Get_Namespace_URI;

   -------------------
   -- Get_Node_Type --
   -------------------

   overriding function Get_Node_Type
    (Self : not null access constant Abstract_Element_Node)
       return XML.DOM.Node_Type
   is
      pragma Unreferenced (Self);

   begin
      return XML.DOM.Element_Node;
   end Get_Node_Type;

   ------------------
   -- Get_Tag_Name --
   ------------------

   overriding function Get_Tag_Name
    (Self : not null access constant Abstract_Element_Node)
       return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      raise Program_Error;
      return League.Strings.Empty_Universal_String;
   end Get_Tag_Name;

   ----------------
   -- Leave_Node --
   ----------------

   overriding procedure Leave_Node
    (Self    : not null access Abstract_Element_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Element
       (XML.DOM.Elements.DOM_Element_Access (Self), Control);
   end Leave_Node;

   ---------------------------
   -- Set_Attribute_Node_NS --
   ---------------------------

   overriding function Set_Attribute_Node_NS
    (Self     : not null access Abstract_Element_Node;
     New_Attr : not null XML.DOM.Attributes.DOM_Attribute_Access)
       return XML.DOM.Attributes.DOM_Attribute_Access
   is
      use XML.DOM.Elements;
--      use type XML.DOM.Elements.DOM_Element_Access;

      New_Attribute : constant Matreshka.DOM_Nodes.Node_Access
        := Matreshka.DOM_Nodes.Node_Access (New_Attr);
      Old_Attribute : Matreshka.DOM_Nodes.Node_Access
        := Self.First_Attribute;

   begin
      Self.Check_Wrong_Document (New_Attr);

      if New_Attr.Get_Owner_Element /= null then
         Self.Raise_Inuse_Attribute_Error;
      end if;

      --  Lookup for existing attribute.

      while Old_Attribute /= null loop
         if Old_Attribute.all
              in Matreshka.DOM_Attributes.Abstract_Attribute_L2_Node'Class
         then
            if Old_Attribute = New_Attribute then
               return New_Attr;

            elsif Old_Attribute.Get_Local_Name = New_Attribute.Get_Local_Name
              and Old_Attribute.Get_Namespace_URI
                    = New_Attribute.Get_Namespace_URI
            then
               --  Detach old attribute from the list of element's attributes
               --  and attach it to the list of detached nodes of document.

               Matreshka.DOM_Lists.Remove_From_Attributes (Old_Attribute);
               Matreshka.DOM_Lists.Insert_Into_Detached (Old_Attribute);

               exit;
            end if;
         end if;

         Old_Attribute := Old_Attribute.Next;
      end loop;

      --  Append new attribute node to the list of element's attributes.

      Matreshka.DOM_Lists.Remove_From_Detached (New_Attribute);
      Matreshka.DOM_Lists.Insert_Into_Attributes (Self, New_Attribute);

      return XML.DOM.Attributes.DOM_Attribute_Access (Old_Attribute);
   end Set_Attribute_Node_NS;

   ----------------
   -- Visit_Node --
   ----------------

   overriding procedure Visit_Node
    (Self     : not null access Abstract_Element_Node;
     Iterator : in out XML.DOM.Visitors.Abstract_Iterator'Class;
     Visitor  : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control  : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Iterator.Visit_Element
       (Visitor, XML.DOM.Elements.DOM_Element_Access (Self), Control);
   end Visit_Node;

end Matreshka.DOM_Elements;
