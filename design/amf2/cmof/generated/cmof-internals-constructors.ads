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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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

package CMOF.Internals.Constructors is

   function Create_Association return CMOF_Element;

   function Create_Class return CMOF_Element;

   function Create_Comment return CMOF_Element;

   function Create_Constraint return CMOF_Element;

   function Create_Data_Type return CMOF_Element;

   function Create_Element_Import return CMOF_Element;

   function Create_Enumeration return CMOF_Element;

   function Create_Enumeration_Literal return CMOF_Element;

   function Create_Expression return CMOF_Element;

   function Create_Opaque_Expression return CMOF_Element;

   function Create_Operation return CMOF_Element;

   function Create_Package return CMOF_Element;

   function Create_Package_Import return CMOF_Element;

   function Create_Package_Merge return CMOF_Element;

   function Create_Parameter return CMOF_Element;

   function Create_Primitive_Type return CMOF_Element;

   function Create_Property return CMOF_Element;

   function Create_Tag return CMOF_Element;

   procedure Initialize_Association (Self : CMOF_Element);

   procedure Initialize_Class (Self : CMOF_Element);

   procedure Initialize_Comment (Self : CMOF_Element);

   procedure Initialize_Constraint (Self : CMOF_Element);

   procedure Initialize_Data_Type (Self : CMOF_Element);

   procedure Initialize_Element_Import (Self : CMOF_Element);

   procedure Initialize_Enumeration (Self : CMOF_Element);

   procedure Initialize_Enumeration_Literal (Self : CMOF_Element);

   procedure Initialize_Expression (Self : CMOF_Element);

   procedure Initialize_Opaque_Expression (Self : CMOF_Element);

   procedure Initialize_Operation (Self : CMOF_Element);

   procedure Initialize_Package (Self : CMOF_Element);

   procedure Initialize_Package_Import (Self : CMOF_Element);

   procedure Initialize_Package_Merge (Self : CMOF_Element);

   procedure Initialize_Parameter (Self : CMOF_Element);

   procedure Initialize_Primitive_Type (Self : CMOF_Element);

   procedure Initialize_Property (Self : CMOF_Element);

   procedure Initialize_Tag (Self : CMOF_Element);

end CMOF.Internals.Constructors;
