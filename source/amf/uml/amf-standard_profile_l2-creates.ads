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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  When applied to a usage dependency, it specifies that the client 
--  classifier creates instances of the supplier classifier. When applied to a 
--  BehavioralFeature, it specifies that the designated feature creates an 
--  instance of the classifier to which the feature is attached.
------------------------------------------------------------------------------
limited with AMF.UML.Behavioral_Features;
limited with AMF.UML.Usages;

package AMF.Standard_Profile_L2.Creates is

   pragma Preelaborate;

   type Standard_Profile_L2_Create is limited interface;

   type Standard_Profile_L2_Create_Access is
     access all Standard_Profile_L2_Create'Class;
   for Standard_Profile_L2_Create_Access'Storage_Size use 0;

   not overriding function Get_Base_Behavioral_Feature
    (Self : not null access constant Standard_Profile_L2_Create)
       return AMF.UML.Behavioral_Features.UML_Behavioral_Feature_Access is abstract;
   --  Getter of Create::base_BehavioralFeature.
   --

   not overriding procedure Set_Base_Behavioral_Feature
    (Self : not null access Standard_Profile_L2_Create;
     To   : AMF.UML.Behavioral_Features.UML_Behavioral_Feature_Access) is abstract;
   --  Setter of Create::base_BehavioralFeature.
   --

   not overriding function Get_Base_Usage
    (Self : not null access constant Standard_Profile_L2_Create)
       return AMF.UML.Usages.UML_Usage_Access is abstract;
   --  Getter of Create::base_Usage.
   --

   not overriding procedure Set_Base_Usage
    (Self : not null access Standard_Profile_L2_Create;
     To   : AMF.UML.Usages.UML_Usage_Access) is abstract;
   --  Setter of Create::base_Usage.
   --

end AMF.Standard_Profile_L2.Creates;
