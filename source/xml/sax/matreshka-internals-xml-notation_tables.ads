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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.Internals.Strings;

package Matreshka.Internals.XML.Notation_Tables is

   pragma Preelaborate;

   type Notation_Table is limited private;

   procedure New_Notation
    (Self      : in out Notation_Table;
     Name      : Symbol_Identifier;
     Public_Id : Matreshka.Internals.Strings.Shared_String_Access;
     System_Id : Matreshka.Internals.Strings.Shared_String_Access;
     Notation  : out Notation_Identifier);
   --  Allocates new notation.

   procedure Finalize (Self : in out Notation_Table);
   --  Releases occupied resources.

   procedure Reset (Self : in out Notation_Table);
   --  Resets to initial state.

private

   type Notation_Record is record
      Name      : Symbol_Identifier;
      Public_Id : Matreshka.Internals.Strings.Shared_String_Access;
      System_Id : Matreshka.Internals.Strings.Shared_String_Access;
   end record;

   type Notation_Array is
     array (Notation_Identifier range <>) of Notation_Record;

   type Notation_Array_Access is access all Notation_Array;

   type Notation_Table is limited record
      Table : Notation_Array_Access := new Notation_Array (1 .. 15);
      Last  : Notation_Identifier   := No_Notation;
   end record;

end Matreshka.Internals.XML.Notation_Tables;
