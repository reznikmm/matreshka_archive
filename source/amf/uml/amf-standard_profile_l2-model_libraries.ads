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
--  A package that contains model elements that are intended to be reused by 
--  other packages. Model libraries are frequently used in conjunction with 
--  applied profiles. This is expressed by defining a dependency between a 
--  profile and a model library package, or by defining a model library as 
--  contained in a profile package. The classes in a model library are not 
--  stereotypes and tagged definitions extending the metamodel. A model 
--  library is analogous to a class library in some programming languages. 
--  When a model library is defined as a part of a profile, it is imported or 
--  deleted with the application or removal of the profile. The profile is 
--  implicitly applied to its model library. In the other case, when the model 
--  library is defined as an external package imported by a profile, the 
--  profile requires that the model library be there in the model at the stage 
--  of the profile application. The application or the removal of the profile 
--  does not affect the presence of the model library elements.
------------------------------------------------------------------------------
limited with AMF.UML.Packages;

package AMF.Standard_Profile_L2.Model_Libraries is

   pragma Preelaborate;

   type Standard_Profile_L2_Model_Library is limited interface;

   type Standard_Profile_L2_Model_Library_Access is
     access all Standard_Profile_L2_Model_Library'Class;
   for Standard_Profile_L2_Model_Library_Access'Storage_Size use 0;

   not overriding function Get_Base_Package
    (Self : not null access constant Standard_Profile_L2_Model_Library)
       return AMF.UML.Packages.UML_Package_Access is abstract;
   --  Getter of ModelLibrary::base_Package.
   --

   not overriding procedure Set_Base_Package
    (Self : not null access Standard_Profile_L2_Model_Library;
     To   : AMF.UML.Packages.UML_Package_Access) is abstract;
   --  Setter of ModelLibrary::base_Package.
   --

end AMF.Standard_Profile_L2.Model_Libraries;
