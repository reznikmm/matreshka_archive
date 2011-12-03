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
with AMF.Internals.AMF_Links;

package AMF.Internals.Tables.AMF_Types is

   -----------
   -- Links --
   -----------

   --  Link can connect:
   --   - single slot to single slot
   --   - collection slot to single slot
   --   - single slot to connetion slot
   --   - connection slot to connection slot
   --   - ? element and collection?

   type Link_Kinds is
    (L_None,
     L_Single_Single,
     L_Single_Multiple,
     L_Multiple_Single,
     L_Multiple_Multiple);

   type Link_Record (Kind : Link_Kinds := L_None) is record
      case Kind is
         when L_None =>
            null;

         when L_Single_Single
           | L_Single_Multiple
           | L_Multiple_Single
           | L_Multiple_Multiple
         =>
            Proxy          : AMF.Internals.AMF_Links.AMF_Link_Proxy_Access;
            Association    : CMOF_Element;
            First_Element  : AMF_Element;
            Second_Element : AMF_Element;
      end case;
   end record;

--   type Link_Kinds is (L_None, L_Slot_Slot, L_Slot_Collection, L_Collection_Slot, L_Collection_Collection);
--
--   type Link_Record (Kind : Link_Kinds := L_None) is record
--      First_Element     : Cmof_Element;
--      First_Property    : Cmof_Element;
----      First_Collection  : Collection_Of_CMOF_Element;
--      Second_Element    : Cmof_Element;
--      Second_Property   : Cmof_Element;
----      Second_Collection : Collection_Of_CMOF_Element;
--
--      case Kind is
--         when L_None =>
--            null;
--
--         when L_Slot_Slot | L_Slot_Collection =>
--            null;
--
--         when L_Collection_Slot | L_Collection_Collection =>
--            null;
----  First_Collection_Element  : Collection_Element_Identifier;
----  Second_Collection_Element : Collection_Element_Identifier;
--      end case;
--   end record;

end AMF.Internals.Tables.AMF_Types;
