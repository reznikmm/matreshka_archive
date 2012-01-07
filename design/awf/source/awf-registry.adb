------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
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
with Ada.Containers.Hashed_Maps;
with Ada.Containers.Ordered_Maps;
with Ada.Strings.Hash;

with League.Strings.Hash;

package body AWF.Registry is

   use type AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access;

   package Id_Widget_Maps is
     new Ada.Containers.Ordered_Maps
          (Natural, AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access);

   package String_Callback_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Callback_Access,
           League.Strings.Hash,
           League.Strings."=");

   type String_Callback_Map_Access is access all String_Callback_Maps.Map;

   function Hash (Item : Ada.Tags.Tag) return Ada.Containers.Hash_Type;

   package Tag_Callback_Maps is
     new Ada.Containers.Hashed_Maps
          (Ada.Tags.Tag, String_Callback_Map_Access, Hash, Ada.Tags."=");

   Widget_Registry : Id_Widget_Maps.Map;
   Class_Registry  : Tag_Callback_Maps.Map;
   R               : AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access;

   ----------
   -- Hash --
   ----------

   function Hash (Item : Ada.Tags.Tag) return Ada.Containers.Hash_Type is
   begin
      return Ada.Strings.Hash (Ada.Tags.External_Tag (Item));
   end Hash;

   -----------------------
   -- Register_Callback --
   -----------------------

   procedure Register_Callback
    (Class    : Ada.Tags.Tag;
     Id       : League.Strings.Universal_String;
     Callback : not null Callback_Access)
   is
      Position : Tag_Callback_Maps.Cursor := Class_Registry.Find (Class);
      Registry : String_Callback_Map_Access;

   begin
      if Tag_Callback_Maps.Has_Element (Position) then
         Registry := Tag_Callback_Maps.Element (Position);

      else
         Registry := new String_Callback_Maps.Map;
         Class_Registry.Insert (Class, Registry);
      end if;

      Registry.Insert (Id, Callback);
   end Register_Callback;

   ---------------------
   -- Register_Widget --
   ---------------------

   procedure Register_Widget
    (Widget : not null AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access) is
   begin
      if R = null then
         R := Widget;
      end if;

      Widget_Registry.Insert (Widget.Id, Widget);
   end Register_Widget;

   -------------
   -- Resolve --
   -------------

   function Resolve
    (Class : Ada.Tags.Tag;
     Id    : League.Strings.Universal_String) return Callback_Access
   is
      use type Ada.Tags.Tag;

      Class_Position    : constant Tag_Callback_Maps.Cursor
        := Class_Registry.Find (Class);
      Registry          : String_Callback_Map_Access;
      Callback_Position : String_Callback_Maps.Cursor;
      Super_Class       : Ada.Tags.Tag;

   begin
      --  Looking for callback registry for specified class.

      if Tag_Callback_Maps.Has_Element (Class_Position) then
         Registry := Tag_Callback_Maps.Element (Class_Position);

         --  Looking for callback in the registry and returns it when it is
         --  found.

         Callback_Position := Registry.Find (Id);

         if String_Callback_Maps.Has_Element (Callback_Position) then
            return String_Callback_Maps.Element (Callback_Position);
         end if;
      end if;

      --  Looking for callback in superclass.

      Super_Class := Ada.Tags.Parent_Tag (Class);

      if Super_Class /= Ada.Tags.No_Tag then
         return Resolve (Super_Class, Id);

      --  Returns null when callback is not found.

      else
         return null;
      end if;
   end Resolve;

   -------------
   -- Resolve --
   -------------

   function Resolve
    (Path : League.Strings.Universal_String)
       return AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access
   is
      Id : constant Natural
        := Integer'Wide_Wide_Value (Path.To_Wide_Wide_String);

   begin
      return Widget_Registry.Element (Id);
   end Resolve;

   ----------
   -- Root --
   ----------

   function Root return AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access is
   begin
      return R;
   end Root;

end AWF.Registry;
