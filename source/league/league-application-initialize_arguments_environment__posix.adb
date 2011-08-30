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
--  This version is for POSIX operating systems. Note, it depends from GNAT
--  runtime also.
------------------------------------------------------------------------------
with Ada.Streams;
with Ada.Strings.Fixed;
with Interfaces.C.Pointers;
with Interfaces.C.Strings;
with System.Address_To_Access_Conversions;

with League.Text_Codecs;

separate (League.Application)
procedure Initialize_Arguments_Environment is

   use type Interfaces.C.size_t;

   package chars_ptr_Pointers is
     new Interfaces.C.Pointers
          (Interfaces.C.size_t,
           Interfaces.C.Strings.chars_ptr,
           Interfaces.C.Strings.chars_ptr_array,
           Interfaces.C.Strings.Null_Ptr);

   package chars_ptr_Conversions is
     new System.Address_To_Access_Conversions (Interfaces.C.Strings.chars_ptr);

   function To_Stream_Element_Array
    (Item : String) return Ada.Streams.Stream_Element_Array;
   --  Converts string into Stream_Element_Array.

   GNAT_Argc : constant Integer;
   pragma Import (C, GNAT_Argc);
   GNAT_Argv : constant System.Address;
   pragma Import (C, GNAT_Argv);
   GNAT_Envp : constant System.Address;
   pragma Import (C, GNAT_Envp);

   -----------------------------
   -- To_Stream_Element_Array --
   -----------------------------

   function To_Stream_Element_Array
    (Item : String) return Ada.Streams.Stream_Element_Array
   is
      use type Ada.Streams.Stream_Element_Offset;

      Aux : constant Ada.Streams.Stream_Element_Array (0 .. Item'Length - 1);
      for Aux'Address use Item'Address;
      pragma Import (Ada, Aux);

   begin
      return Aux;
   end To_Stream_Element_Array;

begin
   --  Convert arguments.

   declare
      Argv : constant Interfaces.C.Strings.chars_ptr_array
        := chars_ptr_Pointers.Value
            (chars_ptr_Pointers.Pointer
              (chars_ptr_Conversions.To_Pointer (GNAT_Argv)),
             Interfaces.C.ptrdiff_t (GNAT_Argc));

   begin
      for J in Argv'First + 1 .. Argv'Last loop
         Args.Append
          (League.Text_Codecs.Codec_For_Application_Locale.Decode
            (To_Stream_Element_Array (Interfaces.C.Strings.Value (Argv (J)))));
      end loop;
   end;

   --  Convert process environment.

   declare
      Envp : constant Interfaces.C.Strings.chars_ptr_array
        := chars_ptr_Pointers.Value
            (chars_ptr_Pointers.Pointer
              (chars_ptr_Conversions.To_Pointer (GNAT_Envp)));

   begin
      for J in Envp'First .. Envp'Last - 1 loop
         declare
            Pair  : constant String := Interfaces.C.Strings.Value (Envp (J));
            Index : constant Natural := Ada.Strings.Fixed.Index (Pair, "=");

         begin
            Env.Insert
             (League.Text_Codecs.Codec_For_Application_Locale.Decode
               (To_Stream_Element_Array (Pair (Pair'First .. Index - 1))),
              League.Text_Codecs.Codec_For_Application_Locale.Decode
               (To_Stream_Element_Array (Pair (Index + 1 .. Pair'Last))));
         end;
      end loop;
   end;
end Initialize_Arguments_Environment;
