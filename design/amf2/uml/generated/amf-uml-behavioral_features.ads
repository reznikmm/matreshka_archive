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
--  A behavioral feature is a feature of a classifier that specifies an aspect 
--  of the behavior of its instances.
--  A behavioral feature owns zero or more parameter sets.
--  A behavioral feature is implemented (realized) by a behavior. A behavioral 
--  feature specifies that a classifier will respond to a designated request 
--  by invoking its implementing method.
------------------------------------------------------------------------------
limited with AMF.UML.Behaviors.Collections;
with AMF.UML.Features;
with AMF.UML.Namespaces;
limited with AMF.UML.Parameter_Sets.Collections;
limited with AMF.UML.Parameters.Collections;
limited with AMF.UML.Types.Collections;

package AMF.UML.Behavioral_Features is

   pragma Preelaborate;

   type UML_Behavioral_Feature_Interface is limited interface
     and AMF.UML.Features.UML_Feature_Interface
     and AMF.UML.Namespaces.UML_Namespace_Interface;

   type UML_Behavioral_Feature is
     access all UML_Behavioral_Feature_Interface'Class;
   for UML_Behavioral_Feature'Storage_Size use 0;

   not overriding function Get_Concurrency
    (Self : not null access constant UML_Behavioral_Feature_Interface)
       return UML_Call_Concurrency_Kind is abstract;
   --  Specifies the semantics of concurrent calls to the same passive 
   --  instance (i.e., an instance originating from a class with isActive 
   --  being false). Active instances control access to their own behavioral 
   --  features.

   not overriding procedure Set_Concurrency
    (Self : not null access UML_Behavioral_Feature_Interface;
     To   : UML_Call_Concurrency_Kind) is abstract;

   not overriding function Get_Is_Abstract
    (Self : not null access constant UML_Behavioral_Feature_Interface)
       return Boolean is abstract;
   --  If true, then the behavioral feature does not have an implementation, 
   --  and one must be supplied by a more specific element. If false, the 
   --  behavioral feature must have an implementation in the classifier or one 
   --  must be inherited from a more general element.

   not overriding procedure Set_Is_Abstract
    (Self : not null access UML_Behavioral_Feature_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Method
    (Self : not null access constant UML_Behavioral_Feature_Interface)
       return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior is abstract;
   --  A behavioral description that implements the behavioral feature. There 
   --  may be at most one behavior for a particular pairing of a classifier 
   --  (as owner of the behavior) and a behavioral feature (as specification 
   --  of the behavior).

   not overriding function Get_Owned_Parameter
    (Self : not null access constant UML_Behavioral_Feature_Interface)
       return AMF.UML.Parameters.Collections.Ordered_Set_Of_UML_Parameter is abstract;
   --  Specifies the ordered set of formal parameters of this 
   --  BehavioralFeature.

   not overriding function Get_Owned_Parameter_Set
    (Self : not null access constant UML_Behavioral_Feature_Interface)
       return AMF.UML.Parameter_Sets.Collections.Set_Of_UML_Parameter_Set is abstract;
   --  The ParameterSets owned by this BehavioralFeature.

   not overriding function Get_Raised_Exception
    (Self : not null access constant UML_Behavioral_Feature_Interface)
       return AMF.UML.Types.Collections.Set_Of_UML_Type is abstract;
   --  References the Types representing exceptions that may be raised during 
   --  an invocation of this feature.

end AMF.UML.Behavioral_Features;
