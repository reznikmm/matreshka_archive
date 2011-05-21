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
--  An enumeration literal is a user-defined data value for an enumeration.
------------------------------------------------------------------------------
limited with AMF.UML.Enumerations;
with AMF.UML.Instance_Specifications;

package AMF.UML.Enumeration_Literals is

   pragma Preelaborate;

   type UML_Enumeration_Literal is limited interface
     and AMF.UML.Instance_Specifications.UML_Instance_Specification;

   type UML_Enumeration_Literal_Access is
     access all UML_Enumeration_Literal'Class;
   for UML_Enumeration_Literal_Access'Storage_Size use 0;

   not overriding function Get_Classifier
    (Self : not null access constant UML_Enumeration_Literal)
       return AMF.UML.Enumerations.UML_Enumeration_Access is abstract;
   --  The classifier of this EnumerationLiteral derived to be equal to its 
   --  enumeration.

   not overriding function Get_Enumeration
    (Self : not null access constant UML_Enumeration_Literal)
       return AMF.UML.Enumerations.UML_Enumeration_Access is abstract;
   --  The Enumeration that this EnumerationLiteral is a member of.

   not overriding procedure Set_Enumeration
    (Self : not null access UML_Enumeration_Literal;
     To   : AMF.UML.Enumerations.UML_Enumeration_Access) is abstract;

end AMF.UML.Enumeration_Literals;
