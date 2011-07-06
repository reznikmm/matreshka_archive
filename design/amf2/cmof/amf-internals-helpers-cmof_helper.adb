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
with CMOF.Internals.Attribute_Mappings;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Tables;
with CMOF.Multiplicity_Elements;

package body AMF.Internals.Helpers.CMOF_Helper is

   use CMOF.Internals.Attribute_Mappings;
   use CMOF.Internals.Metamodel;
   use CMOF.Multiplicity_Elements;

   --------------------
   -- Connect_Extent --
   --------------------

   overriding procedure Connect_Extent
    (Self    : not null access constant CMOF_Metamodel_Helper;
     Element : AMF_Element;
     Extent  : AMF_Extent) is
   begin
      CMOF.Internals.Tables.Elements.Table (Element).Extent := Extent;
   end Connect_Extent;

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
      if Is_Multivalued (Property) then
         if Property not in CMOF_Collection_Of_Element_Property then
            AMF.Internals.Element_Collections.Internal_Append
             (CMOF.Internals.Tables.Elements.Table
               (Element).Member (0).Collection,
              Other,
              Link);

         else
            AMF.Internals.Element_Collections.Internal_Append
             (CMOF.Internals.Tables.Elements.Table
               (Element).Member (0).Collection
                + AMF_Collection_Of_Element
                   (Collection_Offset
                     (CMOF.Internals.Tables.Elements.Table (Element).Kind,
                      Property)),
              Other,
              Link);
         end if;

      else
         if Property not in CMOF_Non_Collection_Of_Element_Property then
            AMF.Internals.Element_Collections.Internal_Append
             (CMOF.Internals.Tables.Elements.Table
               (Element).Member (0).Collection,
              Other,
              Link);

         else
            CMOF.Internals.Tables.Elements.Table (Element).Member
             (Member_Offset
               (CMOF.Internals.Tables.Elements.Table (Element).Kind,
                Property)).Element := Other;
         end if;
      end if;
   end Connect_Link_End;

   ----------------
   -- Get_Extent --
   ----------------

   overriding function Get_Extent
    (Self    : not null access constant CMOF_Metamodel_Helper;
     Element : AMF_Element) return AMF_Extent is
   begin
      return CMOF.Internals.Tables.Elements.Table (Element).Extent;
   end Get_Extent;

   ----------------
   -- To_Element --
   ----------------

   overriding function To_Element
    (Self     : not null access constant CMOF_Metamodel_Helper;
     Element  : AMF_Element) return AMF.Elements.Element_Access is
   begin
      return CMOF.Internals.Tables.Elements.Table (Element).Proxy;
   end To_Element;

   Helper : aliased CMOF_Metamodel_Helper;

begin
   Metamodel_Helper (CMOF_Metamodel) := Helper'Access;
end AMF.Internals.Helpers.CMOF_Helper;
