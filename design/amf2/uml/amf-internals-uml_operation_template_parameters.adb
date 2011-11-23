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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.UML_Operation_Template_Parameters is

   -----------------------------
   -- Get_Parametered_Element --
   -----------------------------

   overriding function Get_Parametered_Element
    (Self : not null access constant UML_Operation_Template_Parameter_Proxy)
       return AMF.UML.Operations.UML_Operation_Access is
   begin
      return
        AMF.UML.Operations.UML_Operation_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Parametered_Element
             (Self.Id)));
   end Get_Parametered_Element;

   -----------------------------
   -- Set_Parametered_Element --
   -----------------------------

   overriding procedure Set_Parametered_Element
    (Self : not null access UML_Operation_Template_Parameter_Proxy;
     To   : AMF.UML.Operations.UML_Operation_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Parametered_Element
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Parametered_Element;

   -----------------
   -- Get_Default --
   -----------------

   overriding function Get_Default
    (Self : not null access constant UML_Operation_Template_Parameter_Proxy)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access is
   begin
      return
        AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Default
             (Self.Id)));
   end Get_Default;

   -----------------
   -- Set_Default --
   -----------------

   overriding procedure Set_Default
    (Self : not null access UML_Operation_Template_Parameter_Proxy;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Default
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Default;

   -----------------------
   -- Get_Owned_Default --
   -----------------------

   overriding function Get_Owned_Default
    (Self : not null access constant UML_Operation_Template_Parameter_Proxy)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access is
   begin
      return
        AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Default
             (Self.Id)));
   end Get_Owned_Default;

   -----------------------
   -- Set_Owned_Default --
   -----------------------

   overriding procedure Set_Owned_Default
    (Self : not null access UML_Operation_Template_Parameter_Proxy;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Owned_Default
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Owned_Default;

   -----------------------------------
   -- Get_Owned_Parametered_Element --
   -----------------------------------

   overriding function Get_Owned_Parametered_Element
    (Self : not null access constant UML_Operation_Template_Parameter_Proxy)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access is
   begin
      return
        AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Parametered_Element
             (Self.Id)));
   end Get_Owned_Parametered_Element;

   -----------------------------------
   -- Set_Owned_Parametered_Element --
   -----------------------------------

   overriding procedure Set_Owned_Parametered_Element
    (Self : not null access UML_Operation_Template_Parameter_Proxy;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Owned_Parametered_Element
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Owned_Parametered_Element;

   -----------------------------
   -- Get_Parametered_Element --
   -----------------------------

   overriding function Get_Parametered_Element
    (Self : not null access constant UML_Operation_Template_Parameter_Proxy)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access is
   begin
      return
        AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Parametered_Element
             (Self.Id)));
   end Get_Parametered_Element;

   -----------------------------
   -- Set_Parametered_Element --
   -----------------------------

   overriding procedure Set_Parametered_Element
    (Self : not null access UML_Operation_Template_Parameter_Proxy;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Parametered_Element
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Parametered_Element;

   -------------------
   -- Get_Signature --
   -------------------

   overriding function Get_Signature
    (Self : not null access constant UML_Operation_Template_Parameter_Proxy)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access is
   begin
      return
        AMF.UML.Template_Signatures.UML_Template_Signature_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Signature
             (Self.Id)));
   end Get_Signature;

   -------------------
   -- Set_Signature --
   -------------------

   overriding procedure Set_Signature
    (Self : not null access UML_Operation_Template_Parameter_Proxy;
     To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Signature
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Signature;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Operation_Template_Parameter_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment is
   begin
      return
        AMF.UML.Comments.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Comment
             (Self.Id)));
   end Get_Owned_Comment;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Operation_Template_Parameter_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Element
             (Self.Id)));
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
    (Self : not null access constant UML_Operation_Template_Parameter_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owner
             (Self.Id)));
   end Get_Owner;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Operation_Template_Parameter_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Template_Parameter_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Operation_Template_Parameter_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Template_Parameter_Proxy.Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Operation_Template_Parameters;
