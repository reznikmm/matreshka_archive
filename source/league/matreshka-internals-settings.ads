------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
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
with League.Holders;
with League.Strings;
with Matreshka.Atomics.Counters;

package Matreshka.Internals.Settings is

   pragma Preelaborate;

   type Abstract_Manager is abstract tagged limited null record;

   type Manager_Access is access all Abstract_Manager'Class;

   type Abstract_Settings (Manager : not null access Abstract_Manager'Class) is
     abstract tagged limited
   record
      Counter : Matreshka.Atomics.Counters.Counter;
   end record;

   not overriding function Contains
    (Self : Abstract_Settings;
     Key  : League.Strings.Universal_String) return Boolean is abstract;

   not overriding procedure Finalize
    (Self : not null access Abstract_Settings) is null;

   not overriding function Name
    (Self : not null access Abstract_Settings)
       return League.Strings.Universal_String is abstract;
   --  Returns name of the storage. For INI file storage it is name of the
   --  file, for Windows Registry storage it is system registry path.

   not overriding procedure Remove
    (Self : in out Abstract_Settings;
     Key  : League.Strings.Universal_String) is abstract;

   not overriding procedure Set_Value
    (Self  : in out Abstract_Settings;
     Key   : League.Strings.Universal_String;
     Value : League.Holders.Holder) is abstract;

   not overriding procedure Sync (Self : in out Abstract_Settings) is abstract;

   not overriding function Value
    (Self : Abstract_Settings;
     Key  : League.Strings.Universal_String)
       return League.Holders.Holder is abstract;

   type Settings_Access is access all Abstract_Settings'Class;

   procedure Reference (Self : not null Settings_Access);
   --  Increments reference counter.

   procedure Dereference (Self : in out Settings_Access);
   --  Decrements reference counter. Call Finalize and deallocate memory when
   --  reference counter reach zero. Always sets Self to null.

   ----------------------
   -- Abstract_Manager --
   ----------------------

   not overriding function Create
    (Self : not null access Abstract_Manager)
       return not null Settings_Access is abstract;
   --  Creates fallbacks proxy and set of underling settings storages.

   not overriding function Create
    (Self      : not null access Abstract_Manager;
     File_Name : League.Strings.Universal_String)
       return not null Settings_Access is abstract;
   --  Creates settings storage for the specified file.

   not overriding function Create
    (Self                : not null access Abstract_Manager;
     Organization_Name   : League.Strings.Universal_String;
     Organization_Domain : League.Strings.Universal_String;
     Application         : League.Strings.Universal_String)
       return not null Settings_Access is abstract;
   --  Creates settings storage for the specified organization and application.

   not overriding function To_Storage_Key
    (Self : not null access Abstract_Manager;
     Key  : League.Strings.Universal_String)
       return League.Strings.Universal_String is abstract;
   --  Converts specified key from user's representation into storage specific
   --  representation.

end Matreshka.Internals.Settings;
