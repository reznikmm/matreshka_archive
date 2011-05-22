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
with AMF.CMOF.Elements.Collections;
with AMF.CMOF.Multiplicity_Elements;
with AMF.CMOF.Named_Elements;
with AMF.CMOF.Namespaces.Collections;
with AMF.CMOF.Operations;
with AMF.CMOF.Parameters;
with AMF.CMOF.Types;
with AMF.Internals.CMOF_Elements;
with AMF.Internals.CMOF_Multiplicity_Elements;
pragma Elaborate (AMF.Internals.CMOF_Multiplicity_Elements);

package AMF.Internals.CMOF_Parameters is

   package Multiplicity_Elements is
     new AMF.Internals.CMOF_Multiplicity_Elements
          (AMF.Internals.CMOF_Elements.CMOF_Element_Proxy);

   type CMOF_Parameter_Proxy is
     limited new Multiplicity_Elements.CMOF_Multiplicity_Element_Proxy
       and AMF.CMOF.Parameters.CMOF_Parameter
         with null record;

   --  XXX These subprograms are stubs

   overriding function Get_Owned_Element
    (Self : not null access constant CMOF_Parameter_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Get_Owner
    (Self : not null access constant CMOF_Parameter_Proxy)
       return AMF.CMOF.Elements.CMOF_Element_Access;

   overriding function All_Owned_Elements
    (Self : not null access constant CMOF_Parameter_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant CMOF_Parameter_Proxy)
       return Boolean;

   overriding procedure Set_Is_Ordered
    (Self : not null access CMOF_Parameter_Proxy;
     To   : Boolean);

   overriding procedure Set_Is_Unique
    (Self : not null access CMOF_Parameter_Proxy;
     To   : Boolean);

   overriding procedure Set_Lower
    (Self : not null access CMOF_Parameter_Proxy;
     To   : Optional_Integer);

   overriding procedure Set_Upper
    (Self : not null access CMOF_Parameter_Proxy;
     To   : Optional_Unlimited_Natural);

   overriding function Includes_Multiplicity
    (Self : not null access constant CMOF_Parameter_Proxy;
     M : AMF.CMOF.Multiplicity_Elements.CMOF_Multiplicity_Element_Access)
       return Boolean;

   overriding function Includes_Cardinality
    (Self : not null access constant CMOF_Parameter_Proxy;
     C : Integer)
       return Boolean;

   overriding function Get_Name
    (Self : not null access constant CMOF_Parameter_Proxy)
       return Optional_String;

   overriding procedure Set_Name
    (Self : not null access CMOF_Parameter_Proxy;
     To   : Optional_String);

   overriding function Get_Visibility
    (Self : not null access constant CMOF_Parameter_Proxy)
       return CMOF.Optional_CMOF_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access CMOF_Parameter_Proxy;
     To   : CMOF.Optional_CMOF_Visibility_Kind);

   overriding function Get_Namespace
    (Self : not null access constant CMOF_Parameter_Proxy)
       return AMF.CMOF.Namespaces.CMOF_Namespace_Access;

   overriding function Get_Qualified_Name
    (Self : not null access constant CMOF_Parameter_Proxy)
       return Optional_String;

   overriding function All_Namespaces
    (Self : not null access constant CMOF_Parameter_Proxy)
       return AMF.CMOF.Namespaces.Collections.Ordered_Set_Of_CMOF_Namespace;

   overriding function Is_Distinguishable_From
    (Self : not null access constant CMOF_Parameter_Proxy;
     N : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
     Ns : AMF.CMOF.Namespaces.CMOF_Namespace_Access)
       return Boolean;

   overriding function Separator
    (Self : not null access constant CMOF_Parameter_Proxy)
       return League.Strings.Universal_String;

   overriding function Qualified_Name
    (Self : not null access constant CMOF_Parameter_Proxy)
       return League.Strings.Universal_String;

   overriding function Get_Type
    (Self : not null access constant CMOF_Parameter_Proxy)
       return AMF.CMOF.Types.CMOF_Type_Access;

   overriding procedure Set_Type
    (Self : not null access CMOF_Parameter_Proxy;
     To   : AMF.CMOF.Types.CMOF_Type_Access);

   overriding function Get_Default
    (Self : not null access constant CMOF_Parameter_Proxy)
       return Optional_String;

   overriding procedure Set_Default
    (Self : not null access CMOF_Parameter_Proxy;
     To   : Optional_String);

   overriding function Get_Direction
    (Self : not null access constant CMOF_Parameter_Proxy)
       return CMOF.CMOF_Parameter_Direction_Kind;

   overriding procedure Set_Direction
    (Self : not null access CMOF_Parameter_Proxy;
     To   : CMOF.CMOF_Parameter_Direction_Kind);

   overriding function Get_Operation
    (Self : not null access constant CMOF_Parameter_Proxy)
       return AMF.CMOF.Operations.CMOF_Operation_Access;

   overriding procedure Set_Operation
    (Self : not null access CMOF_Parameter_Proxy;
     To   : AMF.CMOF.Operations.CMOF_Operation_Access);

end AMF.Internals.CMOF_Parameters;
