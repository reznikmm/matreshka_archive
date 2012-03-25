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
with AMF.Elements;
with AMF.Internals.OCL_Environments;

with AMF.OCL.Ocl_Expressions;

package body AMF.Internals.OCL_Parser is

   use AMF.Internals.OCL_Environments;

   Self_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("self");

   function Parse_Ocl_Expression_CS
    (Env : Environment)
       return not null AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access;

   --------------------------------
   -- Parse_Expression_In_Ocl_CS --
   --------------------------------

   function Parse_Expression_In_Ocl_CS
    (Contextual_Classifier :
       not null AMF.UML.Classifiers.UML_Classifier_Access)
       return not null AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
   is
      Env : Environment;
      Ast : AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access;

   begin
      Env.Add_Element
       (Self_Name, AMF.Elements.Element_Access (Contextual_Classifier), True);

      Ast.Set_Body_Expression (Parse_Ocl_Expression_CS (Env));

      return Ast;
   end Parse_Expression_In_Ocl_CS;
     
   -----------------------------
   -- Parse_Ocl_Expression_CS --
   -----------------------------

   function Parse_Ocl_Expression_CS
    (Env : Environment)
       return not null AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access
   is
      Ast : AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access;

   begin
      return Ast;
   end Parse_Ocl_Expression_CS;

end AMF.Internals.OCL_Parser;
