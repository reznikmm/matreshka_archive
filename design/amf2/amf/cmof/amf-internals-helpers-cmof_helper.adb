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
with AMF.Internals.Element_Collections;
with AMF.Internals.Tables.CMOF_Attribute_Mappings;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Tables.CMOF_Metamodel;

package body AMF.Internals.Helpers.CMOF_Helper is

   use AMF.Internals.Tables;
   use AMF.Internals.Tables.CMOF_Attribute_Mappings;
   use AMF.Internals.Tables.CMOF_Metamodel;

   ----------------------
   -- Connect_Link_End --
   ----------------------

   overriding procedure Connect_Link_End
    (Self     : not null access constant CMOF_Metamodel_Helper;
     Element  : AMF_Element;
     Property : CMOF_Element;
     Link     : AMF_Link;
     Other    : AMF_Element) is
   begin
      if AMF.Internals.Tables.CMOF_Attributes.Internal_Get_Upper
          (Property).Value > 1
      then
         if Property in Collection_Offset'Range (2) then
            AMF.Internals.Element_Collections.Internal_Append
             (CMOF_Element_Table.Table (Element).Member (0).Collection
                + Collection_Offset
                   (CMOF_Element_Table.Table (Element).Kind, Property),
              Other,
              Link);

         else
            AMF.Internals.Element_Collections.Internal_Append
             (CMOF_Element_Table.Table (Element).Member (0).Collection,
              Other,
              Link);
         end if;

      else
         if Property in Member_Offset'Range (2) then
            CMOF_Element_Table.Table (Element).Member
             (Member_Offset
               (CMOF_Element_Table.Table (Element).Kind,
                Property)).Element := Other;

         else
            AMF.Internals.Element_Collections.Internal_Append
             (CMOF_Element_Table.Table (Element).Member (0).Collection,
              Other,
              Link);
         end if;
      end if;
   end Connect_Link_End;

   Helper : aliased CMOF_Metamodel_Helper;

begin
   Metamodel_Helper (CMOF_Metamodel) := Helper'Access;
end AMF.Internals.Helpers.CMOF_Helper;
