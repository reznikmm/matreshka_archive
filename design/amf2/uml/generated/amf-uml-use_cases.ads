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
--  A use case is the specification of a set of actions performed by a system, 
--  which yields an observable result that is, typically, of value for one or 
--  more actors or other stakeholders of the system.
------------------------------------------------------------------------------
with AMF.UML.Behaviored_Classifiers;
limited with AMF.UML.Classifiers.Collections;
limited with AMF.UML.Extends.Collections;
limited with AMF.UML.Extension_Points.Collections;
limited with AMF.UML.Includes.Collections;

package AMF.UML.Use_Cases is

   pragma Preelaborate;

   type UML_Use_Case_Interface is limited interface
     and AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier_Interface;

   type UML_Use_Case is
     access all UML_Use_Case_Interface'Class;
   for UML_Use_Case'Storage_Size use 0;

   not overriding function Get_Extend
    (Self : not null access constant UML_Use_Case_Interface)
       return AMF.UML.Extends.Collections.Set_Of_UML_Extend is abstract;
   --  References the Extend relationships owned by this use case.

   not overriding function Get_Extension_Point
    (Self : not null access constant UML_Use_Case_Interface)
       return AMF.UML.Extension_Points.Collections.Set_Of_UML_Extension_Point is abstract;
   --  References the ExtensionPoints owned by the use case.

   not overriding function Get_Include
    (Self : not null access constant UML_Use_Case_Interface)
       return AMF.UML.Includes.Collections.Set_Of_UML_Include is abstract;
   --  References the Include relationships owned by this use case.

   not overriding function Get_Subject
    (Self : not null access constant UML_Use_Case_Interface)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  References the subjects to which this use case applies. The subject or 
   --  its parts realize all the use cases that apply to this subject. Use 
   --  cases need not be attached to any specific subject, however. The 
   --  subject may, but need not, own the use cases that apply to it.

end AMF.UML.Use_Cases;
