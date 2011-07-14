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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Containers.Hashed_Maps;
with Ada.Strings.Unbounded.Hash;

package Configure is

   use type Ada.Strings.Unbounded.Unbounded_String;

   package Maps is
     new Ada.Containers.Hashed_Maps
          (Ada.Strings.Unbounded.Unbounded_String,
           Ada.Strings.Unbounded.Unbounded_String,
           Ada.Strings.Unbounded.Hash,
           Ada.Strings.Unbounded."=");

   package String_Vectors is
     new Ada.Containers.Indefinite_Vectors (Positive, String);

   Substitutions : Maps.Map;

   --  Names of variables in matreshka_config.gpr.in

   Architecture_Name          : constant Ada.Strings.Unbounded.Unbounded_String
     := Ada.Strings.Unbounded.To_Unbounded_String ("ARCHITECTURE");
   Operating_System_Name      : constant Ada.Strings.Unbounded.Unbounded_String
     := Ada.Strings.Unbounded.To_Unbounded_String ("OPERATING_SYSTEM");
   RTL_Version_Suffix_Name    : constant Ada.Strings.Unbounded.Unbounded_String
     := Ada.Strings.Unbounded.To_Unbounded_String ("RTL_VERSION_SUFFIX");

   --  Internal variables to pass values between test subprogram.

   Target_Triplet : Ada.Strings.Unbounded.Unbounded_String;

   --  Command line parameters handling.

   function Has_Parameter (Name : String) return Boolean;
   --  Returns True when parameter's value is specified in command line.

   function Parameter_Value (Name : String) return String;
   --  Returns value of the parameter specified in command line.

   --  Output and fatal error handling.

   procedure Information (Message : String);
   --  Outputs information message.

   procedure Warning (Message : String);
   --  Outputs warning message.

   procedure Fatal_Error (Message : String);
   --  Outputs fatal message error and raises Internal_Error exception.

   Is_Windows : Boolean := False;

   Internal_Error : exception;

end Configure;
