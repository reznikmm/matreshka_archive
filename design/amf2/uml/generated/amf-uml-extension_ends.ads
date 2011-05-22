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
--  An extension end is used to tie an extension to a stereotype when 
--  extending a metaclass.
--  The default multiplicity of an extension end is 0..1.
------------------------------------------------------------------------------
with AMF.UML.Properties;
limited with AMF.UML.Stereotypes;

package AMF.UML.Extension_Ends is

   pragma Preelaborate;

   type UML_Extension_End is limited interface
     and AMF.UML.Properties.UML_Property;

   type UML_Extension_End_Access is
     access all UML_Extension_End'Class;
   for UML_Extension_End_Access'Storage_Size use 0;

   overriding function Get_Lower
    (Self : not null access constant UML_Extension_End)
       return Optional_Integer is abstract;
   --  This redefinition changes the default multiplicity of association ends, 
   --  since model elements are usually extended by 0 or 1 instance of the 
   --  extension stereotype.

   overriding procedure Set_Lower
    (Self : not null access UML_Extension_End;
     To   : Optional_Integer) is abstract;

   not overriding function Get_Type
    (Self : not null access constant UML_Extension_End)
       return AMF.UML.Stereotypes.UML_Stereotype_Access is abstract;
   --  References the type of the ExtensionEnd. Note that this association 
   --  restricts the possible types of an ExtensionEnd to only be Stereotypes.

   not overriding procedure Set_Type
    (Self : not null access UML_Extension_End;
     To   : AMF.UML.Stereotypes.UML_Stereotype_Access) is abstract;

   overriding function Lower_Bound
    (Self : not null access constant UML_Extension_End)
       return Optional_Integer is abstract;
   --  The query lowerBound() returns the lower bound of the multiplicity as 
   --  an Integer. This is a redefinition of the default lower bound, which 
   --  normally, for MultiplicityElements, evaluates to 1 if empty.

end AMF.UML.Extension_Ends;
