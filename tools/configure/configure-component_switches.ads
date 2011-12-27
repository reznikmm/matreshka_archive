------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
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
--  This package provides generic support for handling switches for components:
--
--    - switches '--enable-<component>' and '--disable-<component>' and their
--      aliases '--with-<component>' and '--without-<component>' are handled
--      always; Is_Enabled returns corresponding value;
--
--    - switch '--with-<component>-libdir=<path>' is recognized then enabled.
------------------------------------------------------------------------------

package Configure.Component_Switches is

   type Component_Switches is tagged limited private;

   function Create
    (Name           : String;
     Description    : String;
     Enabled        : Boolean := True;
     Libdir_Enabled : Boolean := False) return Component_Switches;
   --  Creates initialize component's switches parser and initialize it to
   --  handle specified component name.

   function Help
    (Self : Component_Switches'Class) return Unbounded_String_Vector;
   --  Returns help information.

   procedure Parse_Switches
    (Self      : in out Component_Switches'Class;
     Arguments : in out Unbounded_String_Vector);
   --  Parses switches in Arguments and remove recognized switches.
   --
   --  XXX Error reporting interface should be added.

   function Is_Enabled (Self : Component_Switches'Class) return Boolean;
   --  Returns True when component is enabled by '--enable-<component>' or
   --  '--with-<component>' switch; or is not disabled explicitly by
   --  '--disable-<component>' or '--without-<component>' switches and enabled
   --  by default.

   function Is_Enable_Specified
    (Self : Component_Switches'Class) return Boolean;
   --  Returns True when '--enable-<component>' or '--with-<component>' is
   --  specified explicitly.

   procedure Enable_Libdir
    (Self    : in out Component_Switches'Class;
     Enabled : Boolean);
   --  Enables recognizing of '--with-<component>-libdir=<path>' and
   --  '--with-<component>=<path>' switches.

   function Libdir (Self : Component_Switches'Class) return Unbounded_String;
   --  Returns value of '--with-<component>-libdir=<path>' switchs of
   --  constructs synthetic value on base of value of
   --  '--with-<component>=<path>' switch.

   function Is_Libdir_Specified
    (Self : Component_Switches'Class) return Boolean;
   --  Returns True when '--with-<component>-libdir=<path>' switch is
   --  specified.

private

   type Component_Switches is tagged limited record
      Name             : Unbounded_String;
      Description      : Unbounded_String;
      Enable           : Boolean := True;
      Enable_Specified : Boolean := False;
      Libdir_Enabled   : Boolean := False;
      Libdir           : Unbounded_String;
      Libdir_Specified : Boolean := False;
   end record;

end Configure.Component_Switches;
