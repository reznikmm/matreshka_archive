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
--  A profile application is used to show which profiles have been applied to 
--  a package.
------------------------------------------------------------------------------
with AMF.UML.Directed_Relationships;
limited with AMF.UML.Packages;
limited with AMF.UML.Profiles;

package AMF.UML.Profile_Applications is

   pragma Preelaborate;

   type UML_Profile_Application_Interface is limited interface
     and AMF.UML.Directed_Relationships.UML_Directed_Relationship_Interface;

   type UML_Profile_Application is
     access all UML_Profile_Application_Interface'Class;

   type Set_Of_UML_Profile_Application is null record;
   type Ordered_Set_Of_UML_Profile_Application is null record;

   not overriding function Get_Applied_Profile
    (Self : not null access constant UML_Profile_Application_Interface)
       return AMF.UML.Profiles.UML_Profile is abstract;
   --  References the Profiles that are applied to a Package through this 
   --  ProfileApplication.

   not overriding procedure Set_Applied_Profile
    (Self : not null access UML_Profile_Application_Interface;
     To   : AMF.UML.Profiles.UML_Profile) is abstract;

   not overriding function Get_Applying_Package
    (Self : not null access constant UML_Profile_Application_Interface)
       return AMF.UML.Packages.UML_Package is abstract;
   --  The package that owns the profile application.

   not overriding procedure Set_Applying_Package
    (Self : not null access UML_Profile_Application_Interface;
     To   : AMF.UML.Packages.UML_Package) is abstract;

   not overriding function Get_Is_Strict
    (Self : not null access constant UML_Profile_Application_Interface)
       return Boolean is abstract;
   --  Specifies that the Profile filtering rules for the metaclasses of the 
   --  referenced metamodel shall be strictly applied.

   not overriding procedure Set_Is_Strict
    (Self : not null access UML_Profile_Application_Interface;
     To   : Boolean) is abstract;

end AMF.UML.Profile_Applications;
