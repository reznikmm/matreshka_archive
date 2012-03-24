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
--  A model captures a view of a physical system. It is an abstraction of the 
--  physical system, with a certain purpose. This purpose determines what is 
--  to be included in the model and what is irrelevant. Thus the model 
--  completely describes those aspects of the physical system that are 
--  relevant to the purpose of the model, at the appropriate level of detail.
------------------------------------------------------------------------------
with AMF.UML.Packages;

package AMF.UML.Models is

   pragma Preelaborate;

   type UML_Model is limited interface
     and AMF.UML.Packages.UML_Package;

   type UML_Model_Access is
     access all UML_Model'Class;
   for UML_Model_Access'Storage_Size use 0;

   not overriding function Get_Viewpoint
    (Self : not null access constant UML_Model)
       return AMF.Optional_String is abstract;
   --  Getter of Model::viewpoint.
   --
   --  The name of the viewpoint that is expressed by a model (This name may 
   --  refer to a profile definition).

   not overriding procedure Set_Viewpoint
    (Self : not null access UML_Model;
     To   : AMF.Optional_String) is abstract;
   --  Setter of Model::viewpoint.
   --
   --  The name of the viewpoint that is expressed by a model (This name may 
   --  refer to a profile definition).

end AMF.UML.Models;
