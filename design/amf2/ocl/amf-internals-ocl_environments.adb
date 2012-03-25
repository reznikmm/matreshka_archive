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

package body AMF.Internals.OCL_Environments is

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

   -----------------
   -- Add_Element --
   -----------------

   procedure Add_Element
    (Self     : in out Environment;
     Name     : League.Strings.Universal_String;
     Element  : not null AMF.Elements.Element_Access;
     Implicit : Boolean)
   is
      --  [OCL 2.3.1] 9.5.1 Environment
      --
      --  "[5] Add a new named element to the environment. Note that this
      --  operation is defined as a query operation so that it can be used in
      --  OCL constraints.
      --
      --  context Environment::addElement (name : String,
      --                     elem : ModelElement, imp : Boolean) : Environment
      --  pre : -- the name must not clash with names already existing in this
      --        -- environment
      --      self.lookupLocal(name).oclIsUndefined()
      --
      --  post: result.parent = self.parent and
      --      result.namedElements->includesAll (self.namedElements) and
      --      result.namedElements->count (v | v.oclIsNew()) = 1 and
      --      result.namedElements->forAll (v | v.oclIsNew() implies
      --                            v.name = name and v.referredElement = elem)
      --                            and
      --                            v.mayBeImplicit = imp )"

   begin
      null;
   end Add_Element;

end AMF.Internals.OCL_Environments;
