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

package AMF.Internals is

   pragma Preelaborate;

   --  XXX All types in this package can be replaced by modular types, but
   --  this requires to replace GNAT.Tables package by own implementation.

   type AMF_Metamodel is mod 2 ** 8;
   --  Identifier of the metamodel. AMF can supports up to 255 metamodels.

   CMOF_Metamodel            : constant AMF_Metamodel := 0;
   Primitive_Types_Metamodel : constant AMF_Metamodel := 1;
   UML_Metamodel             : constant AMF_Metamodel := 2;

   type AMF_Element is range 0 .. 2 ** 31 - 1;
   for AMF_Element'Size use 32;
   --  Identifier of the element inside metamodel.

   subtype CMOF_Element  is AMF_Element range 16#00000000# .. 16#00FFFFFF#;
   subtype UML_Element   is AMF_Element range 16#02000000# .. 16#02FFFFFF#;

   type AMF_Link is range 0 .. 2 ** 31 - 1;
   for AMF_Link'Size use 32;
   --  Identifier of the link between two elements.

   type AMF_Collection_Of_Element is range 0 .. 2 ** 31 - 1;
   for AMF_Collection_Of_Element'Size use 32;

   type AMF_Extent is range 0 .. 2 ** 31 - 1;
   for AMF_Extent'Size use 32;

   type AMF_Collection_Of_Boolean is range 0 .. 2 ** 31 - 1;
   for AMF_Collection_Of_Boolean'Size use 32;

   type AMF_Collection_Of_String is range 0 .. 2 ** 31 - 1;
   for AMF_Collection_Of_String'Size use 32;

end AMF.Internals;
