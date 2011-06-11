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
with Qt4.Settings.Constructors;
with Qt4.Strings;
with Qt4.Variants;

with Main_Windows.Moc;

package body Main_Windows is

   function "+" (Item : String) return Qt4.Strings.Q_String
     renames Qt4.Strings.From_Utf_8;

   -----------------
   -- Close_Event --
   -----------------

   overriding procedure Close_Event
     (Self  : not null access Main_Window;
      Event : not null access Qt4.Close_Events.Q_Close_Event'Class)
   is
      Settings : constant not null Qt4.Settings.Q_Settings_Access :=
        Qt4.Settings.Constructors.Create;

   begin
      Settings.Begin_Group (+"MainWindow");
      Settings.Set_Value (+"size", Qt4.Variants.Create (Self.Size));
      Settings.End_Group;
      Settings.Sync;
      Settings.Delete_Later;
   end Close_Event;

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      procedure Initialize (Self : not null access Main_Window'Class);

      ------------
      -- Create --
      ------------

      function Create return not null Main_Window_Access is
      begin
         return Self : constant not null Main_Window_Access
           := new Main_Window
         do
            Initialize (Self);
         end return;
      end Create;

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize (Self : not null access Main_Window'Class) is
         Settings : constant not null Qt4.Settings.Q_Settings_Access :=
           Qt4.Settings.Constructors.Create;

      begin
         Qt4.Main_Windows.Directors.Constructors.Initialize (Self);

         Settings.Begin_Group (+"MainWindow");

         if Settings.Contains (+"size") then
            Self.Resize (Settings.Value (+"size").To_Size);
         end if;

         Settings.End_Group;
         Settings.Delete_Later;
      end Initialize;

   end Constructors;

end Main_Windows;
