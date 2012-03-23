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
--  A class that specifies a domain of objects together with the operations 
--  applicable to the objects, without defining the physical implementation of 
--  those objects. However, it may have attributes and associations. 
--  Behavioral specifications for type operations may be expressed using, for 
--  example, activity diagrams. An object may have at most one implementation 
--  class, however it may conform to multiple different types. See also: 
--  «ImplementationClass».
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers;

package AMF.Standard_Profile_L2.Specifications is

   pragma Preelaborate;

   type Standard_Profile_L2_Specification is limited interface;

   type Standard_Profile_L2_Specification_Access is
     access all Standard_Profile_L2_Specification'Class;
   for Standard_Profile_L2_Specification_Access'Storage_Size use 0;

   not overriding function Get_Base_Classifier
    (Self : not null access constant Standard_Profile_L2_Specification)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  Getter of Specification::base_Classifier.
   --

   not overriding procedure Set_Base_Classifier
    (Self : not null access Standard_Profile_L2_Specification;
     To   : AMF.UML.Classifiers.UML_Classifier_Access) is abstract;
   --  Setter of Specification::base_Classifier.
   --

end AMF.Standard_Profile_L2.Specifications;
