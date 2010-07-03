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
with Matreshka.Internals.Unicode;

package Matreshka.Internals.XML.Scanner is

   pragma Pure;

   --  Type declarations for data tables
   --
   --  XXX Equivalence class mapping tables can be made private and mapping
   --  function provided in this unit.

   subtype YY_Secondary_Index is
     Matreshka.Internals.Unicode.Code_Point range 0 .. 16#FF#;
   --  Type of the index in the secondary stage table of the equivalence
   --  class mapping.

   subtype YY_Primary_Index is
     Matreshka.Internals.Unicode.Code_Point range 0 .. 16#10FF#;
   --  Type of the index in the primary stage table of the equivalence
   --  class mapping.

   type YY_Secondary_Array is array (YY_Secondary_Index) of Integer;
   --  Type of the secondary stage table of the equivalence class mapping.

   type YY_Secondary_Array_Access is
     not null access constant YY_Secondary_Array;
   for YY_Secondary_Array_Access'Storage_Size use 0;
   --  Access type to the secondary stage table of the equivalence class
   --  mapping. It is used as type of the element in the primary stage table
   --  of the equivalence class mapping.

   type YY_Equivalence_Class_Mapping is
     array (YY_Primary_Index) of YY_Secondary_Array_Access;
   --  Type of the primary stage table of the equivalence class mapping.

   type YY_Equivalence_Class_Mapping_Access is
     not null access constant YY_Equivalence_Class_Mapping;
   for YY_Equivalence_Class_Mapping_Access'Storage_Size use 0;
   --  Access type to the primary stage table of the equivalence class mapping,
   --  or, in other words, equivalence class mapping by itself.

   type YY_Integer_Of_Integer_Array is array (Natural range <>) of Integer;

   type YY_Integer_Of_Integer_Array_Access is
     not null access constant YY_Integer_Of_Integer_Array;
   for YY_Integer_Of_Integer_Array_Access'Storage_Size use 0;

end Matreshka.Internals.XML.Scanner;
