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
--  A reclassify object action is an action that changes which classifiers 
--  classify an object.
------------------------------------------------------------------------------
with AMF.UML.Actions;
limited with AMF.UML.Classifiers.Collections;
limited with AMF.UML.Input_Pins;

package AMF.UML.Reclassify_Object_Actions is

   pragma Preelaborate;

   type UML_Reclassify_Object_Action is limited interface
     and AMF.UML.Actions.UML_Action;

   type UML_Reclassify_Object_Action_Access is
     access all UML_Reclassify_Object_Action'Class;
   for UML_Reclassify_Object_Action_Access'Storage_Size use 0;

   not overriding function Get_Is_Replace_All
    (Self : not null access constant UML_Reclassify_Object_Action)
       return Boolean is abstract;
   --  Specifies whether existing classifiers should be removed before adding 
   --  the new classifiers.

   not overriding procedure Set_Is_Replace_All
    (Self : not null access UML_Reclassify_Object_Action;
     To   : Boolean) is abstract;

   not overriding function Get_New_Classifier
    (Self : not null access constant UML_Reclassify_Object_Action)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  A set of classifiers to be added to the classifiers of the object.

   not overriding function Get_Object
    (Self : not null access constant UML_Reclassify_Object_Action)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access is abstract;
   --  Holds the object to be reclassified.

   not overriding procedure Set_Object
    (Self : not null access UML_Reclassify_Object_Action;
     To   : AMF.UML.Input_Pins.UML_Input_Pin_Access) is abstract;

   not overriding function Get_Old_Classifier
    (Self : not null access constant UML_Reclassify_Object_Action)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  A set of classifiers to be removed from the classifiers of the object.

end AMF.UML.Reclassify_Object_Actions;
