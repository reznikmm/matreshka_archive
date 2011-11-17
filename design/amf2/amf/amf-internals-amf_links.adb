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
with AMF.Internals.Helpers;
with AMF.Internals.Tables.AMF_Link_Table;

package body AMF.Internals.AMF_Links is

   ------------
   -- Delete --
   ------------

   overriding procedure Delete
    (Self : not null access constant AMF_Link_Proxy) is
   begin
      raise Program_Error;
   end Delete;

   ---------------------
   -- Get_Association --
   ---------------------

   function Get_Association
    (Self : not null access constant AMF_Link_Proxy)
       return not null AMF.CMOF.Associations.CMOF_Association_Access is
   begin
      return
        AMF.CMOF.Associations.CMOF_Association_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.AMF_Link_Table.Table
             (Self.Id).Association));
   end Get_Association;

   -------------------
   -- Get_First_End --
   -------------------

   function Get_First_End
    (Self : not null access constant AMF_Link_Proxy)
       return not null AMF.Elements.Element_Access is
   begin
      return
        AMF.Internals.Helpers.To_Element
         (AMF.Internals.Tables.AMF_Link_Table.Table
           (Self.Id).Second_Element);
   end Get_First_End;

   --------------------
   -- Get_Second_End --
   --------------------

   function Get_Second_End
    (Self : not null access constant AMF_Link_Proxy)
       return not null AMF.Elements.Element_Access is
   begin
      return
        AMF.Internals.Helpers.To_Element
         (AMF.Internals.Tables.AMF_Link_Table.Table
           (Self.Id).First_Element);
   end Get_Second_End;

end AMF.Internals.AMF_Links;
