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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
limited with AMF.String_Collections;
limited with AMF.UML.Behaviored_Classifiers;
limited with AMF.UML.Structured_Classifiers;

package AMF.Utp.Test_Contexts is

   pragma Preelaborate;

   type Utp_Test_Context is limited interface;

   type Utp_Test_Context_Access is
     access all Utp_Test_Context'Class;
   for Utp_Test_Context_Access'Storage_Size use 0;

   not overriding function Get_Base_Structured_Classifier
    (Self : not null access constant Utp_Test_Context)
       return AMF.UML.Structured_Classifiers.UML_Structured_Classifier_Access is abstract;
   --  Getter of TestContext::base_StructuredClassifier.
   --

   not overriding procedure Set_Base_Structured_Classifier
    (Self : not null access Utp_Test_Context;
     To   : AMF.UML.Structured_Classifiers.UML_Structured_Classifier_Access) is abstract;
   --  Setter of TestContext::base_StructuredClassifier.
   --

   not overriding function Get_Base_Behaviored_Classifier
    (Self : not null access constant Utp_Test_Context)
       return AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier_Access is abstract;
   --  Getter of TestContext::base_BehavioredClassifier.
   --

   not overriding procedure Set_Base_Behaviored_Classifier
    (Self : not null access Utp_Test_Context;
     To   : AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier_Access) is abstract;
   --  Setter of TestContext::base_BehavioredClassifier.
   --

   not overriding function Get_Test_Level
    (Self : not null access constant Utp_Test_Context)
       return AMF.Optional_String is abstract;
   --  Getter of TestContext::testLevel.
   --

   not overriding procedure Set_Test_Level
    (Self : not null access Utp_Test_Context;
     To   : AMF.Optional_String) is abstract;
   --  Setter of TestContext::testLevel.
   --

   not overriding function Get_Compatible_SUT_Version
    (Self : not null access constant Utp_Test_Context)
       return AMF.String_Collections.Set_Of_String is abstract;
   --  Getter of TestContext::compatibleSUTVersion.
   --

   not overriding function Get_Compatible_SUT_Variant
    (Self : not null access constant Utp_Test_Context)
       return AMF.String_Collections.Set_Of_String is abstract;
   --  Getter of TestContext::compatibleSUTVariant.
   --

end AMF.Utp.Test_Contexts;
