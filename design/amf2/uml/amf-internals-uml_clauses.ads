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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Internals.UML_Elements;
with AMF.UML.Clauses.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Executable_Nodes.Collections;
with AMF.UML.Output_Pins.Collections;

package AMF.Internals.UML_Clauses is

   type UML_Clause_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Clauses.UML_Clause with null record;

   overriding function Get_Body
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Executable_Nodes.Collections.Set_Of_UML_Executable_Node;

   overriding function Get_Body_Output
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin;

   overriding function Get_Decider
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Output_Pins.UML_Output_Pin_Access;

   overriding procedure Set_Decider
    (Self : not null access UML_Clause_Proxy;
     To   : AMF.UML.Output_Pins.UML_Output_Pin_Access);

   overriding function Get_Predecessor_Clause
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Clauses.Collections.Set_Of_UML_Clause;

   overriding function Get_Successor_Clause
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Clauses.Collections.Set_Of_UML_Clause;

   overriding function Get_Test
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Executable_Nodes.Collections.Set_Of_UML_Executable_Node;

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Get_Owner
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Elements.UML_Element_Access;

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Clause_Proxy)
       return Boolean;

end AMF.Internals.UML_Clauses;
