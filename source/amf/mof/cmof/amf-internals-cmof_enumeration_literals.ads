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
with AMF.CMOF.Enumeration_Literals;
with AMF.CMOF.Enumerations;
with AMF.CMOF.Named_Elements;
with AMF.CMOF.Namespaces.Collections;
with AMF.Internals.CMOF_Named_Elements;
with AMF.Visitors.CMOF_Iterators;
with AMF.Visitors.CMOF_Visitors;

package AMF.Internals.CMOF_Enumeration_Literals is

   type CMOF_Enumeration_Literal_Proxy is
     limited new AMF.Internals.CMOF_Named_Elements.CMOF_Named_Element_Proxy
       and AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal
         with null record;

   --  XXX These subprograms are stubs

   overriding function All_Owned_Elements
    (Self : not null access constant CMOF_Enumeration_Literal_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Get_Qualified_Name
    (Self : not null access constant CMOF_Enumeration_Literal_Proxy)
       return Optional_String;

   overriding function All_Namespaces
    (Self : not null access constant CMOF_Enumeration_Literal_Proxy)
       return AMF.CMOF.Namespaces.Collections.Ordered_Set_Of_CMOF_Namespace;

   overriding function Is_Distinguishable_From
    (Self : not null access constant CMOF_Enumeration_Literal_Proxy;
     N : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
     Ns : AMF.CMOF.Namespaces.CMOF_Namespace_Access)
       return Boolean;

   overriding function Qualified_Name
    (Self : not null access constant CMOF_Enumeration_Literal_Proxy)
       return League.Strings.Universal_String;

   overriding function Get_Enumeration
    (Self : not null access constant CMOF_Enumeration_Literal_Proxy)
       return AMF.CMOF.Enumerations.CMOF_Enumeration_Access;

   overriding procedure Set_Enumeration
    (Self : not null access CMOF_Enumeration_Literal_Proxy;
     To   : AMF.CMOF.Enumerations.CMOF_Enumeration_Access);

   overriding procedure Enter_CMOF_Element
    (Self    : not null access constant CMOF_Enumeration_Literal_Proxy;
     Visitor : in out AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_CMOF_Element
    (Self    : not null access constant CMOF_Enumeration_Literal_Proxy;
     Visitor : in out AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_CMOF_Element
    (Self     : not null access constant CMOF_Enumeration_Literal_Proxy;
     Iterator : in out AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.CMOF_Enumeration_Literals;
