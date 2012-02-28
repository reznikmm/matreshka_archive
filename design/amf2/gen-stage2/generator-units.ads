------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package provides capability to handle code of Ada unit.
------------------------------------------------------------------------------
with Ada.Wide_Wide_Text_IO;

private with League.String_Vectors;

with Generator.Contexts;

package Generator.Units is

   type Unit is tagged limited private;

   procedure Add (Self : in out Unit; Item : League.Strings.Universal_String);
   --  Adds text to the last line.

   procedure Add_Line
    (Self : in out Unit;
     Item : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String);
   --  Adds text to the last line and moves to the new line.

   procedure Add_Unit_Header
    (Self       : in out Unit;
     First_Year : Positive;
     Last_Year  : Positive);
   --  Adds unit header.

   function Context
    (Self : in out Unit)
       return not null access Generator.Contexts.Context'Class;
   --  Returns unit's context.

   procedure Put
    (Self : Unit;
     File : Ada.Wide_Wide_Text_IO.File_Type
       := Ada.Wide_Wide_Text_IO.Standard_Output);
   --  Outputs content of the unit into specified file.

private

   type Unit is tagged limited record
      Context      : aliased Generator.Contexts.Context;
      Header_Lines : League.String_Vectors.Universal_String_Vector;
      Lines        : League.String_Vectors.Universal_String_Vector;
   end record;

end Generator.Units;
