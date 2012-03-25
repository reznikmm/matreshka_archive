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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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

package AMF.Internals.OCL_Scanners is

   type OCL_Token is
    (T_Error,

     T_String_Char,

     --  Keywords.

     T_And,
     T_Body,
     T_Context,
     T_Def,
     T_Derive,
     T_Else,
     T_End_If,
     T_End_Package,
     T_False,
     T_If,
     T_Implies,
     T_In,
     T_Init,
     T_Inv,
     T_Invalid,
     T_Let,
     T_Not,
     T_Null,
     T_Or,
     T_Package,
     T_Post,
     T_Pre,
     T_Self,
     T_Static,
     T_Then,
     T_True,
     T_Xor,

     --  Restricted words.

     T_Bag,
     T_Boolean,
     T_Collection,
     T_Integer,
     T_Ocl_Any,
     T_Ocl_Invalid,
     T_Ocl_Message,
     T_Ocl_Void,
     T_Ordered_Set,
     T_Real,
     T_Sequence,
     T_Set,
     T_String,
     T_Tuple,
     T_Unlimited_Natural);

   type OCL_Scanner is tagged limited private;

   type OCL_Scanner_State is private;

   function Save (Self : in out OCL_Scanner) return OCL_Scanner_State;

   procedure Restore
    (Self : in out OCL_Scanner; State : OCL_Scanner_State);

   function Token (Self : in out OCL_Scanner) return OCL_Token;

   function Get_String_Char
    (Self : OCL_Scanner) return League.Strings.Universal_String;

   procedure Forward (Self : in out OCL_Scanner);

private

   type OCL_Scanner is tagged limited null record;

   type OCL_Scanner_State is null record;

end AMF.Internals.OCL_Scanners;
