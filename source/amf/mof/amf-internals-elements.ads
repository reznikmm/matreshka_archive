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
with AMF.Elements;
with AMF.Visitors;

package AMF.Internals.Elements is

   pragma Preelaborate;

   type Element_Implementation is
     abstract limited new AMF.Elements.Abstract_Element with null record;

   not overriding function Element
    (Self : not null access constant Element_Implementation)
       return AMF_Element is abstract;

   overriding function Container
    (Self : not null access constant Element_Implementation)
       return AMF.Elements.Element_Access;
   --  Returns the parent container of this element if any. Return null if
   --  there is no containing element.
   --
   --  This operation provides generic implementation based on MOF
   --  capabilities. It can be overridden for elements of specific model to
   --  provide more efficient implementation.

   not overriding procedure Enter_Element
    (Self    : not null access constant Element_Implementation;
     Visitor : not null access AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is abstract;
   --  Dispatch call to corresponding subprogram of visitor interface.

   not overriding procedure Leave_Element
    (Self    : not null access constant Element_Implementation;
     Visitor : not null access AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is abstract;
   --  Dispatch call to corresponding subprogram of visitor interface.

   not overriding procedure Visit_Element
    (Self     : not null access constant Element_Implementation;
     Iterator : not null access AMF.Visitors.Abstract_Iterator'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is abstract;
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.Elements;
