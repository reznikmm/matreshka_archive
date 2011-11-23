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

package body AMF.Internals.UML_Link_End_Destruction_Datas is

   --------------------
   -- Get_Destroy_At --
   --------------------

   overriding function Get_Destroy_At
    (Self : not null access constant UML_Link_End_Destruction_Data_Proxy)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access is
   begin
      return
        AMF.UML.Input_Pins.UML_Input_Pin_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Destroy_At
             (Self.Id)));
   end Get_Destroy_At;

   --------------------
   -- Set_Destroy_At --
   --------------------

   overriding procedure Set_Destroy_At
    (Self : not null access UML_Link_End_Destruction_Data_Proxy;
     To   : AMF.UML.Input_Pins.UML_Input_Pin_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Destroy_At
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Destroy_At;

   -------------------------------
   -- Get_Is_Destroy_Duplicates --
   -------------------------------

   overriding function Get_Is_Destroy_Duplicates
    (Self : not null access constant UML_Link_End_Destruction_Data_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Destroy_Duplicates
         (Self.Id);
   end Get_Is_Destroy_Duplicates;

   -------------------------------
   -- Set_Is_Destroy_Duplicates --
   -------------------------------

   overriding procedure Set_Is_Destroy_Duplicates
    (Self : not null access UML_Link_End_Destruction_Data_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Destroy_Duplicates
       (Self.Id, To);
   end Set_Is_Destroy_Duplicates;

   -------------
   -- Get_End --
   -------------

   overriding function Get_End
    (Self : not null access constant UML_Link_End_Destruction_Data_Proxy)
       return AMF.UML.Properties.UML_Property_Access is
   begin
      return
        AMF.UML.Properties.UML_Property_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_End
             (Self.Id)));
   end Get_End;

   -------------
   -- Set_End --
   -------------

   overriding procedure Set_End
    (Self : not null access UML_Link_End_Destruction_Data_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_End
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_End;

   -------------------
   -- Get_Qualifier --
   -------------------

   overriding function Get_Qualifier
    (Self : not null access constant UML_Link_End_Destruction_Data_Proxy)
       return AMF.UML.Qualifier_Values.Collections.Set_Of_UML_Qualifier_Value is
   begin
      return
        AMF.UML.Qualifier_Values.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Qualifier
             (Self.Id)));
   end Get_Qualifier;

   ---------------
   -- Get_Value --
   ---------------

   overriding function Get_Value
    (Self : not null access constant UML_Link_End_Destruction_Data_Proxy)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access is
   begin
      return
        AMF.UML.Input_Pins.UML_Input_Pin_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Value
             (Self.Id)));
   end Get_Value;

   ---------------
   -- Set_Value --
   ---------------

   overriding procedure Set_Value
    (Self : not null access UML_Link_End_Destruction_Data_Proxy;
     To   : AMF.UML.Input_Pins.UML_Input_Pin_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Value
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Value;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Link_End_Destruction_Data_Proxy)
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
    (Self : not null access constant UML_Link_End_Destruction_Data_Proxy)
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
    (Self : not null access constant UML_Link_End_Destruction_Data_Proxy)
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
    (Self : not null access constant UML_Link_End_Destruction_Data_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Link_End_Destruction_Data_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Link_End_Destruction_Data_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Link_End_Destruction_Data_Proxy.Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Link_End_Destruction_Datas;
