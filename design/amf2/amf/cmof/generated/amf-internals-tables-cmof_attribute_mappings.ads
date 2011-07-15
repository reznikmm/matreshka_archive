------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with Interfaces;

with AMF.Internals.Tables.CMOF_Metamodel;
with AMF.Internals.Tables.CMOF_Types;

package AMF.Internals.Tables.CMOF_Attribute_Mappings is

   use AMF.Internals.Tables.CMOF_Types;
   use AMF.Internals.Tables.CMOF_Metamodel;

   Collection_Offset : constant
     array (AMF.Internals.Tables.CMOF_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 34 .. 78)
       of AMF.Internals.AMF_Collection_Of_Element :=
        (E_None =>
          (others => 0),
         E_Association =>
          ( 43 => 9,
            58 => 4,
            34 => 15,
            44 => 10,
            45 => 11,
            59 => 3,
            46 => 12,
            60 => 7,
            35 => 16,
            36 => 17,
            53 => 2,
            54 => 1,
            37 => 14,
            61 => 6,
            62 => 8,
            63 => 5,
            77 => 13,
           others => 0),
         E_Class =>
          ( 43 => 9,
            58 => 4,
            44 => 10,
            45 => 11,
            59 => 3,
            46 => 12,
            60 => 7,
            40 => 13,
            53 => 2,
            54 => 1,
            61 => 6,
            41 => 14,
            62 => 8,
            63 => 5,
            42 => 11,
           others => 0),
         E_Comment =>
          ( 47 => 3,
            53 => 2,
            54 => 1,
           others => 0),
         E_Constraint =>
          ( 48 => 3,
            53 => 2,
            54 => 1,
           others => 0),
         E_Data_Type =>
          ( 43 => 9,
            58 => 4,
            44 => 10,
            45 => 11,
            59 => 3,
            46 => 12,
            60 => 7,
            49 => 13,
            53 => 2,
            54 => 1,
            61 => 6,
            50 => 14,
            62 => 8,
            63 => 5,
           others => 0),
         E_Element_Import =>
          ( 53 => 2,
            54 => 1,
            77 => 3,
            51 => 4,
            52 => 5,
           others => 0),
         E_Enumeration =>
          ( 43 => 9,
            58 => 4,
            44 => 10,
            45 => 11,
            59 => 3,
            46 => 12,
            60 => 7,
            49 => 13,
            53 => 2,
            54 => 1,
            55 => 15,
            61 => 6,
            50 => 14,
            62 => 8,
            63 => 5,
           others => 0),
         E_Enumeration_Literal =>
          ( 53 => 2,
            54 => 1,
           others => 0),
         E_Expression =>
          ( 56 => 3,
            53 => 2,
            54 => 1,
           others => 0),
         E_Opaque_Expression =>
          ( 53 => 2,
            54 => 1,
           others => 0),
         E_Operation =>
          ( 58 => 7,
            57 => 5,
            59 => 6,
            60 => 10,
            53 => 2,
            54 => 1,
            61 => 9,
            64 => 12,
            38 => 12,
            62 => 11,
            63 => 8,
            65 => 16,
            66 => 15,
            67 => 13,
            39 => 13,
            75 => 4,
            68 => 14,
            76 => 3,
           others => 0),
         E_Package =>
          ( 58 => 4,
            59 => 3,
            60 => 7,
            69 => 11,
            53 => 2,
            54 => 1,
            61 => 6,
            62 => 8,
            70 => 10,
            63 => 5,
            71 => 12,
            72 => 9,
           others => 0),
         E_Package_Import =>
          ( 53 => 2,
            54 => 1,
            77 => 3,
            51 => 4,
            52 => 5,
           others => 0),
         E_Package_Merge =>
          ( 53 => 2,
            54 => 1,
            77 => 3,
            51 => 4,
            52 => 5,
           others => 0),
         E_Parameter =>
          ( 53 => 2,
            54 => 1,
           others => 0),
         E_Primitive_Type =>
          ( 43 => 9,
            58 => 4,
            44 => 10,
            45 => 11,
            59 => 3,
            46 => 12,
            60 => 7,
            49 => 13,
            53 => 2,
            54 => 1,
            61 => 6,
            50 => 14,
            62 => 8,
            63 => 5,
           others => 0),
         E_Property =>
          ( 57 => 5,
            53 => 2,
            54 => 1,
            75 => 4,
            73 => 6,
            76 => 3,
            74 => 7,
           others => 0),
         E_Tag =>
          ( 78 => 3,
            53 => 2,
            54 => 1,
           others => 0));

   Member_Offset : constant
     array (AMF.Internals.Tables.CMOF_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 79 .. 135) of Natural :=
        (E_None =>
          (others => 0),
         E_Association =>
          ( 79 => 8,
            81 => 7,
            95 => 2,
            96 => 4,
            85 => 1,
            134 => 6,
            97 => 5,
            98 => 3,
           others => 0),
         E_Class =>
          ( 80 => 8,
            81 => 7,
            95 => 2,
            96 => 4,
            85 => 1,
            134 => 6,
            97 => 5,
            98 => 3,
           others => 0),
         E_Comment =>
          ( 82 => 2,
            85 => 1,
           others => 0),
         E_Constraint =>
          ( 83 => 7,
            95 => 2,
            96 => 4,
            85 => 1,
            97 => 5,
            84 => 6,
            98 => 3,
           others => 0),
         E_Data_Type =>
          ( 81 => 7,
            95 => 2,
            96 => 4,
            85 => 1,
            134 => 6,
            97 => 5,
            98 => 3,
           others => 0),
         E_Element_Import =>
          ( 86 => 3,
            87 => 4,
            88 => 5,
            85 => 1,
            89 => 2,
           others => 0),
         E_Enumeration =>
          ( 81 => 7,
            95 => 2,
            96 => 4,
            85 => 1,
            134 => 6,
            97 => 5,
            98 => 3,
           others => 0),
         E_Enumeration_Literal =>
          ( 90 => 6,
            95 => 2,
            96 => 4,
            85 => 1,
            97 => 5,
            98 => 3,
           others => 0),
         E_Expression =>
          ( 95 => 2,
            96 => 4,
            85 => 1,
            97 => 5,
            135 => 6,
            98 => 3,
           others => 0),
         E_Opaque_Expression =>
          ( 99 => 7,
            100 => 8,
            95 => 2,
            96 => 4,
            85 => 1,
            97 => 5,
            135 => 6,
            98 => 3,
           others => 0),
         E_Operation =>
          ( 101 => 15,
            102 => 12,
            103 => 13,
            130 => 6,
            104 => 8,
            105 => 7,
            106 => 9,
            107 => 10,
            95 => 2,
            96 => 4,
            85 => 1,
            97 => 5,
            108 => 14,
            109 => 11,
            98 => 3,
           others => 0),
         E_Package =>
          ( 95 => 2,
            96 => 4,
            110 => 6,
            85 => 1,
            97 => 5,
            111 => 7,
            98 => 3,
           others => 0),
         E_Package_Import =>
          ( 112 => 3,
            113 => 4,
            85 => 1,
            114 => 2,
           others => 0),
         E_Package_Merge =>
          ( 115 => 3,
            85 => 1,
            116 => 2,
           others => 0),
         E_Parameter =>
          ( 117 => 11,
            118 => 12,
            91 => 7,
            92 => 8,
            93 => 9,
            95 => 2,
            96 => 4,
            119 => 13,
            85 => 1,
            97 => 5,
            135 => 6,
            94 => 10,
            98 => 3,
           others => 0),
         E_Primitive_Type =>
          ( 81 => 7,
            95 => 2,
            96 => 4,
            85 => 1,
            134 => 6,
            97 => 5,
            98 => 3,
           others => 0),
         E_Property =>
          ( 120 => 21,
            121 => 17,
            122 => 20,
            123 => 13,
            124 => 14,
            125 => 15,
            126 => 16,
            130 => 6,
            91 => 7,
            127 => 12,
            92 => 8,
            93 => 9,
            95 => 2,
            96 => 4,
            128 => 19,
            85 => 1,
            129 => 18,
            97 => 5,
            135 => 11,
            94 => 10,
            98 => 3,
           others => 0),
         E_Tag =>
          ( 131 => 2,
            85 => 1,
            132 => 4,
            133 => 3,
           others => 0));

end AMF.Internals.Tables.CMOF_Attribute_Mappings;
