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
with League.Text_Codecs;

with Matreshka.DOM_Documents;
with Matreshka.DOM_Lists;

package body Matreshka.DOM_Nodes is

   procedure Raise_DOM_Exception
    (Self      : not null access Node'Class;
     Diagnosis : XML.DOM.Error_Code)
       with No_Return => True;

   ------------------
   -- Append_Child --
   ------------------

   overriding function Append_Child
    (Self      : not null access Node;
     New_Child : not null XML.DOM.Nodes.DOM_Node_Access)
       return not null XML.DOM.Nodes.DOM_Node_Access
   is
      N : constant Node_Access := Node_Access (New_Child);

   begin
      --  Remove node from its curent position in the tree.

      if N.Parent /= null then
         Matreshka.DOM_Lists.Remove_From_Children (N);

      --  Remove node from the list of detached nodes.

      else
         Matreshka.DOM_Lists.Remove_From_Detached (N);
      end if;

      --  And append node to the requested position.

      Matreshka.DOM_Lists.Insert_Into_Children (Self, N);

      return New_Child;
   end Append_Child;

   --------------------------
   -- Check_Wrong_Document --
   --------------------------

   procedure Check_Wrong_Document
    (Self : not null access Node'Class;
     Node : not null access XML.DOM.Nodes.DOM_Node'Class) is
   begin
      if Self.Document
           /= Matreshka.DOM_Nodes.Node'Class (Node.all).Document
      then
         Self.Raise_Wrong_Document_Error;
      end if;
   end Check_Wrong_Document;

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize
       (Self     : not null access Node'Class;
        Document : not null Document_Access)
      is
         S : constant Node_Access := Node_Access (Self);

      begin
         --  Append element to the list of detached nodes of the document.

         Self.Document := Document;

         if Self /= Document then
            --  All nodes except document node are added into the list of
            --  detached nodes of owner document.

            Matreshka.DOM_Lists.Insert_Into_Detached (S);
         end if;
      end Initialize;

   end Constructors;

   ---------------------
   -- Get_First_Child --
   ---------------------

   overriding function Get_First_Child
    (Self : not null access constant Node)
       return XML.DOM.Nodes.DOM_Node_Access is
   begin
      return XML.DOM.Nodes.DOM_Node_Access (Self.First);
   end Get_First_Child;

   --------------------
   -- Get_Last_Child --
   --------------------

   overriding function Get_Last_Child
    (Self : not null access constant Node)
       return XML.DOM.Nodes.DOM_Node_Access is
   begin
      return XML.DOM.Nodes.DOM_Node_Access (Self.Last);
   end Get_Last_Child;

   --------------------
   -- Get_Local_Name --
   --------------------

   overriding function Get_Local_Name
    (Self : not null access constant Node)
       return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      return League.Strings.Empty_Universal_String;
   end Get_Local_Name;

   -----------------------
   -- Get_Namespace_URI --
   -----------------------

   overriding function Get_Namespace_URI
    (Self : not null access constant Node)
       return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      return League.Strings.Empty_Universal_String;
   end Get_Namespace_URI;

   ----------------------
   -- Get_Next_Sibling --
   ----------------------

   overriding function Get_Next_Sibling
    (Self : not null access constant Node)
       return XML.DOM.Nodes.DOM_Node_Access is
   begin
      return XML.DOM.Nodes.DOM_Node_Access (Self.Next);
   end Get_Next_Sibling;

   --------------------
   -- Get_Node_Value --
   --------------------

   overriding function Get_Node_Value
    (Self : not null access constant Node)
       return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      return League.Strings.Empty_Universal_String;
   end Get_Node_Value;

   ------------------------
   -- Get_Owner_Document --
   ------------------------

   overriding function Get_Owner_Document
    (Self : not null access constant Node)
       return XML.DOM.Documents.DOM_Document_Access is
   begin
      return XML.DOM.Documents.DOM_Document_Access (Self.Document);
   end Get_Owner_Document;

   ---------------------
   -- Get_Parent_Node --
   ---------------------

   overriding function Get_Parent_Node
    (Self : not null access constant Node)
       return XML.DOM.Nodes.DOM_Node_Access is
   begin
      return XML.DOM.Nodes.DOM_Node_Access (Self.Parent);
   end Get_Parent_Node;

   --------------------------
   -- Get_Previous_Sibling --
   --------------------------

   overriding function Get_Previous_Sibling
    (Self : not null access constant Node)
       return XML.DOM.Nodes.DOM_Node_Access is
   begin
      return XML.DOM.Nodes.DOM_Node_Access (Self.Previous);
   end Get_Previous_Sibling;

   -------------------------
   -- Raise_DOM_Exception --
   -------------------------

   procedure Raise_DOM_Exception
    (Self      : not null access Node'Class;
     Diagnosis : XML.DOM.Error_Code) is
   begin
      Self.Document.Diagnosis := Diagnosis;

      raise XML.DOM.DOM_Exception
        with League.Text_Codecs.To_Exception_Message
              (Self.Document.Error_String);
   end Raise_DOM_Exception;

   --------------------------------
   -- Raise_DOMString_Size_Error --
   --------------------------------

   procedure Raise_DOMString_Size_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.DOMString_Size_Error);
   end Raise_DOMString_Size_Error;

   -----------------------------------
   -- Raise_Hierarchy_Request_Error --
   -----------------------------------

   procedure Raise_Hierarchy_Request_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Hierarchy_Request_Error);
   end Raise_Hierarchy_Request_Error;

   ----------------------------
   -- Raise_Index_Size_Error --
   ----------------------------

   procedure Raise_Index_Size_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Index_Size_Error);
   end Raise_Index_Size_Error;

   ---------------------------------
   -- Raise_Inuse_Attribute_Error --
   ---------------------------------

   procedure Raise_Inuse_Attribute_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Inuse_Attribute_Error);
   end Raise_Inuse_Attribute_Error;

   --------------------------------
   -- Raise_Invalid_Access_Error --
   --------------------------------

   procedure Raise_Invalid_Access_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Invalid_Access_Error);
   end Raise_Invalid_Access_Error;

   -----------------------------------
   -- Raise_Invalid_Character_Error --
   -----------------------------------

   procedure Raise_Invalid_Character_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Invalid_Character_Error);
   end Raise_Invalid_Character_Error;

   --------------------------------------
   -- Raise_Invalid_Modification_Error --
   --------------------------------------

   procedure Raise_Invalid_Modification_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Invalid_Modification_Error);
   end Raise_Invalid_Modification_Error;

   -------------------------------
   -- Raise_Invalid_State_Error --
   -------------------------------

   procedure Raise_Invalid_State_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Invalid_State_Error);
   end Raise_Invalid_State_Error;

   ---------------------------
   -- Raise_Namespace_Error --
   ---------------------------

   procedure Raise_Namespace_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Namespace_Error);
   end Raise_Namespace_Error;

   ---------------------------------
   -- Raise_No_Data_Allowed_Error --
   ---------------------------------

   procedure Raise_No_Data_Allowed_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.No_Data_Allowed_Error);
   end Raise_No_Data_Allowed_Error;

   -----------------------------------------
   -- Raise_No_Modification_Allowed_Error --
   -----------------------------------------

   procedure Raise_No_Modification_Allowed_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.No_Modification_Allowed_Error);
   end Raise_No_Modification_Allowed_Error;

   ---------------------------
   -- Raise_Not_Found_Error --
   ---------------------------

   procedure Raise_Not_Found_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Not_Found_Error);
   end Raise_Not_Found_Error;

   -------------------------------
   -- Raise_Not_Supported_Error --
   -------------------------------

   procedure Raise_Not_Supported_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Not_Supported_Error);
   end Raise_Not_Supported_Error;

   ------------------------
   -- Raise_Syntax_Error --
   ------------------------

   procedure Raise_Syntax_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Syntax_Error);
   end Raise_Syntax_Error;

   -------------------------------
   -- Raise_Type_Mismatch_Error --
   -------------------------------

   procedure Raise_Type_Mismatch_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Type_Mismatch_Error);
   end Raise_Type_Mismatch_Error;

   ----------------------------
   -- Raise_Validation_Error --
   ----------------------------

   procedure Raise_Validation_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Validation_Error);
   end Raise_Validation_Error;

   --------------------------------
   -- Raise_Wrong_Document_Error --
   --------------------------------

   procedure Raise_Wrong_Document_Error
    (Self : not null access Node'Class) is
   begin
      Self.Raise_DOM_Exception (XML.DOM.Wrong_Document_Error);
   end Raise_Wrong_Document_Error;

   ------------------
   -- Remove_Child --
   ------------------

   overriding function Remove_Child
    (Self      : not null access Node;
     Old_Child : not null XML.DOM.Nodes.DOM_Node_Access)
       return not null XML.DOM.Nodes.DOM_Node_Access
   is
      N : constant Matreshka.DOM_Nodes.Node_Access
        := Matreshka.DOM_Nodes.Node_Access (Old_Child);

   begin
      if N.Parent /= Self then
         Self.Raise_Not_Found_Error;
      end if;

      --  Remove node from its curent position in the tree and insert into the
      --  list of detached nodes.

      Matreshka.DOM_Lists.Remove_From_Children (N);
      Matreshka.DOM_Lists.Insert_Into_Detached (N);

      return Old_Child;
   end Remove_Child;

   --------------------
   -- Set_Node_Value --
   --------------------

   overriding procedure Set_Node_Value
    (Self      : not null access Node;
     New_Value : League.Strings.Universal_String)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (New_Value);

   begin
      null;
   end Set_Node_Value;

end Matreshka.DOM_Nodes;
