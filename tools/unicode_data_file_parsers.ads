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
-- Copyright © 2009, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Containers.Indefinite_Vectors;
private with Ada.Finalization;
private with Ada.Text_IO;

package Unicode_Data_File_Parsers is

   package String_Vectors is
     new Ada.Containers.Indefinite_Vectors (Positive, String);

   type Unicode_Data_File_Parser is abstract tagged limited private;

   not overriding procedure Open
    (Self      : in out Unicode_Data_File_Parser;
     File_Name : String);

   not overriding procedure Close (Self : in out Unicode_Data_File_Parser);

   not overriding procedure Parse (Self : in out Unicode_Data_File_Parser);

   not overriding procedure Start_Section
    (Self : in out Unicode_Data_File_Parser;
     Name : String)
       is null;

   not overriding procedure End_Section
    (Self : in out Unicode_Data_File_Parser)
       is null;

   not overriding procedure Data
    (Self  : in out Unicode_Data_File_Parser;
     Data  : String_Vectors.Vector)
       is abstract;

private

   type Unicode_Data_File_Parser is
     abstract new Ada.Finalization.Limited_Controlled with
   record
      File : Ada.Text_IO.File_Type;
      Line : String (1 .. 1024);
      Last : Natural;
   end record;

   overriding procedure Finalize (Self : in out Unicode_Data_File_Parser);

end Unicode_Data_File_Parsers;
