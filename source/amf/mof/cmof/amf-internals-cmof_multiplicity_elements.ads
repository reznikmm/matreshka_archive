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
with AMF.CMOF.Multiplicity_Elements;
with AMF.Internals.CMOF_Elements;

generic
   type Element_Proxy is
     abstract new AMF.Internals.CMOF_Elements.CMOF_Element_Proxy with private;

package AMF.Internals.CMOF_Multiplicity_Elements is

   type CMOF_Multiplicity_Element_Proxy is
     abstract limited new Element_Proxy
       and AMF.CMOF.Multiplicity_Elements.CMOF_Multiplicity_Element
         with null record;

   overriding function Get_Is_Ordered
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Boolean;

   overriding function Get_Is_Unique
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Boolean;

   overriding function Get_Lower
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Optional_Integer;

   overriding function Get_Upper
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Optional_Unlimited_Natural;

   overriding function Is_Multivalued
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Boolean;

   overriding function Lower_Bound
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Integer;

   overriding function Upper_Bound
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Unlimited_Natural;

   overriding procedure Set_Is_Ordered
    (Self : not null access CMOF_Multiplicity_Element_Proxy;
     To   : Boolean);

   overriding procedure Set_Is_Unique
    (Self : not null access CMOF_Multiplicity_Element_Proxy;
     To   : Boolean);

   overriding procedure Set_Lower
    (Self : not null access CMOF_Multiplicity_Element_Proxy;
     To   : Optional_Integer);

   overriding procedure Set_Upper
    (Self : not null access CMOF_Multiplicity_Element_Proxy;
     To   : Optional_Unlimited_Natural);

end AMF.Internals.CMOF_Multiplicity_Elements;
