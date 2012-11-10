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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Internals.Links;
with AMF.Internals.Tables.MOFEXT_Element_Table;
with AMF.Internals.Tables.MOFEXT_Types;
with AMF.Internals.Tables.MOF_Metamodel;
with AMF.Internals.Tables.UML_Metamodel;

separate (AMF.Internals.Factories.MOFEXT_Module_Factory)
procedure Construct_Union
 (Element  : AMF.Internals.AMF_Element;
  Property : AMF.Internals.CMOF_Element;
  Link     : AMF.Internals.AMF_Link)
is
   Element_Kind : constant AMF.Internals.Tables.MOFEXT_Types.Element_Kinds
     := AMF.Internals.Tables.MOFEXT_Element_Table.Table (Element).Kind;
   Opposite     : constant AMF.Internals.AMF_Element
     := AMF.Internals.Links.Opposite_Element (Link, Element);

begin
   case Element_Kind is
      when AMF.Internals.Tables.MOFEXT_Types.E_MOF_Tag =>
         if Property = AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Owned_Comment then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Element,
              Opposite,
              Link);

         elsif Property = AMF.Internals.Tables.MOF_Metamodel.MP_MOF_Tag_Tag_Owner then
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Owned_Element_Owner,
              Opposite,
              Element,
              Link);
         end if;

      when others =>
         null;
   end case;
end Construct_Union;
