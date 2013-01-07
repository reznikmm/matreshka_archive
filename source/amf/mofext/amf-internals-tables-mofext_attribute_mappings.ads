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
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Internals.Tables.MOFEXT_Types;

package AMF.Internals.Tables.MOFEXT_Attribute_Mappings is

   pragma Preelaborate;

   MOF_Collection_Offset : constant
     array (AMF.Internals.Tables.MOFEXT_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 2 .. 2)
       of AMF.Internals.AMF_Collection_Of_Element :=
        (AMF.Internals.Tables.MOFEXT_Types.E_None =>
          (others => 0),
         AMF.Internals.Tables.MOFEXT_Types.E_MOF_Tag =>
          (2      => 3,     --  Tag::element
           others => 0));

   MOF_Member_Offset : constant
     array (AMF.Internals.Tables.MOFEXT_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 3 .. 5) of Natural :=
        (AMF.Internals.Tables.MOFEXT_Types.E_None =>
          (others => 0),
         AMF.Internals.Tables.MOFEXT_Types.E_MOF_Tag =>
          (3      => 2,     --  Tag::name
           4      => 4,     --  Tag::tagOwner
           5      => 3,     --  Tag::value
           others => 0));

   UML_Collection_Offset : constant
     array (AMF.Internals.Tables.MOFEXT_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 243 .. 482)
       of AMF.Internals.AMF_Collection_Of_Element :=
        (AMF.Internals.Tables.MOFEXT_Types.E_None =>
          (others => 0),
         AMF.Internals.Tables.MOFEXT_Types.E_MOF_Tag =>
          (347    => 1,     --  Element::ownedComment
           348    => 2,     --  Element::ownedElement
           others => 0));

   UML_Member_Offset : constant
     array (AMF.Internals.Tables.MOFEXT_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 483 .. 866) of Natural :=
        (AMF.Internals.Tables.MOFEXT_Types.E_None =>
          (others => 0),
         AMF.Internals.Tables.MOFEXT_Types.E_MOF_Tag =>
          (577    => 1,     --  Element::owner
           others => 0));

end AMF.Internals.Tables.MOFEXT_Attribute_Mappings;
