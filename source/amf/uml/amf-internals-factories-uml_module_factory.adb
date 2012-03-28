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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Internals.Tables.Standard_Profile_L2_Metamodel;
with AMF.Internals.Tables.Standard_Profile_L3_Metamodel;
with AMF.Internals.Tables.UML_Attribute_Mappings;
with AMF.Internals.Tables.UML_Element_Table;
with AMF.Internals.Tables.UML_Metamodel;

package body AMF.Internals.Factories.UML_Module_Factory is

   --------------------
   -- Connect_Extent --
   --------------------

   overriding procedure Connect_Extent
    (Self    : not null access constant UML_Module_Factory;
     Element : AMF.Internals.AMF_Element;
     Extent  : AMF.Internals.AMF_Extent)
   is
      pragma Unreferenced (Self);

   begin
      AMF.Internals.Tables.UML_Element_Table.Table (Element).Extent := Extent;
   end Connect_Extent;

   ----------------------
   -- Connect_Link_End --
   ----------------------

   overriding procedure Connect_Link_End
    (Self     : not null access constant UML_Module_Factory;
     Element  : AMF.Internals.AMF_Element;
     Property : AMF.Internals.CMOF_Element;
     Link     : AMF.Internals.AMF_Link;
     Other    : AMF.Internals.AMF_Element)
   is
      pragma Unreferenced (Self);

      use AMF.Internals.Tables;
      use AMF.Internals.Tables.Standard_Profile_L2_Metamodel;
      use AMF.Internals.Tables.Standard_Profile_L3_Metamodel;
      use AMF.Internals.Tables.UML_Attribute_Mappings;
      use AMF.Internals.Tables.UML_Metamodel;

   begin
      --  Properties which comes from UML metamodel.

      if Property in MB_UML .. ML_UML then
         declare
            PO : constant AMF.Internals.CMOF_Element := Property - MB_UML;

         begin
            if PO in UML_Collection_Offset'Range (2) then
               AMF.Internals.Element_Collections.Internal_Append
                (UML_Element_Table.Table (Element).Member (0).Collection
                   + UML_Collection_Offset
                      (UML_Element_Table.Table (Element).Kind, PO),
                 Other,
                 Link);

            elsif PO in UML_Member_Offset'Range (2)
              and then UML_Member_Offset
                        (UML_Element_Table.Table (Element).Kind, PO) /= 0
            then
               UML_Element_Table.Table (Element).Member
                (UML_Member_Offset
                  (UML_Element_Table.Table (Element).Kind, PO)).Link := Link;

            else
               AMF.Internals.Element_Collections.Internal_Append
                (UML_Element_Table.Table (Element).Member (0).Collection,
                 Other,
                 Link);
            end if;
         end;

      elsif Property in MB_Standard_Profile_L2 .. ML_Standard_Profile_L2 then
         declare
            PO : constant AMF.Internals.CMOF_Element
              := Property - MB_Standard_Profile_L2;

         begin
            if PO in Standard_Profile_L2_Collection_Offset'Range (2) then
               AMF.Internals.Element_Collections.Internal_Append
                (UML_Element_Table.Table (Element).Member (0).Collection
                   + Standard_Profile_L2_Collection_Offset
                      (UML_Element_Table.Table (Element).Kind, PO),
                 Other,
                 Link);

            elsif PO in Standard_Profile_L2_Member_Offset'Range (2)
              and then Standard_Profile_L2_Member_Offset
                        (UML_Element_Table.Table (Element).Kind, PO) /= 0
            then
               UML_Element_Table.Table (Element).Member
                (Standard_Profile_L2_Member_Offset
                  (UML_Element_Table.Table (Element).Kind, PO)).Link := Link;

            else
               AMF.Internals.Element_Collections.Internal_Append
                (UML_Element_Table.Table (Element).Member (0).Collection,
                 Other,
                 Link);
            end if;
         end;

      elsif Property in MB_Standard_Profile_L3 .. ML_Standard_Profile_L3 then
         declare
            PO : constant AMF.Internals.CMOF_Element
              := Property - MB_Standard_Profile_L3;

         begin
            if PO in Standard_Profile_L3_Collection_Offset'Range (2) then
               AMF.Internals.Element_Collections.Internal_Append
                (UML_Element_Table.Table (Element).Member (0).Collection
                   + Standard_Profile_L3_Collection_Offset
                      (UML_Element_Table.Table (Element).Kind, PO),
                 Other,
                 Link);

            elsif PO in Standard_Profile_L3_Member_Offset'Range (2)
              and then Standard_Profile_L3_Member_Offset
                        (UML_Element_Table.Table (Element).Kind, PO) /= 0
            then
               UML_Element_Table.Table (Element).Member
                (Standard_Profile_L3_Member_Offset
                  (UML_Element_Table.Table (Element).Kind, PO)).Link := Link;

            else
               AMF.Internals.Element_Collections.Internal_Append
                (UML_Element_Table.Table (Element).Member (0).Collection,
                 Other,
                 Link);
            end if;
         end;
      end if;
   end Connect_Link_End;

   -------------------
   -- Get_Metamodel --
   -------------------

   overriding function Get_Metamodel
    (Self : not null access constant UML_Module_Factory)
       return AMF.Internals.AMF_Metamodel
   is
      pragma Unreferenced (Self);

   begin
      return UML_Metamodel;
   end Get_Metamodel;

   ----------------
   -- To_Element --
   ----------------

   overriding function To_Element
    (Self    : not null access constant UML_Module_Factory;
     Element : AMF.Internals.AMF_Element) return AMF.Elements.Element_Access
   is
      pragma Unreferenced (Self);

   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Element).Proxy;
   end To_Element;

end AMF.Internals.Factories.UML_Module_Factory;
