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
--  A read is classified object action is an action that determines whether a 
--  runtime object is classified by a given classifier.
------------------------------------------------------------------------------
with AMF.UML.Actions;
limited with AMF.UML.Classifiers;
limited with AMF.UML.Input_Pins;
limited with AMF.UML.Output_Pins;

package AMF.UML.Read_Is_Classified_Object_Actions is

   pragma Preelaborate;

   type UML_Read_Is_Classified_Object_Action_Interface is limited interface
     and AMF.UML.Actions.UML_Action_Interface;

   type UML_Read_Is_Classified_Object_Action is
     access all UML_Read_Is_Classified_Object_Action_Interface'Class;
   for UML_Read_Is_Classified_Object_Action'Storage_Size use 0;

   not overriding function Get_Classifier
    (Self : not null access constant UML_Read_Is_Classified_Object_Action_Interface)
       return AMF.UML.Classifiers.UML_Classifier is abstract;
   --  The classifier against which the classification of the input object is 
   --  tested.

   not overriding procedure Set_Classifier
    (Self : not null access UML_Read_Is_Classified_Object_Action_Interface;
     To   : AMF.UML.Classifiers.UML_Classifier) is abstract;

   not overriding function Get_Is_Direct
    (Self : not null access constant UML_Read_Is_Classified_Object_Action_Interface)
       return Boolean is abstract;
   --  Indicates whether the classifier must directly classify the input 
   --  object.

   not overriding procedure Set_Is_Direct
    (Self : not null access UML_Read_Is_Classified_Object_Action_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Object
    (Self : not null access constant UML_Read_Is_Classified_Object_Action_Interface)
       return AMF.UML.Input_Pins.UML_Input_Pin is abstract;
   --  Holds the object whose classification is to be tested.

   not overriding procedure Set_Object
    (Self : not null access UML_Read_Is_Classified_Object_Action_Interface;
     To   : AMF.UML.Input_Pins.UML_Input_Pin) is abstract;

   not overriding function Get_Result
    (Self : not null access constant UML_Read_Is_Classified_Object_Action_Interface)
       return AMF.UML.Output_Pins.UML_Output_Pin is abstract;
   --  After termination of the action, will hold the result of the test.

   not overriding procedure Set_Result
    (Self : not null access UML_Read_Is_Classified_Object_Action_Interface;
     To   : AMF.UML.Output_Pins.UML_Output_Pin) is abstract;

end AMF.UML.Read_Is_Classified_Object_Actions;
