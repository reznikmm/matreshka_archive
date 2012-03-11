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

package body AMF.Internals.CMOF_Primitive_Types is

   ------------------------
   -- Enter_CMOF_Element --
   ------------------------

   overriding procedure Enter_CMOF_Element
    (Self    : not null access constant CMOF_Primitive_Type_Proxy;
     Visitor : in out AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Primitive_Type
       (AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access (Self), Control);
   end Enter_CMOF_Element;

   ------------------------
   -- Leave_CMOF_Element --
   ------------------------

   overriding procedure Leave_CMOF_Element
    (Self    : not null access constant CMOF_Primitive_Type_Proxy;
     Visitor : in out AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Primitive_Type
       (AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access (Self), Control);
   end Leave_CMOF_Element;

   ------------------------
   -- Visit_CMOF_Element --
   ------------------------

   overriding procedure Visit_CMOF_Element
    (Self     : not null access constant CMOF_Primitive_Type_Proxy;
     Iterator : in out AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      Iterator.Visit_Primitive_Type
       (Visitor,
        AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access (Self),
        Control);
   end Visit_CMOF_Element;

end AMF.Internals.CMOF_Primitive_Types;
