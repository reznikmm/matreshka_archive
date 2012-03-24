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
--  The implementation of a class in some programming language (e.g., C++, 
--  Smalltalk, Java) in which an instance may not have more than one class. 
--  This is in contrast to Class, for which an instance may have multiple 
--  classes at one time and may gain or lose classes over time, and an object 
--  (a child of instance) may dynamically have multiple classes. An 
--  Implementation class is said to realize a Classifier if it provides all of 
--  the operations defined for the Classifier with the same behavior as 
--  specified for the Classifier's operations. An Implementation Class may 
--  realize a number of different Types. Note that the physical attributes and 
--  associations of the Implementation class do not have to be the same as 
--  those of any Classifier it realizes and that the Implementation Class may 
--  provide methods for its operations in terms of its physical attributes and 
--  associations. See also: «Type».
------------------------------------------------------------------------------
limited with AMF.UML.Classes;

package AMF.Standard_Profile_L2.Implementation_Classes is

   pragma Preelaborate;

   type Standard_Profile_L2_Implementation_Class is limited interface;

   type Standard_Profile_L2_Implementation_Class_Access is
     access all Standard_Profile_L2_Implementation_Class'Class;
   for Standard_Profile_L2_Implementation_Class_Access'Storage_Size use 0;

   not overriding function Get_Base_Class
    (Self : not null access constant Standard_Profile_L2_Implementation_Class)
       return AMF.UML.Classes.UML_Class_Access is abstract;
   --  Getter of ImplementationClass::base_Class.
   --

   not overriding procedure Set_Base_Class
    (Self : not null access Standard_Profile_L2_Implementation_Class;
     To   : AMF.UML.Classes.UML_Class_Access) is abstract;
   --  Setter of ImplementationClass::base_Class.
   --

end AMF.Standard_Profile_L2.Implementation_Classes;
