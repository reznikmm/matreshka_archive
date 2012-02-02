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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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

package body Configure.Component_Switches is

   --------------------
   -- Component_Name --
   --------------------

   function Create
    (Name           : String;
     Description    : String;
     Enabled        : Boolean := True;
     Libdir_Enabled : Boolean := False) return Component_Switches is
   begin
      return
       (Name           => +Name,
        Description    => +Description,
        Enable         => Enabled,
        Libdir_Enabled => Libdir_Enabled,
        others         => <>);
   end Create;

   -------------------
   -- Enable_Libdir --
   -------------------

   procedure Enable_Libdir
    (Self    : in out Component_Switches'Class;
     Enabled : Boolean) is
   begin
      Self.Libdir_Enabled := Enabled;
   end Enable_Libdir;

   ----------
   -- Help --
   ----------

   function Help
    (Self : Component_Switches'Class) return Unbounded_String_Vector
   is
      procedure Append
       (Help        : in out Unbounded_String_Vector;
        Switch      : Unbounded_String;
        Description : Unbounded_String);

      ------------
      -- Append --
      ------------

      procedure Append
       (Help        : in out Unbounded_String_Vector;
        Switch      : Unbounded_String;
        Description : Unbounded_String)
      is
         Stop : constant := 26;
         Line : Unbounded_String := "  " & Switch;

      begin
         if Length (Line) > Stop then
            Help.Append (Line);
            Help.Append (Stop * ' ' & Description);

         else
            Head (Line, Stop, ' ');
            Append (Line, Description);
            Help.Append (Line);
         end if;
      end Append;

   begin
      return Result : Unbounded_String_Vector do
         if Self.Enable then
            Append
             (Result, "--enable-" & Self.Name, "enable " & Self.Description);

         else
            Append
             (Result, "--disable-" & Self.Name, "enable " & Self.Description);
         end if;

         if Self.Libdir_Enabled then
            Append
             (Result,
              "--with-" & Self.Name & "-libdir=ARG",
              +"  lookup for libraries in ARG");
         end if;
      end return;
   end Help;

   -------------------------
   -- Is_Enable_Specified --
   -------------------------

   function Is_Enable_Specified
    (Self : Component_Switches'Class) return Boolean is
   begin
      return Self.Enable_Specified;
   end Is_Enable_Specified;

   ----------------
   -- Is_Enabled --
   ----------------

   function Is_Enabled (Self : Component_Switches'Class) return Boolean is
   begin
      return Self.Enable;
   end Is_Enabled;

   -------------------------
   -- Is_Libdir_Specified --
   -------------------------

   function Is_Libdir_Specified
    (Self : Component_Switches'Class) return Boolean is
   begin
      return Self.Libdir_Specified;
   end Is_Libdir_Specified;

   ------------
   -- Libdir --
   ------------

   function Libdir (Self : Component_Switches'Class) return Unbounded_String is
   begin
      --  XXX Synthetic value should be constructed then necessary.

      return Self.Libdir;
   end Libdir;

   --------------------
   -- Parse_Switches --
   --------------------

   procedure Parse_Switches
    (Self      : in out Component_Switches'Class;
     Arguments : in out Unbounded_String_Vector)
   is
      Enable   : constant Unbounded_String := "--enable-" & Self.Name;
      Disable  : constant Unbounded_String := "--disable-" & Self.Name;
      Within   : constant Unbounded_String := "--with-" & Self.Name;
      Without  : constant Unbounded_String := "--without-" & Self.Name;
      Libdir   : constant Unbounded_String := "--with-" & Self.Name & "-libdir";
      Index    : Positive := 1;

   begin
      while Index <= Integer (Arguments.Length) loop
         declare
            Argument : constant Unbounded_String := Arguments.Element (Index);

         begin
            if Argument = Enable or Argument = Within then
               Self.Enable := True;
               Self.Enable_Specified := True;
               Arguments.Delete (Index);

            elsif Argument = Disable or Argument = Without then
               Self.Enable := False;
               Self.Enable_Specified := True;
               Arguments.Delete (Index);

            elsif Self.Libdir_Enabled
              and then Length (Argument) > Length (Libdir)
              and then Slice (Argument, 1, Length (Libdir)) = Libdir
              and then Element (Argument, Length (Libdir) + 1) = '='
            then
               Self.Libdir :=
                 Unbounded_Slice
                  (Argument, Length (Libdir) + 2, Length (Argument));
               Self.Libdir_Specified := True;
               Self.Enable := True;
               Arguments.Delete (Index);

            else
               Index := Index + 1;
            end if;
         end;
      end loop;
   end Parse_Switches;

end Configure.Component_Switches;
