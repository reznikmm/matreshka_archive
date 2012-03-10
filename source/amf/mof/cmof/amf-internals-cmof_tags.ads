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
with AMF.CMOF.Elements.Collections;
with AMF.CMOF.Tags;
with AMF.Internals.CMOF_Elements;
with AMF.Visitors.CMOF_Iterators;
with AMF.Visitors.CMOF_Visitors;

package AMF.Internals.CMOF_Tags is

   type CMOF_Tag_Proxy is
     limited new AMF.Internals.CMOF_Elements.CMOF_Element_Proxy
       and AMF.CMOF.Tags.CMOF_Tag with null record;

   overriding function All_Owned_Elements
    (Self : not null access constant CMOF_Tag_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Get_Element
    (Self : not null access constant CMOF_Tag_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Get_Name
    (Self : not null access constant CMOF_Tag_Proxy)
       return League.Strings.Universal_String;

   overriding function Get_Tag_Owner
    (Self : not null access constant CMOF_Tag_Proxy)
       return AMF.CMOF.Elements.CMOF_Element_Access;

   overriding function Get_Value
    (Self : not null access constant CMOF_Tag_Proxy)
       return League.Strings.Universal_String;

   overriding function Must_Be_Owned
    (Self : not null access constant CMOF_Tag_Proxy) return Boolean;
   --  Operation Element::mustBeOwned.
   --
   --  The query mustBeOwned() indicates whether elements of this type must 
   --  have an owner. Subclasses of Element that do not require an owner must 
   --  override this operation.

   overriding procedure Set_Name
    (Self : not null access CMOF_Tag_Proxy;
     To   : League.Strings.Universal_String);

   overriding procedure Set_Tag_Owner
    (Self : not null access CMOF_Tag_Proxy;
     To   : AMF.CMOF.Elements.CMOF_Element_Access);

   overriding procedure Set_Value
    (Self : not null access CMOF_Tag_Proxy;
     To   : League.Strings.Universal_String);

   overriding procedure Enter_CMOF_Element
    (Self    : not null access constant CMOF_Tag_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_CMOF_Element
    (Self    : not null access constant CMOF_Tag_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_CMOF_Element
    (Self     : not null access constant CMOF_Tag_Proxy;
     Iterator : not null access AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.CMOF_Tags;
