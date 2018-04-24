------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Web API Definition                            --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2018, Vadim Godunko <vgodunko@gmail.com>                     --
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

package WebAPI.Storages is

   pragma Preelaborate;

   type Storage is limited interface
     with Constant_Indexing => Get_Item;

   type Storage_Access is access all Storage'Class
     with Storage_Size => 0;

   not overriding function Length
    (Self : not null access constant Storage)
       return Natural is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "length";
   --  The length attribute must return the number of key/value pairs currently
   --  present in the list associated with the object.

   --  DOMString? key(unsigned long index);

   not overriding function Get_Item
    (Self : not null access constant Storage;
     Key  : WebAPI.DOM_String)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "getItem";
   --  The getItem(key) method must return the current value associated with
   --  the given key. If the given key does not exist in the list associated
   --  with the object then this method must return null.

   not overriding procedure Set_Item
    (Self  : not null access constant Storage;
     Key   : WebAPI.DOM_String;
     Value : WebAPI.DOM_String) is abstract
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "setItem";
   --  The setItem(key, value) method must first check if a key/value pair with
   --  the given key already exists in the list associated with the object.
   --
   -- If it does not, then a new key/value pair must be added to the list, with
   -- the given key and with its value set to value.
   --
   -- If the given key does exist in the list, and its value is not equal to
   -- value, then it must have its value updated to value. If its previous
   -- value is equal to value, then the method must do nothing.
   --
   -- If it couldn't set the new value, the method must throw a
   -- QuotaExceededError exception. (Setting could fail if, e.g., the user
   -- has disabled storage for the site, or if the quota has been exceeded.)

   not overriding procedure Remove_Item
    (Self  : not null access constant Storage;
     Key   : WebAPI.DOM_String) is abstract
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "removeItem";
   -- The removeItem(key) method must cause the key/value pair with the given
   -- key to be removed from the list associated with the object, if it exists.
   -- If no item with that key exists, the method must do nothing.

   not overriding procedure Clear
    (Self  : not null access constant Storage) is abstract
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "lear";
   -- The clear() method must atomically cause the list associated with the
   -- object to be emptied of all key/value pairs, if there are any. If there
   -- are none, then the method must do nothing.

end WebAPI.Storages;
