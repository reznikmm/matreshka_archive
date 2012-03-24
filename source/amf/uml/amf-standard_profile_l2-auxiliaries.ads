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
--  A class that supports another more central or fundamental class, typically 
--  by implementing secondary logic or control flow. The class that the 
--  auxiliary supports may be defined explicitly using a Focus class or 
--  implicitly as the supplier of dependency relationship whose client is an 
--  auxiliary class. Auxiliary classes are typically used together with Focus 
--  classes, and are particularly useful for specifying the secondary business 
--  logic or control flow of components during design. See also: «Focus».
------------------------------------------------------------------------------
limited with AMF.UML.Classes;

package AMF.Standard_Profile_L2.Auxiliaries is

   pragma Preelaborate;

   type Standard_Profile_L2_Auxiliary is limited interface;

   type Standard_Profile_L2_Auxiliary_Access is
     access all Standard_Profile_L2_Auxiliary'Class;
   for Standard_Profile_L2_Auxiliary_Access'Storage_Size use 0;

   not overriding function Get_Base_Class
    (Self : not null access constant Standard_Profile_L2_Auxiliary)
       return AMF.UML.Classes.UML_Class_Access is abstract;
   --  Getter of Auxiliary::base_Class.
   --

   not overriding procedure Set_Base_Class
    (Self : not null access Standard_Profile_L2_Auxiliary;
     To   : AMF.UML.Classes.UML_Class_Access) is abstract;
   --  Setter of Auxiliary::base_Class.
   --

end AMF.Standard_Profile_L2.Auxiliaries;
