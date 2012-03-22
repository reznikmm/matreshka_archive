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
with AMF.Internals.Tables.UML_Attributes;
with AMF.UML.Generalizations.Collections;

package body AMF.Internals.UML_Classifiers is

   -----------------
   -- All_Parents --
   -----------------

   overriding function All_Parents
    (Self : not null access constant UML_Classifier_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
      --  [UML241] 7.3.8 Classifier
      --
      --  [3] The query allParents() gives all of the direct and indirect
      --  ancestors of a generalized Classifier.
      --
      --  Classifier::allParents(): Set(Classifier);
      --
      --  allParents =
      --    self.parents()->union(self.parents()->collect(p | p.allParents()))

      P : constant AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
        := Self.Parents;

   begin
      return Result : AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
        := P
      do
         for J in 1 .. P.Length loop
            Result.Union (P.Element (J).All_Parents);
         end loop;
      end return;
   end All_Parents;

   -------------
   -- Parents --
   -------------

   overriding function Parents
    (Self : not null access constant UML_Classifier_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
      --  [UML241] 7.3.8 Classifier
      --
      --  [2] The query parents() gives all of the immediate ancestors of a
      --  generalized Classifier.
      --
      --  Classifier::parents(): Set(Classifier);
      --
      --  parents = generalization.general

   begin
      return Result : AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier do
         declare
            G : constant
              AMF.UML.Generalizations.Collections.Set_Of_UML_Generalization
                := UML_Classifier_Proxy'Class (Self.all).Get_Generalization;
            X : AMF.UML.Classifiers.UML_Classifier_Access;
            --  GNAT FSF 4.6: X is used to workaround crash of compiler.

         begin
            for J in 1 .. G.Length loop
               X := G.Element (J).Get_General;
               Result.Add (X);
            end loop;
         end;
      end return;
   end Parents;

   ---------------------
   -- Set_Is_Abstract --
   ---------------------

   overriding procedure Set_Is_Abstract
    (Self : not null access UML_Classifier_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Abstract
       (Self.Element, To);
   end Set_Is_Abstract;

end AMF.Internals.UML_Classifiers;
