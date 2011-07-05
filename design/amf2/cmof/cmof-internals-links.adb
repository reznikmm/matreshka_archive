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
with AMF.CMOF.Associations;
with AMF.Internals.Listener_Registry;
with AMF.Internals.Tables.AMF_Tables;
with CMOF.Internals.Attribute_Mappings;
with CMOF.Internals.Collections;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Proxies;
with CMOF.Internals.Tables;
with CMOF.Multiplicity_Elements;

package body CMOF.Internals.Links is

   use AMF.Internals.Tables;

   --------------------------
   -- Internal_Create_Link --
   --------------------------

   procedure Internal_Create_Link
    (Association     : CMOF_Association;
     First_Element   : CMOF_Element;
     First_Property  : CMOF_Property;
     Second_Element  : CMOF_Element;
     Second_Property : CMOF_Property)
   is
      use CMOF.Internals.Attribute_Mappings;
      use CMOF.Internals.Collections;
      use CMOF.Internals.Metamodel;
      use CMOF.Internals.Tables;
      use CMOF.Multiplicity_Elements;
      use type AMF.Internals.AMF_Collection_Of_Element;

      procedure Create_Single_Single;

      procedure Create_Single_Multiple;

      procedure Create_Multiple_Single;

      procedure Create_Multiple_Multiple;

      ------------------------------
      -- Create_Multiple_Multiple --
      ------------------------------

      procedure Create_Multiple_Multiple is
      begin
         AMF_Tables.Links.Table (AMF_Tables.Links.Last) :=
          (AMF_Tables.L_Multiple_Multiple,
           Association,
           First_Element,
           Second_Element);

         if First_Property not in Cmof_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection,
              Second_Element,
              AMF_Tables.Links.Last);

         else
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (First_Element).Kind,
                      First_Property)),
              Second_Element,
              AMF_Tables.Links.Last);
         end if;

         if Second_Property not in Cmof_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection,
              First_Element,
              AMF_Tables.Links.Last);

         else
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (Second_Element).Kind,
                      Second_Property)),
              First_Element,
              AMF_Tables.Links.Last);
         end if;
      end Create_Multiple_Multiple;

      ----------------------------
      -- Create_Multiple_Single --
      ----------------------------

      procedure Create_Multiple_Single is
      begin
         AMF_Tables.Links.Table (AMF_Tables.Links.Last) :=
          (AMF_Tables.L_Multiple_Single,
           Association,
           First_Element,
           Second_Element);

         if First_Property not in Cmof_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection,
              Second_Element,
              AMF_Tables.Links.Last);

         else
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (First_Element).Kind,
                      First_Property)),
              Second_Element,
              AMF_Tables.Links.Last);
         end if;

         if Second_Property not in Cmof_Non_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection,
              First_Element,
              AMF_Tables.Links.Last);

         else
            Elements.Table (Second_Element).Member
             (Member_Offset
               (Elements.Table (Second_Element).Kind,
                Second_Property)).Element := First_Element;
         end if;
      end Create_Multiple_Single;

      ----------------------------
      -- Create_Single_Multiple --
      ----------------------------

      procedure Create_Single_Multiple is
      begin
         AMF_Tables.Links.Table (AMF_Tables.Links.Last) :=
          (AMF_Tables.L_Single_Multiple,
           Association,
           First_Element,
           Second_Element);

         if First_Property not in Cmof_Non_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection,
              Second_Element,
              AMF_Tables.Links.Last);

         else
            Elements.Table (First_Element).Member
             (Member_Offset
               (Elements.Table (First_Element).Kind,
                First_Property)).Element := Second_Element;
         end if;

         if Second_Property not in Cmof_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection,
              First_Element,
              AMF_Tables.Links.Last);

         else
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (Second_Element).Kind,
                      Second_Property)),
              First_Element,
              AMF_Tables.Links.Last);
         end if;
      end Create_Single_Multiple;

      --------------------------
      -- Create_Single_Single --
      --------------------------

      procedure Create_Single_Single is
      begin
         AMF_Tables.Links.Table (AMF_Tables.Links.Last) :=
          (AMF_Tables.L_Single_Single,
           Association,
           First_Element,
           Second_Element);

         if First_Property not in Cmof_Non_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection,
              Second_Element,
              AMF_Tables.Links.Last);

         else
            Elements.Table (First_Element).Member
             (Member_Offset
               (Elements.Table (First_Element).Kind,
                First_Property)).Element := Second_Element;
         end if;

         if Second_Property not in Cmof_Non_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection,
              First_Element,
              AMF_Tables.Links.Last);

         else
            Elements.Table (Second_Element).Member
             (Member_Offset
               (Elements.Table (Second_Element).Kind,
                Second_Property)).Element := First_Element;
         end if;
      end Create_Single_Single;

   begin
      AMF_Tables.Links.Increment_Last;

      if Is_Multivalued (First_Property) then
         if Is_Multivalued (Second_Property) then
            Create_Multiple_Multiple;

         else
            Create_Multiple_Single;
         end if;

      else
         if Is_Multivalued (Second_Property) then
            Create_Single_Multiple;

         else
            Create_Single_Single;
         end if;
      end if;

      AMF.Internals.Listener_Registry.Notify_Link_Add
       (AMF.CMOF.Associations.CMOF_Association_Access
         (CMOF.Internals.Proxies.Get_Proxy (Association)),
        CMOF.Internals.Proxies.Get_Proxy (First_Element),
        CMOF.Internals.Proxies.Get_Proxy (Second_Element));
   end Internal_Create_Link;

end CMOF.Internals.Links;
