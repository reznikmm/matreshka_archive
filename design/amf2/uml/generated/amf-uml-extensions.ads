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
--  An extension is used to indicate that the properties of a metaclass are 
--  extended through a stereotype, and gives the ability to flexibly add (and 
--  later remove) stereotypes to classes.
------------------------------------------------------------------------------
with AMF.UML.Associations;
limited with AMF.UML.Classes;
limited with AMF.UML.Extension_Ends;

package AMF.UML.Extensions is

   pragma Preelaborate;

   type UML_Extension_Interface is limited interface
     and AMF.UML.Associations.UML_Association_Interface;

   type UML_Extension is
     access all UML_Extension_Interface'Class;

   type Set_Of_UML_Extension is null record;
   type Ordered_Set_Of_UML_Extension is null record;

   not overriding function Get_Is_Required
    (Self : not null access constant UML_Extension_Interface)
       return Boolean is abstract;
   --  Indicates whether an instance of the extending stereotype must be 
   --  created when an instance of the extended class is created. The 
   --  attribute value is derived from the value of the lower property of the 
   --  ExtensionEnd referenced by Extension::ownedEnd; a lower value of 1 
   --  means that isRequired is true, but otherwise it is false. Since the 
   --  default value of ExtensionEnd::lower is 0, the default value of 
   --  isRequired is false.

   not overriding function Get_Metaclass
    (Self : not null access constant UML_Extension_Interface)
       return AMF.UML.Classes.UML_Class is abstract;
   --  References the Class that is extended through an Extension. The 
   --  property is derived from the type of the memberEnd that is not the 
   --  ownedEnd.

   not overriding function Get_Owned_End
    (Self : not null access constant UML_Extension_Interface)
       return AMF.UML.Extension_Ends.UML_Extension_End is abstract;
   --  References the end of the extension that is typed by a Stereotype.

   not overriding procedure Set_Owned_End
    (Self : not null access UML_Extension_Interface;
     To   : AMF.UML.Extension_Ends.UML_Extension_End) is abstract;

end AMF.UML.Extensions;
