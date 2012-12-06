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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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

package body XML.SAX.Input_Sources.Streams.Files is

   use Ada.Streams.Stream_IO;

   package Naming_Utilities is

      function Absolute_Name
       (Name : League.Strings.Universal_String)
          return League.Strings.Universal_String;
      --  Constructs absolute name of the file when specified name is relative.

      function File_Name_To_URI
       (File_Name : League.Strings.Universal_String)
          return League.Strings.Universal_String;
      --  Extracts file name from the URI.

      function URI_To_File_Name
       (URI : League.Strings.Universal_String)
          return League.Strings.Universal_String;
      --  Extracts file name from the URI.

      function To_Ada_RTL_File_Name
       (Name : League.Strings.Universal_String) return String;
      --  Converts file name to Ada RTL convention.

   end Naming_Utilities;

   -----------
   -- Close --
   -----------

   not overriding procedure Close (Self : in out File_Input_Source) is
   begin
      Close (Self.File);
   end Close;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out File_Input_Source) is
   begin
      if Is_Open (Self.File) then
         Close (Self.File);
      end if;

      Stream_Input_Source (Self).Finalize;
   end Finalize;

   ----------------------
   -- Naming_Utilities --
   ----------------------

   package body Naming_Utilities is separate;

   -----------------------
   -- Open_By_File_Name --
   -----------------------

   not overriding procedure Open_By_File_Name
    (Self : in out File_Input_Source;
     Name : League.Strings.Universal_String)
   is
      File_Name : constant League.Strings.Universal_String
        := Naming_Utilities.Absolute_Name (Name);

   begin
      Open
       (Self.File,
        Ada.Streams.Stream_IO.In_File,
        Naming_Utilities.To_Ada_RTL_File_Name (File_Name));
      Self.Set_System_Id (Naming_Utilities.File_Name_To_URI (File_Name));
      Self.Set_Stream (Stream_Access (Stream (Self.File)));
   end Open_By_File_Name;

   -----------------
   -- Open_By_URI --
   -----------------

   not overriding procedure Open_By_URI
    (Self : in out File_Input_Source;
     URI  : League.Strings.Universal_String) is
   begin
      Self.Open_By_File_Name (Naming_Utilities.URI_To_File_Name (URI));
   end Open_By_URI;

   ----------------------
   -- URI_To_File_Name --
   ----------------------

   function URI_To_File_Name
    (URI : League.Strings.Universal_String)
       return League.Strings.Universal_String
         renames Naming_Utilities.URI_To_File_Name;

end XML.SAX.Input_Sources.Streams.Files;
