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
with AMF.CMOF.Associations;
with AMF.CMOF.Classes;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;
with AMF.Elements.Collections;
with AMF.Extents;
with AMF.Links.Collections;

package body AMF.Internals.Elements is

   ---------------
   -- Container --
   ---------------

   overriding function Container
    (Self : not null access constant Element_Base)
       return AMF.Elements.Element_Access
   is
      use type AMF.Elements.Element_Access;

      Model_Extent       : constant AMF.Extents.Extent_Access
        := AMF.Elements.Element_Access (Self).Extent;
      Meta_Class         : constant AMF.CMOF.Classes.CMOF_Class_Access
        := Element_Base'Class (Self.all).Get_Meta_Class;
      Metamodel_Extent   : constant AMF.Extents.Extent_Access
        := AMF.Elements.Element_Access (Meta_Class).Extent;
      Metamodel_Elements : constant AMF.Elements.Collections.Set_Of_Element
        := Metamodel_Extent.Elements;
      Links              : AMF.Links.Collections.Set_Of_Link;
      Association        : AMF.CMOF.Associations.CMOF_Association_Access;
      Member_Ends        :
        AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property;
      End_Property       : AMF.CMOF.Properties.CMOF_Property_Access;
      End_Type           : AMF.CMOF.Types.CMOF_Type_Access;
      Metamodel_Element  : AMF.Elements.Element_Access;

   begin
      --  General algoriphm is:
      --
      --   - select all association in metamodel's extent;
      --
      --   - select all association where one member end is composite and
      --     element's metaclass conforms to type of member end;
      --
      --   - select all links for association;
      --
      --   - check whether corresponding end is element itself and return
      --     another end.

      for J in 1 .. Metamodel_Elements.Length loop
         Metamodel_Element := Metamodel_Elements.Element (J);

         if Metamodel_Element.all
              in AMF.CMOF.Associations.CMOF_Association'Class
         then
            Association :=
              AMF.CMOF.Associations.CMOF_Association_Access
               (Metamodel_Element);
            Member_Ends := Association.Get_Member_End;

            End_Property := Member_Ends.Element (1);
            End_Type := End_Property.Get_Type;

            if End_Property.Get_Is_Composite
              and then Meta_Class.Conforms_To (End_Type)
            then
               Links := Model_Extent.Links_Of_Type (Association);

               for K in 1 .. Integer (Links.Length) loop
                  if Links.Element (K).Get_First_End
                       = AMF.Elements.Element_Access (Self)
                  then
                     return Links.Element (K).Get_Second_End;
                  end if;
               end loop;
            end if;

            End_Property := Member_Ends.Element (2);
            End_Type := End_Property.Get_Type;

            if End_Property.Get_Is_Composite
              and then Meta_Class.Conforms_To (End_Type)
            then
               Links := Model_Extent.Links_Of_Type (Association);

               for K in 1 .. Integer (Links.Length) loop
                  if Links.Element (K).Get_Second_End
                       = AMF.Elements.Element_Access (Self)
                  then
                     return Links.Element (K).Get_First_End;
                  end if;
               end loop;
            end if;
         end if;
      end loop;

      return null;
   end Container;

end AMF.Internals.Elements;
