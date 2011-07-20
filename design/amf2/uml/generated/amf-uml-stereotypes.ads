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
--  A stereotype defines how an existing metaclass may be extended, and 
--  enables the use of platform or domain specific terminology or notation in 
--  place of, or in addition to, the ones used for the extended metaclass.
------------------------------------------------------------------------------
with AMF.UML.Classes;
limited with AMF.UML.Images.Collections;
limited with AMF.UML.Profiles;

package AMF.UML.Stereotypes is

   pragma Preelaborate;

   type UML_Stereotype is limited interface
     and AMF.UML.Classes.UML_Class;

   type UML_Stereotype_Access is
     access all UML_Stereotype'Class;
   for UML_Stereotype_Access'Storage_Size use 0;

   not overriding function Get_Icon
    (Self : not null access constant UML_Stereotype)
       return AMF.UML.Images.Collections.Set_Of_UML_Image is abstract;
   --  Getter of Stereotype::icon.
   --
   --  Stereotype can change the graphical appearance of the extended model 
   --  element by using attached icons. When this association is not null, it 
   --  references the location of the icon content to be displayed within 
   --  diagrams presenting the extended model elements.

   not overriding function Get_Profile
    (Self : not null access constant UML_Stereotype)
       return AMF.UML.Profiles.UML_Profile_Access is abstract;
   --  Getter of Stereotype::profile.
   --
   --  The profile that directly or indirectly contains this stereotype.

   not overriding function Containing_Profile
    (Self : not null access constant UML_Stereotype)
       return AMF.UML.Profiles.UML_Profile_Access is abstract;
   --  The query containingProfile returns the closest profile directly or 
   --  indirectly containing this stereotype.

   not overriding function Profile
    (Self : not null access constant UML_Stereotype)
       return AMF.UML.Profiles.UML_Profile_Access is abstract;
   --  A stereotype must be contained, directly or indirectly, in a profile.

end AMF.UML.Stereotypes;
