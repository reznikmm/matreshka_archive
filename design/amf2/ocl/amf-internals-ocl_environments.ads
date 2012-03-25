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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package contains implementation of Environment type.
--
--  [OCL 2.3.1] 9.5 Environment Definition
--
--  "The Environment type used in the rules for the concrete syntax is defined
--  according to the following invariants and additional operations. A
--  diagrammatic view can be found in Figure 9.1. Environments can be nested,
--  denoted by the existence of a parent environment. Each environment keeps a
--  list of named elements, that have a name a reference to a ModelElement."
------------------------------------------------------------------------------
with AMF.Elements;

package AMF.Internals.OCL_Environments is

   type Environment is tagged private;

   --  lookupLocal()
   --  lookup()
   --  lookupLocal()
   --  lookup()
   --  addNamespace()
   --  nestedEnvironment()
   --  lookupImplicitAttribute()
   --  lookupImplicitSourceForAttribute()
   --  lookupImplicitAssociationEnd()
   --  lookupImplicitOperation()
   --
   --  namedElements : NamedElement [0..*]

   procedure Add_Element
    (Self     : in out Environment;
     Name     : League.Strings.Universal_String;
     Element  : not null AMF.Elements.Element_Access;
     Implicit : Boolean);
   --  [OCL 2.3.1] 9.5.1 Environment
   --
   --  "[5] Add a new named element to the environment. Note that this
   --  operation is defined as a query operation so that it can be used in OCL
   --  constraints."

private

   type Environment is tagged null record;

end AMF.Internals.OCL_Environments;
