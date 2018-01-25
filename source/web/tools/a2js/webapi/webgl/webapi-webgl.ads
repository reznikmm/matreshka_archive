------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Web API Definition                            --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2014-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This is root package to expose WebGL API to Ada applications.
------------------------------------------------------------------------------
with Interfaces;

package WebAPI.WebGL is

   pragma Preelaborate;

   type GLboolean is new Interfaces.Unsigned_8;

   type GLenum is new Interfaces.Unsigned_32;

   type GLbitfield is new Interfaces.Unsigned_32;

   type GLint is new Interfaces.Integer_32;
   subtype GLsizei is GLint range 0 .. GLint'Last;

   type GLuint is new Interfaces.Unsigned_32;

   type GLfloat is new Interfaces.IEEE_Float_32;
   subtype GLclampf is GLfloat range 0.0 .. 1.0;

   type GLintptr is new Interfaces.Integer_64;

   type GLfloat_Vector_2 is array (Positive range 1 .. 2) of GLfloat;
   pragma JavaScript_Array_Buffer (GLfloat_Vector_2);
   type GLfloat_Vector_3 is array (Positive range 1 .. 3) of GLfloat;
   pragma JavaScript_Array_Buffer (GLfloat_Vector_3);
   type GLfloat_Vector_4 is array (Positive range 1 .. 4) of GLfloat;
   pragma JavaScript_Array_Buffer (GLfloat_Vector_4);

   type GLfloat_Matrix_2x2 is
     array (Positive range 1 .. 2, Positive range 1 .. 2) of GLfloat
       with Convention => Fortran;
   pragma JavaScript_Array_Buffer (GLfloat_Matrix_2x2);
   type GLfloat_Matrix_3x3 is
     array (Positive range 1 .. 3, Positive range 1 .. 3) of GLfloat
       with Convention => Fortran;
   pragma JavaScript_Array_Buffer (GLfloat_Matrix_3x3);
   type GLfloat_Matrix_4x4 is
     array (Positive range 1 .. 4, Positive range 1 .. 4) of GLfloat
       with Convention => Fortran;
   pragma JavaScript_Array_Buffer (GLfloat_Matrix_4x4);

end WebAPI.WebGL;
