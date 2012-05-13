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
with AMF.CMOF.Named_Elements;
with AMF.CMOF.Namespaces.Collections;
with AMF.Internals.CMOF_Elements;

package AMF.Internals.CMOF_Named_Elements is

   type CMOF_Named_Element_Proxy is
     abstract new AMF.Internals.CMOF_Elements.CMOF_Element_Proxy
       and AMF.CMOF.Named_Elements.CMOF_Named_Element with null record;

   overriding function All_Namespaces
    (Self : not null access constant CMOF_Named_Element_Proxy)
       return AMF.CMOF.Namespaces.Collections.Ordered_Set_Of_CMOF_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the 
   --  NamedElement is nested, working outwards.

   overriding function Get_Name
    (Self : not null access constant CMOF_Named_Element_Proxy)
       return Optional_String;

   overriding function Get_Namespace
    (Self : not null access constant CMOF_Named_Element_Proxy)
       return AMF.CMOF.Namespaces.CMOF_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Visibility
    (Self : not null access constant CMOF_Named_Element_Proxy)
       return AMF.CMOF.Optional_CMOF_Visibility_Kind;

   overriding function Qualified_Name
    (Self : not null access constant CMOF_Named_Element_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name, 
   --  the qualified name is constructed from the names of the containing 
   --  namespaces.

   overriding function Separator
    (Self : not null access constant CMOF_Named_Element_Proxy)
       return League.Strings.Universal_String;

   overriding procedure Set_Name
    (Self : not null access CMOF_Named_Element_Proxy;
     To   : Optional_String);

   overriding procedure Set_Visibility
    (Self : not null access CMOF_Named_Element_Proxy;
     To   : AMF.CMOF.Optional_CMOF_Visibility_Kind);
   --  Setter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

end AMF.Internals.CMOF_Named_Elements;
