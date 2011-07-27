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
--  This is implementation of package for POSIX systems.
------------------------------------------------------------------------------
with Ada.Directories;

with League.Characters;
with League.Text_Codecs;

separate (XML.SAX.Input_Sources.Streams.Files)
package body Naming_Utilities is

   use type League.Characters.Universal_Character;
   use type League.Strings.Universal_String;

   File_Protocol_Prefix : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("file://");

   -------------------
   -- Absolute_Name --
   -------------------

   function Absolute_Name
    (Name : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is

      function Current_Directory return League.Strings.Universal_String;

      -----------------------
      -- Current_Directory --
      -----------------------

      function Current_Directory return League.Strings.Universal_String is
         Aux : constant String := Ada.Directories.Current_Directory;
         Xua : Ada.Streams.Stream_Element_Array (1 .. Aux'Length);
         for Xua'Address use Aux'Address;

      begin
         return
           League.Text_Codecs.Codec_For_Application_Locale.Decode (Xua);
      end Current_Directory;

   begin
      if Name.Element (1) = '/' then
         return Name;

      else
         return Current_Directory & '/' & Name;
      end if;
   end Absolute_Name;

   ----------------------
   -- File_Name_To_URI --
   ----------------------

   function File_Name_To_URI
    (File_Name : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      return File_Protocol_Prefix & File_Name;
   end File_Name_To_URI;

   --------------------------
   -- To_Ada_RTL_File_Name --
   --------------------------

   function To_Ada_RTL_File_Name
    (Name : League.Strings.Universal_String) return String
   is
      Aux    : constant Ada.Streams.Stream_Element_Array
        := League.Text_Codecs.Codec_For_Application_Locale.Encode
            (Name).To_Stream_Element_Array;
      Result : String (1 .. Aux'Length);
      for Result'Address use Aux'Address;

   begin
      return Result;
   end To_Ada_RTL_File_Name;

   ----------------------
   -- URI_To_File_Name --
   ----------------------

   function URI_To_File_Name
    (URI : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      if URI.Starts_With (File_Protocol_Prefix) then
         return URI.Slice (8, URI.Length);

      else
         raise Constraint_Error;
      end if;
   end URI_To_File_Name;

end Naming_Utilities;
