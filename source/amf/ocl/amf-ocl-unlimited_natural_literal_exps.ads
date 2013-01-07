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
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.OCL.Numeric_Literal_Exps;

package AMF.OCL.Unlimited_Natural_Literal_Exps is

   pragma Preelaborate;

   type OCL_Unlimited_Natural_Literal_Exp is limited interface
     and AMF.OCL.Numeric_Literal_Exps.OCL_Numeric_Literal_Exp;

   type OCL_Unlimited_Natural_Literal_Exp_Access is
     access all OCL_Unlimited_Natural_Literal_Exp'Class;
   for OCL_Unlimited_Natural_Literal_Exp_Access'Storage_Size use 0;

   not overriding function Get_Unlimited_Natural_Symbol
    (Self : not null access constant OCL_Unlimited_Natural_Literal_Exp)
       return AMF.Unlimited_Natural is abstract;
   --  Getter of UnlimitedNaturalLiteralExp::unlimitedNaturalSymbol.
   --

   not overriding procedure Set_Unlimited_Natural_Symbol
    (Self : not null access OCL_Unlimited_Natural_Literal_Exp;
     To   : AMF.Unlimited_Natural) is abstract;
   --  Setter of UnlimitedNaturalLiteralExp::unlimitedNaturalSymbol.
   --

end AMF.OCL.Unlimited_Natural_Literal_Exps;
