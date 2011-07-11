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
with League.Strings;

with AMF.CMOF;
with AMF.Internals.Extents;
with AMF.Internals.Links;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Constructors;
with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Tables.CMOF_Metamodel;

package body AMF.Internals.Tables.CMOF_Setup is

   use AMF.CMOF;
   use AMF.Internals.Extents;
   use AMF.Internals.Links;
   use AMF.Internals.Tables;
   use AMF.Internals.Tables.CMOF_Attributes;
   use AMF.Internals.Tables.CMOF_Constructors;
   use AMF.Internals.Tables.CMOF_Metamodel;

   Extent : constant AMF.Internals.AMF_Extent
     := AMF.Internals.Extents.Allocate_Extent;
   Base   : AMF.Internals.CMOF_Element;
   Aux    : AMF.Internals.CMOF_Element;

begin
   Aux := Create_Class;
   Internal_Append (Extent, Aux);
   Base := Aux - 1;

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Class;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Association;
   Internal_Append (Extent, Aux);

   Aux := Create_Package;
   Internal_Append (Extent, Aux);

   Aux := Create_Primitive_Type;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Primitive_Type;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Primitive_Type;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Primitive_Type;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Enumeration;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Enumeration_Literal;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Enumeration_Literal;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Enumeration_Literal;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Enumeration_Literal;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Enumeration;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Operation;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Constraint;
   Internal_Append (Extent, Aux);

   Aux := Create_Opaque_Expression;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Parameter;
   Internal_Append (Extent, Aux);

   Aux := Create_Enumeration_Literal;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Enumeration_Literal;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Enumeration_Literal;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Enumeration_Literal;
   Internal_Append (Extent, Aux);

   Aux := Create_Comment;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Property;
   Internal_Append (Extent, Aux);

   Aux := Create_Tag;
   Internal_Append (Extent, Aux);

   Aux := Create_Tag;
   Internal_Append (Extent, Aux);

   Internal_Set_Name
    (Base + 189,
     (False, League.Strings.To_Universal_String ("CMOF")));
   Internal_Set_Uri
    (Base + 189,
     (False, League.Strings.To_Universal_String ("http://schema.omg.org/spec/MOF/2.0/cmof.xml")));

   Internal_Set_Is_Final_Specialization (Base + 190, False);
   Internal_Set_Name
    (Base + 190,
     (False, League.Strings.To_Universal_String ("Integer")));

   Internal_Set_Body
    (Base + 191,
     (False, League.Strings.To_Universal_String ("An integer is a primitive type representing integer values.")));

   Internal_Set_Is_Final_Specialization (Base + 192, False);
   Internal_Set_Name
    (Base + 192,
     (False, League.Strings.To_Universal_String ("Boolean")));

   Internal_Set_Body
    (Base + 193,
     (False, League.Strings.To_Universal_String ("A Boolean type is used for logical expression, consisting of the predefined values true and false.")));

   Internal_Set_Is_Final_Specialization (Base + 194, False);
   Internal_Set_Name
    (Base + 194,
     (False, League.Strings.To_Universal_String ("String")));

   Internal_Set_Body
    (Base + 195,
     (False, League.Strings.To_Universal_String ("A string is a sequence of characters in some suitable character set used to display information about the model. Character sets may include non-Roman alphabets and characters.")));

   Internal_Set_Is_Final_Specialization (Base + 196, False);
   Internal_Set_Name
    (Base + 196,
     (False, League.Strings.To_Universal_String ("UnlimitedNatural")));

   Internal_Set_Body
    (Base + 197,
     (False, League.Strings.To_Universal_String ("An unlimited natural is a primitive type representing unlimited natural values.")));

   Internal_Set_Is_Abstract (Base + 4, True);
   Internal_Set_Is_Final_Specialization (Base + 4, False);
   Internal_Set_Name
    (Base + 4,
     (False, League.Strings.To_Universal_String ("Classifier")));

   Internal_Set_Body
    (Base + 198,
     (False, League.Strings.To_Universal_String ("A classifier is a classification of instances - it describes a set of instances that have features in common. A classifier can specify a generalization hierarchy by referencing its general classifiers.")));

   Internal_Set_Name
    (Base + 199,
     (False, League.Strings.To_Universal_String ("no_cycles_in_generalization")));

   Internal_Set_Body
    (Base + 200,
     (False, League.Strings.To_Universal_String ("Generalization hierarchies must be directed and acyclical. A classifier can not be both a transitively general and transitively specific classifier of the same classifier.")));


   Internal_Set_Name
    (Base + 202,
     (False, League.Strings.To_Universal_String ("specialize_type")));

   Internal_Set_Body
    (Base + 203,
     (False, League.Strings.To_Universal_String ("A classifier may only specialize classifiers of a valid type.")));


   Internal_Set_Is_Composite (Base + 43, False);
   Internal_Set_Is_Derived (Base + 43, True);
   Internal_Set_Is_Derived_Union (Base + 43, True);
   Internal_Set_Is_Leaf (Base + 43, False);
   Internal_Set_Is_Ordered (Base + 43, False);
   Internal_Set_Is_Read_Only (Base + 43, True);
   Internal_Set_Is_Unique (Base + 43, True);
   Internal_Set_Lower (Base + 43, (False, 0));
   Internal_Set_Name
    (Base + 43,
     (False, League.Strings.To_Universal_String ("attribute")));
   Internal_Set_Upper (Base + 43, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 205,
     (False, League.Strings.To_Universal_String ("Refers to all of the Properties that are direct (i.e. not inherited or imported) attributes of the classifier.")));

   Internal_Set_Is_Composite (Base + 44, False);
   Internal_Set_Is_Derived (Base + 44, True);
   Internal_Set_Is_Derived_Union (Base + 44, True);
   Internal_Set_Is_Leaf (Base + 44, False);
   Internal_Set_Is_Ordered (Base + 44, False);
   Internal_Set_Is_Read_Only (Base + 44, True);
   Internal_Set_Is_Unique (Base + 44, True);
   Internal_Set_Lower (Base + 44, (False, 0));
   Internal_Set_Name
    (Base + 44,
     (False, League.Strings.To_Universal_String ("feature")));
   Internal_Set_Upper (Base + 44, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 206,
     (False, League.Strings.To_Universal_String ("Note that there may be members of the Classifier that are of the type Feature but are not included in this association, e.g. inherited features.")));

   Internal_Set_Is_Composite (Base + 45, False);
   Internal_Set_Is_Derived (Base + 45, False);
   Internal_Set_Is_Derived_Union (Base + 45, False);
   Internal_Set_Is_Leaf (Base + 45, False);
   Internal_Set_Is_Ordered (Base + 45, False);
   Internal_Set_Is_Read_Only (Base + 45, False);
   Internal_Set_Is_Unique (Base + 45, True);
   Internal_Set_Lower (Base + 45, (False, 0));
   Internal_Set_Name
    (Base + 45,
     (False, League.Strings.To_Universal_String ("general")));
   Internal_Set_Upper (Base + 45, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 207,
     (False, League.Strings.To_Universal_String ("References the general classifier in the Generalization relationship.")));

   Internal_Set_Is_Composite (Base + 46, False);
   Internal_Set_Is_Derived (Base + 46, True);
   Internal_Set_Is_Derived_Union (Base + 46, False);
   Internal_Set_Is_Leaf (Base + 46, False);
   Internal_Set_Is_Ordered (Base + 46, False);
   Internal_Set_Is_Read_Only (Base + 46, True);
   Internal_Set_Is_Unique (Base + 46, True);
   Internal_Set_Lower (Base + 46, (False, 0));
   Internal_Set_Name
    (Base + 46,
     (False, League.Strings.To_Universal_String ("inheritedMember")));
   Internal_Set_Upper (Base + 46, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 208,
     (False, League.Strings.To_Universal_String ("Specifies all elements inherited by this classifier from the general classifiers.")));

   Internal_Set_Default
    (Base + 81,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (Base + 81, False);
   Internal_Set_Is_Derived (Base + 81, False);
   Internal_Set_Is_Derived_Union (Base + 81, False);
   Internal_Set_Is_Leaf (Base + 81, False);
   Internal_Set_Is_Ordered (Base + 81, False);
   Internal_Set_Is_Read_Only (Base + 81, False);
   Internal_Set_Is_Unique (Base + 81, True);
   Internal_Set_Lower (Base + 81, (False, 1));
   Internal_Set_Name
    (Base + 81,
     (False, League.Strings.To_Universal_String ("isFinalSpecialization")));
   Internal_Set_Upper (Base + 81, (False, (False, 1)));

   Internal_Set_Body
    (Base + 209,
     (False, League.Strings.To_Universal_String ("If true, the Classifier cannot be specialized by generalization. Note that this property is preserved through package merge operations; that is, the capability to specialize a Classifier (i.e., isFinalSpecialization =false) must be preserved in the resulting Classifier of a package merge operation where a Classifier with isFinalSpecialization =false is merged with a matching Classifier with isFinalSpecialization =true: the resulting Classifier will have isFinalSpecialization =false.")));

   Internal_Set_Is_Leaf (Base + 210, False);
   Internal_Set_Is_Ordered (Base + 210, False);
   Internal_Set_Is_Query (Base + 210, True);
   Internal_Set_Is_Unique (Base + 210, True);
   Internal_Set_Lower (Base + 210, (False, 1));
   Internal_Set_Name
    (Base + 210,
     (False, League.Strings.To_Universal_String ("conformsTo")));
   Internal_Set_Upper (Base + 210, (False, (False, 1)));

   Internal_Set_Body
    (Base + 211,
     (False, League.Strings.To_Universal_String ("The query conformsTo() gives true for a classifier that defines a type that conforms to another. This is used, for example, in the specification of signature conformance for operations.")));

   Internal_Set_Name
    (Base + 212,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (214, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 214, False);
   Internal_Set_Is_Unique (Base + 214, True);
   Internal_Set_Lower (Base + 214, (False, 1));
   Internal_Set_Upper (Base + 214, (False, (False, 1)));

   Internal_Set_Direction (215, In_Parameter);
   Internal_Set_Is_Ordered (Base + 215, False);
   Internal_Set_Is_Unique (Base + 215, True);
   Internal_Set_Lower (Base + 215, (False, 1));
   Internal_Set_Name
    (Base + 215,
     (False, League.Strings.To_Universal_String ("other")));
   Internal_Set_Upper (Base + 215, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 216, False);
   Internal_Set_Is_Ordered (Base + 216, False);
   Internal_Set_Is_Query (Base + 216, True);
   Internal_Set_Is_Unique (Base + 216, True);
   Internal_Set_Lower (Base + 216, (False, 1));
   Internal_Set_Name
    (Base + 216,
     (False, League.Strings.To_Universal_String ("allFeatures")));
   Internal_Set_Upper (Base + 216, (False, (False, 1)));

   Internal_Set_Body
    (Base + 217,
     (False, League.Strings.To_Universal_String ("The query allFeatures() gives all of the features in the namespace of the classifier. In general, through mechanisms such as inheritance, this will be a larger set than feature.")));

   Internal_Set_Name
    (Base + 218,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (220, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 220, False);
   Internal_Set_Is_Unique (Base + 220, True);
   Internal_Set_Lower (Base + 220, (False, 0));
   Internal_Set_Upper (Base + 220, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 221, False);
   Internal_Set_Is_Ordered (Base + 221, False);
   Internal_Set_Is_Query (Base + 221, True);
   Internal_Set_Is_Unique (Base + 221, True);
   Internal_Set_Lower (Base + 221, (False, 1));
   Internal_Set_Name
    (Base + 221,
     (False, League.Strings.To_Universal_String ("general")));
   Internal_Set_Upper (Base + 221, (False, (False, 1)));

   Internal_Set_Body
    (Base + 222,
     (False, League.Strings.To_Universal_String ("The general classifiers are the classifiers referenced by the generalization relationships.")));

   Internal_Set_Name
    (Base + 223,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (225, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 225, False);
   Internal_Set_Is_Unique (Base + 225, True);
   Internal_Set_Lower (Base + 225, (False, 0));
   Internal_Set_Upper (Base + 225, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 226, False);
   Internal_Set_Is_Ordered (Base + 226, False);
   Internal_Set_Is_Query (Base + 226, True);
   Internal_Set_Is_Unique (Base + 226, True);
   Internal_Set_Lower (Base + 226, (False, 1));
   Internal_Set_Name
    (Base + 226,
     (False, League.Strings.To_Universal_String ("parents")));
   Internal_Set_Upper (Base + 226, (False, (False, 1)));

   Internal_Set_Body
    (Base + 227,
     (False, League.Strings.To_Universal_String ("The query parents() gives all of the immediate ancestors of a generalized Classifier.")));

   Internal_Set_Name
    (Base + 228,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (230, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 230, False);
   Internal_Set_Is_Unique (Base + 230, True);
   Internal_Set_Lower (Base + 230, (False, 0));
   Internal_Set_Upper (Base + 230, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 231, False);
   Internal_Set_Is_Ordered (Base + 231, False);
   Internal_Set_Is_Query (Base + 231, True);
   Internal_Set_Is_Unique (Base + 231, True);
   Internal_Set_Lower (Base + 231, (False, 1));
   Internal_Set_Name
    (Base + 231,
     (False, League.Strings.To_Universal_String ("inheritedMember")));
   Internal_Set_Upper (Base + 231, (False, (False, 1)));

   Internal_Set_Body
    (Base + 232,
     (False, League.Strings.To_Universal_String ("The inheritedMember association is derived by inheriting the inheritable members of the parents.")));

   Internal_Set_Name
    (Base + 233,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (235, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 235, False);
   Internal_Set_Is_Unique (Base + 235, True);
   Internal_Set_Lower (Base + 235, (False, 0));
   Internal_Set_Upper (Base + 235, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 236, False);
   Internal_Set_Is_Ordered (Base + 236, False);
   Internal_Set_Is_Query (Base + 236, True);
   Internal_Set_Is_Unique (Base + 236, True);
   Internal_Set_Lower (Base + 236, (False, 1));
   Internal_Set_Name
    (Base + 236,
     (False, League.Strings.To_Universal_String ("allParents")));
   Internal_Set_Upper (Base + 236, (False, (False, 1)));

   Internal_Set_Body
    (Base + 237,
     (False, League.Strings.To_Universal_String ("The query allParents() gives all of the direct and indirect ancestors of a generalized Classifier.")));

   Internal_Set_Name
    (Base + 238,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (240, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 240, False);
   Internal_Set_Is_Unique (Base + 240, True);
   Internal_Set_Lower (Base + 240, (False, 0));
   Internal_Set_Upper (Base + 240, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 241, False);
   Internal_Set_Is_Ordered (Base + 241, False);
   Internal_Set_Is_Query (Base + 241, True);
   Internal_Set_Is_Unique (Base + 241, True);
   Internal_Set_Lower (Base + 241, (False, 1));
   Internal_Set_Name
    (Base + 241,
     (False, League.Strings.To_Universal_String ("inheritableMembers")));
   Internal_Set_Upper (Base + 241, (False, (False, 1)));

   Internal_Set_Body
    (Base + 242,
     (False, League.Strings.To_Universal_String ("The query inheritableMembers() gives all of the members of a classifier that may be inherited in one of its descendants, subject to whatever visibility restrictions apply.")));



   Internal_Set_Name
    (Base + 245,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (247, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 247, False);
   Internal_Set_Is_Unique (Base + 247, True);
   Internal_Set_Lower (Base + 247, (False, 0));
   Internal_Set_Upper (Base + 247, (False, (Unlimited => True)));

   Internal_Set_Direction (248, In_Parameter);
   Internal_Set_Is_Ordered (Base + 248, False);
   Internal_Set_Is_Unique (Base + 248, True);
   Internal_Set_Lower (Base + 248, (False, 1));
   Internal_Set_Name
    (Base + 248,
     (False, League.Strings.To_Universal_String ("c")));
   Internal_Set_Upper (Base + 248, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 249, False);
   Internal_Set_Is_Ordered (Base + 249, False);
   Internal_Set_Is_Query (Base + 249, True);
   Internal_Set_Is_Unique (Base + 249, True);
   Internal_Set_Lower (Base + 249, (False, 1));
   Internal_Set_Name
    (Base + 249,
     (False, League.Strings.To_Universal_String ("hasVisibilityOf")));
   Internal_Set_Upper (Base + 249, (False, (False, 1)));

   Internal_Set_Body
    (Base + 250,
     (False, League.Strings.To_Universal_String ("The query hasVisibilityOf() determines whether a named element is visible in the classifier. By default all are visible. It is only called when the argument is something owned by a parent.")));



   Internal_Set_Name
    (Base + 253,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (255, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 255, False);
   Internal_Set_Is_Unique (Base + 255, True);
   Internal_Set_Lower (Base + 255, (False, 1));
   Internal_Set_Upper (Base + 255, (False, (False, 1)));

   Internal_Set_Direction (256, In_Parameter);
   Internal_Set_Is_Ordered (Base + 256, False);
   Internal_Set_Is_Unique (Base + 256, True);
   Internal_Set_Lower (Base + 256, (False, 1));
   Internal_Set_Name
    (Base + 256,
     (False, League.Strings.To_Universal_String ("n")));
   Internal_Set_Upper (Base + 256, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 257, False);
   Internal_Set_Is_Ordered (Base + 257, False);
   Internal_Set_Is_Query (Base + 257, True);
   Internal_Set_Is_Unique (Base + 257, True);
   Internal_Set_Lower (Base + 257, (False, 1));
   Internal_Set_Name
    (Base + 257,
     (False, League.Strings.To_Universal_String ("inherit")));
   Internal_Set_Upper (Base + 257, (False, (False, 1)));

   Internal_Set_Body
    (Base + 258,
     (False, League.Strings.To_Universal_String ("The inherit operation is overridden to exclude redefined properties.")));

   Internal_Set_Name
    (Base + 259,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (261, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 261, False);
   Internal_Set_Is_Unique (Base + 261, True);
   Internal_Set_Lower (Base + 261, (False, 0));
   Internal_Set_Upper (Base + 261, (False, (Unlimited => True)));

   Internal_Set_Direction (262, In_Parameter);
   Internal_Set_Is_Ordered (Base + 262, False);
   Internal_Set_Is_Unique (Base + 262, True);
   Internal_Set_Lower (Base + 262, (False, 0));
   Internal_Set_Name
    (Base + 262,
     (False, League.Strings.To_Universal_String ("inhs")));
   Internal_Set_Upper (Base + 262, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 263, False);
   Internal_Set_Is_Ordered (Base + 263, False);
   Internal_Set_Is_Query (Base + 263, True);
   Internal_Set_Is_Unique (Base + 263, True);
   Internal_Set_Lower (Base + 263, (False, 1));
   Internal_Set_Name
    (Base + 263,
     (False, League.Strings.To_Universal_String ("maySpecializeType")));
   Internal_Set_Upper (Base + 263, (False, (False, 1)));

   Internal_Set_Body
    (Base + 264,
     (False, League.Strings.To_Universal_String ("The query maySpecializeType() determines whether this classifier may have a generalization relationship to classifiers of the specified type. By default a classifier may specialize classifiers of the same or a more general type. It is intended to be redefined by classifiers that have different specialization constraints.")));

   Internal_Set_Name
    (Base + 265,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (267, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 267, False);
   Internal_Set_Is_Unique (Base + 267, True);
   Internal_Set_Lower (Base + 267, (False, 1));
   Internal_Set_Upper (Base + 267, (False, (False, 1)));

   Internal_Set_Direction (268, In_Parameter);
   Internal_Set_Is_Ordered (Base + 268, False);
   Internal_Set_Is_Unique (Base + 268, True);
   Internal_Set_Lower (Base + 268, (False, 1));
   Internal_Set_Name
    (Base + 268,
     (False, League.Strings.To_Universal_String ("c")));
   Internal_Set_Upper (Base + 268, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 8, True);
   Internal_Set_Is_Final_Specialization (Base + 8, False);
   Internal_Set_Name
    (Base + 8,
     (False, League.Strings.To_Universal_String ("DirectedRelationship")));

   Internal_Set_Body
    (Base + 269,
     (False, League.Strings.To_Universal_String ("A directed relationship represents a relationship between a collection of source model elements and a collection of target model elements.")));

   Internal_Set_Is_Composite (Base + 51, False);
   Internal_Set_Is_Derived (Base + 51, True);
   Internal_Set_Is_Derived_Union (Base + 51, True);
   Internal_Set_Is_Leaf (Base + 51, False);
   Internal_Set_Is_Ordered (Base + 51, False);
   Internal_Set_Is_Read_Only (Base + 51, True);
   Internal_Set_Is_Unique (Base + 51, True);
   Internal_Set_Lower (Base + 51, (False, 1));
   Internal_Set_Name
    (Base + 51,
     (False, League.Strings.To_Universal_String ("source")));
   Internal_Set_Upper (Base + 51, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 270,
     (False, League.Strings.To_Universal_String ("Specifies the sources of the DirectedRelationship.")));

   Internal_Set_Is_Composite (Base + 52, False);
   Internal_Set_Is_Derived (Base + 52, True);
   Internal_Set_Is_Derived_Union (Base + 52, True);
   Internal_Set_Is_Leaf (Base + 52, False);
   Internal_Set_Is_Ordered (Base + 52, False);
   Internal_Set_Is_Read_Only (Base + 52, True);
   Internal_Set_Is_Unique (Base + 52, True);
   Internal_Set_Lower (Base + 52, (False, 1));
   Internal_Set_Name
    (Base + 52,
     (False, League.Strings.To_Universal_String ("target")));
   Internal_Set_Upper (Base + 52, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 271,
     (False, League.Strings.To_Universal_String ("Specifies the targets of the DirectedRelationship.")));

   Internal_Set_Is_Abstract (Base + 9, True);
   Internal_Set_Is_Final_Specialization (Base + 9, False);
   Internal_Set_Name
    (Base + 9,
     (False, League.Strings.To_Universal_String ("Element")));

   Internal_Set_Body
    (Base + 272,
     (False, League.Strings.To_Universal_String ("An element is a constituent of a model. As such, it has the capability of owning other elements.")));

   Internal_Set_Name
    (Base + 273,
     (False, League.Strings.To_Universal_String ("not_own_self")));

   Internal_Set_Body
    (Base + 274,
     (False, League.Strings.To_Universal_String ("An element may not directly or indirectly own itself.")));


   Internal_Set_Name
    (Base + 276,
     (False, League.Strings.To_Universal_String ("has_owner")));

   Internal_Set_Body
    (Base + 277,
     (False, League.Strings.To_Universal_String ("Elements that must be owned must have an owner.")));


   Internal_Set_Is_Composite (Base + 54, True);
   Internal_Set_Is_Derived (Base + 54, True);
   Internal_Set_Is_Derived_Union (Base + 54, True);
   Internal_Set_Is_Leaf (Base + 54, False);
   Internal_Set_Is_Ordered (Base + 54, False);
   Internal_Set_Is_Read_Only (Base + 54, True);
   Internal_Set_Is_Unique (Base + 54, True);
   Internal_Set_Lower (Base + 54, (False, 0));
   Internal_Set_Name
    (Base + 54,
     (False, League.Strings.To_Universal_String ("ownedElement")));
   Internal_Set_Upper (Base + 54, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 279,
     (False, League.Strings.To_Universal_String ("The Elements owned by this element.")));

   Internal_Set_Is_Composite (Base + 85, False);
   Internal_Set_Is_Derived (Base + 85, True);
   Internal_Set_Is_Derived_Union (Base + 85, True);
   Internal_Set_Is_Leaf (Base + 85, False);
   Internal_Set_Is_Ordered (Base + 85, False);
   Internal_Set_Is_Read_Only (Base + 85, True);
   Internal_Set_Is_Unique (Base + 85, True);
   Internal_Set_Lower (Base + 85, (False, 0));
   Internal_Set_Name
    (Base + 85,
     (False, League.Strings.To_Universal_String ("owner")));
   Internal_Set_Upper (Base + 85, (False, (False, 1)));

   Internal_Set_Body
    (Base + 280,
     (False, League.Strings.To_Universal_String ("The Element that owns this element.")));

   Internal_Set_Is_Composite (Base + 53, True);
   Internal_Set_Is_Derived (Base + 53, False);
   Internal_Set_Is_Derived_Union (Base + 53, False);
   Internal_Set_Is_Leaf (Base + 53, False);
   Internal_Set_Is_Ordered (Base + 53, False);
   Internal_Set_Is_Read_Only (Base + 53, False);
   Internal_Set_Is_Unique (Base + 53, True);
   Internal_Set_Lower (Base + 53, (False, 0));
   Internal_Set_Name
    (Base + 53,
     (False, League.Strings.To_Universal_String ("ownedComment")));
   Internal_Set_Upper (Base + 53, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 281,
     (False, League.Strings.To_Universal_String ("The Comments owned by this element.")));

   Internal_Set_Is_Leaf (Base + 282, False);
   Internal_Set_Is_Ordered (Base + 282, False);
   Internal_Set_Is_Query (Base + 282, True);
   Internal_Set_Is_Unique (Base + 282, True);
   Internal_Set_Lower (Base + 282, (False, 1));
   Internal_Set_Name
    (Base + 282,
     (False, League.Strings.To_Universal_String ("allOwnedElements")));
   Internal_Set_Upper (Base + 282, (False, (False, 1)));

   Internal_Set_Body
    (Base + 283,
     (False, League.Strings.To_Universal_String ("The query allOwnedElements() gives all of the direct and indirect owned elements of an element.")));

   Internal_Set_Name
    (Base + 284,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (286, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 286, False);
   Internal_Set_Is_Unique (Base + 286, True);
   Internal_Set_Lower (Base + 286, (False, 0));
   Internal_Set_Upper (Base + 286, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 287, False);
   Internal_Set_Is_Ordered (Base + 287, False);
   Internal_Set_Is_Query (Base + 287, True);
   Internal_Set_Is_Unique (Base + 287, True);
   Internal_Set_Lower (Base + 287, (False, 1));
   Internal_Set_Name
    (Base + 287,
     (False, League.Strings.To_Universal_String ("mustBeOwned")));
   Internal_Set_Upper (Base + 287, (False, (False, 1)));

   Internal_Set_Body
    (Base + 288,
     (False, League.Strings.To_Universal_String ("The query mustBeOwned() indicates whether elements of this type must have an owner. Subclasses of Element that do not require an owner must override this operation.")));

   Internal_Set_Name
    (Base + 289,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (291, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 291, False);
   Internal_Set_Is_Unique (Base + 291, True);
   Internal_Set_Lower (Base + 291, (False, 1));
   Internal_Set_Upper (Base + 291, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 14, True);
   Internal_Set_Is_Final_Specialization (Base + 14, False);
   Internal_Set_Name
    (Base + 14,
     (False, League.Strings.To_Universal_String ("Feature")));

   Internal_Set_Body
    (Base + 292,
     (False, League.Strings.To_Universal_String ("A feature declares a behavioral or structural characteristic of instances of classifiers.")));

   Internal_Set_Is_Composite (Base + 57, False);
   Internal_Set_Is_Derived (Base + 57, True);
   Internal_Set_Is_Derived_Union (Base + 57, True);
   Internal_Set_Is_Leaf (Base + 57, False);
   Internal_Set_Is_Ordered (Base + 57, False);
   Internal_Set_Is_Read_Only (Base + 57, True);
   Internal_Set_Is_Unique (Base + 57, True);
   Internal_Set_Lower (Base + 57, (False, 0));
   Internal_Set_Name
    (Base + 57,
     (False, League.Strings.To_Universal_String ("featuringClassifier")));
   Internal_Set_Upper (Base + 57, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 293,
     (False, League.Strings.To_Universal_String ("The Classifiers that have this Feature as a feature.")));

   Internal_Set_Is_Abstract (Base + 15, True);
   Internal_Set_Is_Final_Specialization (Base + 15, False);
   Internal_Set_Name
    (Base + 15,
     (False, League.Strings.To_Universal_String ("MultiplicityElement")));

   Internal_Set_Body
    (Base + 294,
     (False, League.Strings.To_Universal_String ("A multiplicity is a definition of an inclusive interval of non-negative integers beginning with a lower bound and ending with a (possibly infinite) upper bound. A multiplicity element embeds this information to specify the allowable cardinalities for an instantiation of this element.")));

   Internal_Set_Name
    (Base + 295,
     (False, League.Strings.To_Universal_String ("upper_ge_lower")));

   Internal_Set_Body
    (Base + 296,
     (False, League.Strings.To_Universal_String ("The upper bound must be greater than or equal to the lower bound.")));


   Internal_Set_Name
    (Base + 298,
     (False, League.Strings.To_Universal_String ("lower_ge_0")));

   Internal_Set_Body
    (Base + 299,
     (False, League.Strings.To_Universal_String ("The lower bound must be a non-negative integer literal.")));


   Internal_Set_Default
    (Base + 91,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (Base + 91, False);
   Internal_Set_Is_Derived (Base + 91, False);
   Internal_Set_Is_Derived_Union (Base + 91, False);
   Internal_Set_Is_Leaf (Base + 91, False);
   Internal_Set_Is_Ordered (Base + 91, False);
   Internal_Set_Is_Read_Only (Base + 91, False);
   Internal_Set_Is_Unique (Base + 91, True);
   Internal_Set_Lower (Base + 91, (False, 1));
   Internal_Set_Name
    (Base + 91,
     (False, League.Strings.To_Universal_String ("isOrdered")));
   Internal_Set_Upper (Base + 91, (False, (False, 1)));

   Internal_Set_Body
    (Base + 301,
     (False, League.Strings.To_Universal_String ("For a multivalued multiplicity, this attribute specifies whether the values in an instantiation of this element are sequentially ordered.")));

   Internal_Set_Default
    (Base + 92,
     (False, League.Strings.To_Universal_String ("true")));
   Internal_Set_Is_Composite (Base + 92, False);
   Internal_Set_Is_Derived (Base + 92, False);
   Internal_Set_Is_Derived_Union (Base + 92, False);
   Internal_Set_Is_Leaf (Base + 92, False);
   Internal_Set_Is_Ordered (Base + 92, False);
   Internal_Set_Is_Read_Only (Base + 92, False);
   Internal_Set_Is_Unique (Base + 92, True);
   Internal_Set_Lower (Base + 92, (False, 1));
   Internal_Set_Name
    (Base + 92,
     (False, League.Strings.To_Universal_String ("isUnique")));
   Internal_Set_Upper (Base + 92, (False, (False, 1)));

   Internal_Set_Body
    (Base + 302,
     (False, League.Strings.To_Universal_String ("For a multivalued multiplicity, this attributes specifies whether the values in an instantiation of this element are unique.")));

   Internal_Set_Default
    (Base + 93,
     (False, League.Strings.To_Universal_String ("1")));
   Internal_Set_Is_Composite (Base + 93, False);
   Internal_Set_Is_Derived (Base + 93, False);
   Internal_Set_Is_Derived_Union (Base + 93, False);
   Internal_Set_Is_Leaf (Base + 93, False);
   Internal_Set_Is_Ordered (Base + 93, False);
   Internal_Set_Is_Read_Only (Base + 93, False);
   Internal_Set_Is_Unique (Base + 93, True);
   Internal_Set_Lower (Base + 93, (False, 0));
   Internal_Set_Name
    (Base + 93,
     (False, League.Strings.To_Universal_String ("lower")));
   Internal_Set_Upper (Base + 93, (False, (False, 1)));

   Internal_Set_Body
    (Base + 303,
     (False, League.Strings.To_Universal_String ("Specifies the lower bound of the multiplicity interval.")));

   Internal_Set_Default
    (Base + 94,
     (False, League.Strings.To_Universal_String ("1")));
   Internal_Set_Is_Composite (Base + 94, False);
   Internal_Set_Is_Derived (Base + 94, False);
   Internal_Set_Is_Derived_Union (Base + 94, False);
   Internal_Set_Is_Leaf (Base + 94, False);
   Internal_Set_Is_Ordered (Base + 94, False);
   Internal_Set_Is_Read_Only (Base + 94, False);
   Internal_Set_Is_Unique (Base + 94, True);
   Internal_Set_Lower (Base + 94, (False, 0));
   Internal_Set_Name
    (Base + 94,
     (False, League.Strings.To_Universal_String ("upper")));
   Internal_Set_Upper (Base + 94, (False, (False, 1)));

   Internal_Set_Body
    (Base + 304,
     (False, League.Strings.To_Universal_String ("Specifies the upper bound of the multiplicity interval.")));

   Internal_Set_Is_Leaf (Base + 305, False);
   Internal_Set_Is_Ordered (Base + 305, False);
   Internal_Set_Is_Query (Base + 305, True);
   Internal_Set_Is_Unique (Base + 305, True);
   Internal_Set_Lower (Base + 305, (False, 1));
   Internal_Set_Name
    (Base + 305,
     (False, League.Strings.To_Universal_String ("isMultivalued")));
   Internal_Set_Upper (Base + 305, (False, (False, 1)));

   Internal_Set_Body
    (Base + 306,
     (False, League.Strings.To_Universal_String ("The query isMultivalued() checks whether this multiplicity has an upper bound greater than one.")));



   Internal_Set_Name
    (Base + 309,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (311, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 311, False);
   Internal_Set_Is_Unique (Base + 311, True);
   Internal_Set_Lower (Base + 311, (False, 1));
   Internal_Set_Upper (Base + 311, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 312, False);
   Internal_Set_Is_Ordered (Base + 312, False);
   Internal_Set_Is_Query (Base + 312, True);
   Internal_Set_Is_Unique (Base + 312, True);
   Internal_Set_Lower (Base + 312, (False, 1));
   Internal_Set_Name
    (Base + 312,
     (False, League.Strings.To_Universal_String ("includesMultiplicity")));
   Internal_Set_Upper (Base + 312, (False, (False, 1)));

   Internal_Set_Body
    (Base + 313,
     (False, League.Strings.To_Universal_String ("The query includesMultiplicity() checks whether this multiplicity includes all the cardinalities allowed by the specified multiplicity.")));



   Internal_Set_Name
    (Base + 316,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (318, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 318, False);
   Internal_Set_Is_Unique (Base + 318, True);
   Internal_Set_Lower (Base + 318, (False, 1));
   Internal_Set_Upper (Base + 318, (False, (False, 1)));

   Internal_Set_Direction (319, In_Parameter);
   Internal_Set_Is_Ordered (Base + 319, False);
   Internal_Set_Is_Unique (Base + 319, True);
   Internal_Set_Lower (Base + 319, (False, 1));
   Internal_Set_Name
    (Base + 319,
     (False, League.Strings.To_Universal_String ("M")));
   Internal_Set_Upper (Base + 319, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 320, False);
   Internal_Set_Is_Ordered (Base + 320, False);
   Internal_Set_Is_Query (Base + 320, True);
   Internal_Set_Is_Unique (Base + 320, True);
   Internal_Set_Lower (Base + 320, (False, 1));
   Internal_Set_Name
    (Base + 320,
     (False, League.Strings.To_Universal_String ("includesCardinality")));
   Internal_Set_Upper (Base + 320, (False, (False, 1)));

   Internal_Set_Body
    (Base + 321,
     (False, League.Strings.To_Universal_String ("The query includesCardinality() checks whether the specified cardinality is valid for this multiplicity.")));



   Internal_Set_Name
    (Base + 324,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (326, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 326, False);
   Internal_Set_Is_Unique (Base + 326, True);
   Internal_Set_Lower (Base + 326, (False, 1));
   Internal_Set_Upper (Base + 326, (False, (False, 1)));

   Internal_Set_Direction (327, In_Parameter);
   Internal_Set_Is_Ordered (Base + 327, False);
   Internal_Set_Is_Unique (Base + 327, True);
   Internal_Set_Lower (Base + 327, (False, 1));
   Internal_Set_Name
    (Base + 327,
     (False, League.Strings.To_Universal_String ("C")));
   Internal_Set_Upper (Base + 327, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 328, False);
   Internal_Set_Is_Ordered (Base + 328, False);
   Internal_Set_Is_Query (Base + 328, True);
   Internal_Set_Is_Unique (Base + 328, True);
   Internal_Set_Lower (Base + 328, (False, 1));
   Internal_Set_Name
    (Base + 328,
     (False, League.Strings.To_Universal_String ("lowerBound")));
   Internal_Set_Upper (Base + 328, (False, (False, 1)));

   Internal_Set_Body
    (Base + 329,
     (False, League.Strings.To_Universal_String ("The query lowerBound() returns the lower bound of the multiplicity as an integer.")));

   Internal_Set_Name
    (Base + 330,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (332, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 332, False);
   Internal_Set_Is_Unique (Base + 332, True);
   Internal_Set_Lower (Base + 332, (False, 1));
   Internal_Set_Upper (Base + 332, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 333, False);
   Internal_Set_Is_Ordered (Base + 333, False);
   Internal_Set_Is_Query (Base + 333, True);
   Internal_Set_Is_Unique (Base + 333, True);
   Internal_Set_Lower (Base + 333, (False, 1));
   Internal_Set_Name
    (Base + 333,
     (False, League.Strings.To_Universal_String ("upperBound")));
   Internal_Set_Upper (Base + 333, (False, (False, 1)));

   Internal_Set_Body
    (Base + 334,
     (False, League.Strings.To_Universal_String ("The query upperBound() returns the upper bound of the multiplicity for a bounded multiplicity as an unlimited natural.")));

   Internal_Set_Name
    (Base + 335,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (337, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 337, False);
   Internal_Set_Is_Unique (Base + 337, True);
   Internal_Set_Lower (Base + 337, (False, 1));
   Internal_Set_Upper (Base + 337, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 17, True);
   Internal_Set_Is_Final_Specialization (Base + 17, False);
   Internal_Set_Name
    (Base + 17,
     (False, League.Strings.To_Universal_String ("Namespace")));

   Internal_Set_Body
    (Base + 338,
     (False, League.Strings.To_Universal_String ("A namespace is an element in a model that contains a set of named elements that can be identified by name.")));

   Internal_Set_Name
    (Base + 339,
     (False, League.Strings.To_Universal_String ("members_distinguishable")));

   Internal_Set_Body
    (Base + 340,
     (False, League.Strings.To_Universal_String ("All the members of a Namespace are distinguishable within it.")));


   Internal_Set_Is_Composite (Base + 59, False);
   Internal_Set_Is_Derived (Base + 59, True);
   Internal_Set_Is_Derived_Union (Base + 59, False);
   Internal_Set_Is_Leaf (Base + 59, False);
   Internal_Set_Is_Ordered (Base + 59, False);
   Internal_Set_Is_Read_Only (Base + 59, True);
   Internal_Set_Is_Unique (Base + 59, True);
   Internal_Set_Lower (Base + 59, (False, 0));
   Internal_Set_Name
    (Base + 59,
     (False, League.Strings.To_Universal_String ("importedMember")));
   Internal_Set_Upper (Base + 59, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 342,
     (False, League.Strings.To_Universal_String ("References the PackageableElements that are members of this Namespace as a result of either PackageImports or ElementImports.")));

   Internal_Set_Is_Composite (Base + 58, True);
   Internal_Set_Is_Derived (Base + 58, False);
   Internal_Set_Is_Derived_Union (Base + 58, False);
   Internal_Set_Is_Leaf (Base + 58, False);
   Internal_Set_Is_Ordered (Base + 58, False);
   Internal_Set_Is_Read_Only (Base + 58, False);
   Internal_Set_Is_Unique (Base + 58, True);
   Internal_Set_Lower (Base + 58, (False, 0));
   Internal_Set_Name
    (Base + 58,
     (False, League.Strings.To_Universal_String ("elementImport")));
   Internal_Set_Upper (Base + 58, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 343,
     (False, League.Strings.To_Universal_String ("References the ElementImports owned by the Namespace.")));

   Internal_Set_Is_Composite (Base + 63, True);
   Internal_Set_Is_Derived (Base + 63, False);
   Internal_Set_Is_Derived_Union (Base + 63, False);
   Internal_Set_Is_Leaf (Base + 63, False);
   Internal_Set_Is_Ordered (Base + 63, False);
   Internal_Set_Is_Read_Only (Base + 63, False);
   Internal_Set_Is_Unique (Base + 63, True);
   Internal_Set_Lower (Base + 63, (False, 0));
   Internal_Set_Name
    (Base + 63,
     (False, League.Strings.To_Universal_String ("packageImport")));
   Internal_Set_Upper (Base + 63, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 344,
     (False, League.Strings.To_Universal_String ("References the PackageImports owned by the Namespace.")));

   Internal_Set_Is_Composite (Base + 61, True);
   Internal_Set_Is_Derived (Base + 61, True);
   Internal_Set_Is_Derived_Union (Base + 61, True);
   Internal_Set_Is_Leaf (Base + 61, False);
   Internal_Set_Is_Ordered (Base + 61, False);
   Internal_Set_Is_Read_Only (Base + 61, True);
   Internal_Set_Is_Unique (Base + 61, True);
   Internal_Set_Lower (Base + 61, (False, 0));
   Internal_Set_Name
    (Base + 61,
     (False, League.Strings.To_Universal_String ("ownedMember")));
   Internal_Set_Upper (Base + 61, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 345,
     (False, League.Strings.To_Universal_String ("A collection of NamedElements owned by the Namespace.")));

   Internal_Set_Is_Composite (Base + 60, False);
   Internal_Set_Is_Derived (Base + 60, True);
   Internal_Set_Is_Derived_Union (Base + 60, True);
   Internal_Set_Is_Leaf (Base + 60, False);
   Internal_Set_Is_Ordered (Base + 60, False);
   Internal_Set_Is_Read_Only (Base + 60, True);
   Internal_Set_Is_Unique (Base + 60, True);
   Internal_Set_Lower (Base + 60, (False, 0));
   Internal_Set_Name
    (Base + 60,
     (False, League.Strings.To_Universal_String ("member")));
   Internal_Set_Upper (Base + 60, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 346,
     (False, League.Strings.To_Universal_String ("A collection of NamedElements identifiable within the Namespace, either by being owned or by being introduced by importing or inheritance.")));

   Internal_Set_Is_Composite (Base + 62, True);
   Internal_Set_Is_Derived (Base + 62, False);
   Internal_Set_Is_Derived_Union (Base + 62, False);
   Internal_Set_Is_Leaf (Base + 62, False);
   Internal_Set_Is_Ordered (Base + 62, False);
   Internal_Set_Is_Read_Only (Base + 62, False);
   Internal_Set_Is_Unique (Base + 62, True);
   Internal_Set_Lower (Base + 62, (False, 0));
   Internal_Set_Name
    (Base + 62,
     (False, League.Strings.To_Universal_String ("ownedRule")));
   Internal_Set_Upper (Base + 62, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 347, False);
   Internal_Set_Is_Ordered (Base + 347, False);
   Internal_Set_Is_Query (Base + 347, True);
   Internal_Set_Is_Unique (Base + 347, True);
   Internal_Set_Lower (Base + 347, (False, 1));
   Internal_Set_Name
    (Base + 347,
     (False, League.Strings.To_Universal_String ("importedMember")));
   Internal_Set_Upper (Base + 347, (False, (False, 1)));

   Internal_Set_Body
    (Base + 348,
     (False, League.Strings.To_Universal_String ("The importedMember property is derived from the ElementImports and the PackageImports. References the PackageableElements that are members of this Namespace as a result of either PackageImports or ElementImports.")));

   Internal_Set_Name
    (Base + 349,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (351, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 351, False);
   Internal_Set_Is_Unique (Base + 351, True);
   Internal_Set_Lower (Base + 351, (False, 0));
   Internal_Set_Upper (Base + 351, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 352, False);
   Internal_Set_Is_Ordered (Base + 352, False);
   Internal_Set_Is_Query (Base + 352, True);
   Internal_Set_Is_Unique (Base + 352, True);
   Internal_Set_Lower (Base + 352, (False, 1));
   Internal_Set_Name
    (Base + 352,
     (False, League.Strings.To_Universal_String ("getNamesOfMember")));
   Internal_Set_Upper (Base + 352, (False, (False, 1)));

   Internal_Set_Body
    (Base + 353,
     (False, League.Strings.To_Universal_String ("The query getNamesOfMember() takes importing into account. It gives back the set of names that an element would have in an importing namespace, either because it is owned, or if not owned then imported individually, or if not individually then from a package.")));

   Internal_Set_Name
    (Base + 354,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (356, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 356, False);
   Internal_Set_Is_Unique (Base + 356, True);
   Internal_Set_Lower (Base + 356, (False, 0));
   Internal_Set_Upper (Base + 356, (False, (Unlimited => True)));

   Internal_Set_Direction (357, In_Parameter);
   Internal_Set_Is_Ordered (Base + 357, False);
   Internal_Set_Is_Unique (Base + 357, True);
   Internal_Set_Lower (Base + 357, (False, 1));
   Internal_Set_Name
    (Base + 357,
     (False, League.Strings.To_Universal_String ("element")));
   Internal_Set_Upper (Base + 357, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 358, False);
   Internal_Set_Is_Ordered (Base + 358, False);
   Internal_Set_Is_Query (Base + 358, True);
   Internal_Set_Is_Unique (Base + 358, True);
   Internal_Set_Lower (Base + 358, (False, 1));
   Internal_Set_Name
    (Base + 358,
     (False, League.Strings.To_Universal_String ("importMembers")));
   Internal_Set_Upper (Base + 358, (False, (False, 1)));

   Internal_Set_Body
    (Base + 359,
     (False, League.Strings.To_Universal_String ("The query importMembers() defines which of a set of PackageableElements are actually imported into the namespace. This excludes hidden ones, i.e., those which have names that conflict with names of owned members, and also excludes elements which would have the same name when imported.")));

   Internal_Set_Name
    (Base + 360,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (362, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 362, False);
   Internal_Set_Is_Unique (Base + 362, True);
   Internal_Set_Lower (Base + 362, (False, 0));
   Internal_Set_Upper (Base + 362, (False, (Unlimited => True)));

   Internal_Set_Direction (363, In_Parameter);
   Internal_Set_Is_Ordered (Base + 363, False);
   Internal_Set_Is_Unique (Base + 363, True);
   Internal_Set_Lower (Base + 363, (False, 0));
   Internal_Set_Name
    (Base + 363,
     (False, League.Strings.To_Universal_String ("imps")));
   Internal_Set_Upper (Base + 363, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 364, False);
   Internal_Set_Is_Ordered (Base + 364, False);
   Internal_Set_Is_Query (Base + 364, True);
   Internal_Set_Is_Unique (Base + 364, True);
   Internal_Set_Lower (Base + 364, (False, 1));
   Internal_Set_Name
    (Base + 364,
     (False, League.Strings.To_Universal_String ("excludeCollisions")));
   Internal_Set_Upper (Base + 364, (False, (False, 1)));

   Internal_Set_Body
    (Base + 365,
     (False, League.Strings.To_Universal_String ("The query excludeCollisions() excludes from a set of PackageableElements any that would not be distinguishable from each other in this namespace.")));

   Internal_Set_Name
    (Base + 366,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (368, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 368, False);
   Internal_Set_Is_Unique (Base + 368, True);
   Internal_Set_Lower (Base + 368, (False, 0));
   Internal_Set_Upper (Base + 368, (False, (Unlimited => True)));

   Internal_Set_Direction (369, In_Parameter);
   Internal_Set_Is_Ordered (Base + 369, False);
   Internal_Set_Is_Unique (Base + 369, True);
   Internal_Set_Lower (Base + 369, (False, 0));
   Internal_Set_Name
    (Base + 369,
     (False, League.Strings.To_Universal_String ("imps")));
   Internal_Set_Upper (Base + 369, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 370, False);
   Internal_Set_Is_Ordered (Base + 370, False);
   Internal_Set_Is_Query (Base + 370, True);
   Internal_Set_Is_Unique (Base + 370, True);
   Internal_Set_Lower (Base + 370, (False, 1));
   Internal_Set_Name
    (Base + 370,
     (False, League.Strings.To_Universal_String ("membersAreDistinguishable")));
   Internal_Set_Upper (Base + 370, (False, (False, 1)));

   Internal_Set_Body
    (Base + 371,
     (False, League.Strings.To_Universal_String ("The Boolean query membersAreDistinguishable() determines whether all of the namespace's members are distinguishable within it.")));

   Internal_Set_Name
    (Base + 372,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (374, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 374, False);
   Internal_Set_Is_Unique (Base + 374, True);
   Internal_Set_Lower (Base + 374, (False, 1));
   Internal_Set_Upper (Base + 374, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 23, True);
   Internal_Set_Is_Final_Specialization (Base + 23, False);
   Internal_Set_Name
    (Base + 23,
     (False, League.Strings.To_Universal_String ("PackageableElement")));

   Internal_Set_Body
    (Base + 375,
     (False, League.Strings.To_Universal_String ("A packageable element indicates a named element that may be owned directly by a package.")));

   Internal_Set_Is_Abstract (Base + 27, True);
   Internal_Set_Is_Final_Specialization (Base + 27, False);
   Internal_Set_Name
    (Base + 27,
     (False, League.Strings.To_Universal_String ("RedefinableElement")));

   Internal_Set_Body
    (Base + 376,
     (False, League.Strings.To_Universal_String ("A redefinable element is an element that, when defined in the context of a classifier, can be redefined more specifically or differently in the context of another classifier that specializes (directly or indirectly) the context classifier.")));

   Internal_Set_Name
    (Base + 377,
     (False, League.Strings.To_Universal_String ("redefinition_context_valid")));

   Internal_Set_Body
    (Base + 378,
     (False, League.Strings.To_Universal_String ("At least one of the redefinition contexts of the redefining element must be a specialization of at least one of the redefinition contexts for each redefined element.")));


   Internal_Set_Name
    (Base + 380,
     (False, League.Strings.To_Universal_String ("redefinition_consistent")));

   Internal_Set_Body
    (Base + 381,
     (False, League.Strings.To_Universal_String ("A redefining element must be consistent with each redefined element.")));


   Internal_Set_Name
    (Base + 383,
     (False, League.Strings.To_Universal_String ("non_leaf_redefinition")));

   Internal_Set_Body
    (Base + 384,
     (False, League.Strings.To_Universal_String ("A redefinable element can only redefine non-leaf redefinable elements")));


   Internal_Set_Is_Composite (Base + 76, False);
   Internal_Set_Is_Derived (Base + 76, True);
   Internal_Set_Is_Derived_Union (Base + 76, True);
   Internal_Set_Is_Leaf (Base + 76, False);
   Internal_Set_Is_Ordered (Base + 76, False);
   Internal_Set_Is_Read_Only (Base + 76, True);
   Internal_Set_Is_Unique (Base + 76, True);
   Internal_Set_Lower (Base + 76, (False, 0));
   Internal_Set_Name
    (Base + 76,
     (False, League.Strings.To_Universal_String ("redefinitionContext")));
   Internal_Set_Upper (Base + 76, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 386,
     (False, League.Strings.To_Universal_String ("References the contexts that this element may be redefined from.")));

   Internal_Set_Is_Composite (Base + 75, False);
   Internal_Set_Is_Derived (Base + 75, True);
   Internal_Set_Is_Derived_Union (Base + 75, True);
   Internal_Set_Is_Leaf (Base + 75, False);
   Internal_Set_Is_Ordered (Base + 75, False);
   Internal_Set_Is_Read_Only (Base + 75, True);
   Internal_Set_Is_Unique (Base + 75, True);
   Internal_Set_Lower (Base + 75, (False, 0));
   Internal_Set_Name
    (Base + 75,
     (False, League.Strings.To_Universal_String ("redefinedElement")));
   Internal_Set_Upper (Base + 75, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 387,
     (False, League.Strings.To_Universal_String ("The redefinable element that is being redefined by this element.")));

   Internal_Set_Default
    (Base + 130,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (Base + 130, False);
   Internal_Set_Is_Derived (Base + 130, False);
   Internal_Set_Is_Derived_Union (Base + 130, False);
   Internal_Set_Is_Leaf (Base + 130, False);
   Internal_Set_Is_Ordered (Base + 130, False);
   Internal_Set_Is_Read_Only (Base + 130, False);
   Internal_Set_Is_Unique (Base + 130, True);
   Internal_Set_Lower (Base + 130, (False, 1));
   Internal_Set_Name
    (Base + 130,
     (False, League.Strings.To_Universal_String ("isLeaf")));
   Internal_Set_Upper (Base + 130, (False, (False, 1)));

   Internal_Set_Body
    (Base + 388,
     (False, League.Strings.To_Universal_String ("Indicates whether it is possible to further redefine a RedefinableElement. If the value is true, then it is not possible to further redefine the RedefinableElement. Note that this property is preserved through package merge operations; that is, the capability to redefine a RedefinableElement (i.e., isLeaf=false) must be preserved in the resulting RedefinableElement of a package merge operation where a RedefinableElement with isLeaf=false is merged with a matching RedefinableElement with isLeaf=true: the resulting RedefinableElement will have isLeaf=false. Default value is false.")));

   Internal_Set_Is_Leaf (Base + 389, False);
   Internal_Set_Is_Ordered (Base + 389, False);
   Internal_Set_Is_Query (Base + 389, True);
   Internal_Set_Is_Unique (Base + 389, True);
   Internal_Set_Lower (Base + 389, (False, 1));
   Internal_Set_Name
    (Base + 389,
     (False, League.Strings.To_Universal_String ("isConsistentWith")));
   Internal_Set_Upper (Base + 389, (False, (False, 1)));

   Internal_Set_Body
    (Base + 390,
     (False, League.Strings.To_Universal_String ("The query isConsistentWith() specifies, for any two RedefinableElements in a context in which redefinition is possible, whether redefinition would be logically consistent. By default, this is false; this operation must be overridden for subclasses of RedefinableElement to define the consistency conditions.")));

   Internal_Set_Name
    (Base + 391,
     (False, League.Strings.To_Universal_String ("spec")));




   Internal_Set_Direction (395, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 395, False);
   Internal_Set_Is_Unique (Base + 395, True);
   Internal_Set_Lower (Base + 395, (False, 1));
   Internal_Set_Upper (Base + 395, (False, (False, 1)));

   Internal_Set_Direction (396, In_Parameter);
   Internal_Set_Is_Ordered (Base + 396, False);
   Internal_Set_Is_Unique (Base + 396, True);
   Internal_Set_Lower (Base + 396, (False, 1));
   Internal_Set_Name
    (Base + 396,
     (False, League.Strings.To_Universal_String ("redefinee")));
   Internal_Set_Upper (Base + 396, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 397, False);
   Internal_Set_Is_Ordered (Base + 397, False);
   Internal_Set_Is_Query (Base + 397, True);
   Internal_Set_Is_Unique (Base + 397, True);
   Internal_Set_Lower (Base + 397, (False, 1));
   Internal_Set_Name
    (Base + 397,
     (False, League.Strings.To_Universal_String ("isRedefinitionContextValid")));
   Internal_Set_Upper (Base + 397, (False, (False, 1)));

   Internal_Set_Body
    (Base + 398,
     (False, League.Strings.To_Universal_String ("The query isRedefinitionContextValid() specifies whether the redefinition contexts of this RedefinableElement are properly related to the redefinition contexts of the specified RedefinableElement to allow this element to redefine the other. By default at least one of the redefinition contexts of this element must be a specialization of at least one of the redefinition contexts of the specified element.")));

   Internal_Set_Name
    (Base + 399,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (401, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 401, False);
   Internal_Set_Is_Unique (Base + 401, True);
   Internal_Set_Lower (Base + 401, (False, 1));
   Internal_Set_Upper (Base + 401, (False, (False, 1)));

   Internal_Set_Direction (402, In_Parameter);
   Internal_Set_Is_Ordered (Base + 402, False);
   Internal_Set_Is_Unique (Base + 402, True);
   Internal_Set_Lower (Base + 402, (False, 1));
   Internal_Set_Name
    (Base + 402,
     (False, League.Strings.To_Universal_String ("redefined")));
   Internal_Set_Upper (Base + 402, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 28, True);
   Internal_Set_Is_Final_Specialization (Base + 28, False);
   Internal_Set_Name
    (Base + 28,
     (False, League.Strings.To_Universal_String ("Relationship")));

   Internal_Set_Body
    (Base + 403,
     (False, League.Strings.To_Universal_String ("Relationship is an abstract concept that specifies some kind of relationship between elements.")));

   Internal_Set_Is_Composite (Base + 77, False);
   Internal_Set_Is_Derived (Base + 77, True);
   Internal_Set_Is_Derived_Union (Base + 77, True);
   Internal_Set_Is_Leaf (Base + 77, False);
   Internal_Set_Is_Ordered (Base + 77, False);
   Internal_Set_Is_Read_Only (Base + 77, True);
   Internal_Set_Is_Unique (Base + 77, True);
   Internal_Set_Lower (Base + 77, (False, 1));
   Internal_Set_Name
    (Base + 77,
     (False, League.Strings.To_Universal_String ("relatedElement")));
   Internal_Set_Upper (Base + 77, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 404,
     (False, League.Strings.To_Universal_String ("Specifies the elements related by the Relationship.")));

   Internal_Set_Is_Abstract (Base + 29, True);
   Internal_Set_Is_Final_Specialization (Base + 29, False);
   Internal_Set_Name
    (Base + 29,
     (False, League.Strings.To_Universal_String ("StructuralFeature")));

   Internal_Set_Body
    (Base + 405,
     (False, League.Strings.To_Universal_String ("A structural feature is a typed feature of a classifier that specifies the structure of instances of the classifier.")));

   Internal_Set_Is_Abstract (Base + 32, True);
   Internal_Set_Is_Final_Specialization (Base + 32, False);
   Internal_Set_Name
    (Base + 32,
     (False, League.Strings.To_Universal_String ("TypedElement")));

   Internal_Set_Body
    (Base + 406,
     (False, League.Strings.To_Universal_String ("A typed element is a kind of named element that represents an element with a type.")));

   Internal_Set_Is_Composite (Base + 135, False);
   Internal_Set_Is_Derived (Base + 135, False);
   Internal_Set_Is_Derived_Union (Base + 135, False);
   Internal_Set_Is_Leaf (Base + 135, False);
   Internal_Set_Is_Ordered (Base + 135, False);
   Internal_Set_Is_Read_Only (Base + 135, False);
   Internal_Set_Is_Unique (Base + 135, True);
   Internal_Set_Lower (Base + 135, (False, 0));
   Internal_Set_Name
    (Base + 135,
     (False, League.Strings.To_Universal_String ("type")));
   Internal_Set_Upper (Base + 135, (False, (False, 1)));

   Internal_Set_Body
    (Base + 407,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Is_Abstract (Base + 33, True);
   Internal_Set_Is_Final_Specialization (Base + 33, False);
   Internal_Set_Name
    (Base + 33,
     (False, League.Strings.To_Universal_String ("ValueSpecification")));

   Internal_Set_Body
    (Base + 408,
     (False, League.Strings.To_Universal_String ("A value specification is the specification of a (possibly empty) set of instances, including both objects and data values.")));

   Internal_Set_Is_Leaf (Base + 409, False);
   Internal_Set_Is_Ordered (Base + 409, False);
   Internal_Set_Is_Query (Base + 409, True);
   Internal_Set_Is_Unique (Base + 409, True);
   Internal_Set_Lower (Base + 409, (False, 1));
   Internal_Set_Name
    (Base + 409,
     (False, League.Strings.To_Universal_String ("isComputable")));
   Internal_Set_Upper (Base + 409, (False, (False, 1)));

   Internal_Set_Body
    (Base + 410,
     (False, League.Strings.To_Universal_String ("The query isComputable() determines whether a value specification can be computed in a model. This operation cannot be fully defined in OCL. A conforming implementation is expected to deliver true for this operation for all value specifications that it can compute, and to compute all of those for which the operation is true. A conforming implementation is expected to be able to compute the value of all literals.")));

   Internal_Set_Name
    (Base + 411,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (413, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 413, False);
   Internal_Set_Is_Unique (Base + 413, True);
   Internal_Set_Lower (Base + 413, (False, 1));
   Internal_Set_Upper (Base + 413, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 414, False);
   Internal_Set_Is_Ordered (Base + 414, False);
   Internal_Set_Is_Query (Base + 414, True);
   Internal_Set_Is_Unique (Base + 414, True);
   Internal_Set_Lower (Base + 414, (False, 1));
   Internal_Set_Name
    (Base + 414,
     (False, League.Strings.To_Universal_String ("integerValue")));
   Internal_Set_Upper (Base + 414, (False, (False, 1)));

   Internal_Set_Body
    (Base + 415,
     (False, League.Strings.To_Universal_String ("The query integerValue() gives a single Integer value when one can be computed.")));

   Internal_Set_Name
    (Base + 416,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (418, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 418, False);
   Internal_Set_Is_Unique (Base + 418, True);
   Internal_Set_Lower (Base + 418, (False, 1));
   Internal_Set_Upper (Base + 418, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 419, False);
   Internal_Set_Is_Ordered (Base + 419, False);
   Internal_Set_Is_Query (Base + 419, True);
   Internal_Set_Is_Unique (Base + 419, True);
   Internal_Set_Lower (Base + 419, (False, 1));
   Internal_Set_Name
    (Base + 419,
     (False, League.Strings.To_Universal_String ("booleanValue")));
   Internal_Set_Upper (Base + 419, (False, (False, 1)));

   Internal_Set_Body
    (Base + 420,
     (False, League.Strings.To_Universal_String ("The query booleanValue() gives a single Boolean value when one can be computed.")));

   Internal_Set_Name
    (Base + 421,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (423, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 423, False);
   Internal_Set_Is_Unique (Base + 423, True);
   Internal_Set_Lower (Base + 423, (False, 1));
   Internal_Set_Upper (Base + 423, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 424, False);
   Internal_Set_Is_Ordered (Base + 424, False);
   Internal_Set_Is_Query (Base + 424, True);
   Internal_Set_Is_Unique (Base + 424, True);
   Internal_Set_Lower (Base + 424, (False, 1));
   Internal_Set_Name
    (Base + 424,
     (False, League.Strings.To_Universal_String ("stringValue")));
   Internal_Set_Upper (Base + 424, (False, (False, 1)));

   Internal_Set_Body
    (Base + 425,
     (False, League.Strings.To_Universal_String ("The query stringValue() gives a single String value when one can be computed.")));

   Internal_Set_Name
    (Base + 426,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (428, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 428, False);
   Internal_Set_Is_Unique (Base + 428, True);
   Internal_Set_Lower (Base + 428, (False, 1));
   Internal_Set_Upper (Base + 428, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 429, False);
   Internal_Set_Is_Ordered (Base + 429, False);
   Internal_Set_Is_Query (Base + 429, True);
   Internal_Set_Is_Unique (Base + 429, True);
   Internal_Set_Lower (Base + 429, (False, 1));
   Internal_Set_Name
    (Base + 429,
     (False, League.Strings.To_Universal_String ("unlimitedValue")));
   Internal_Set_Upper (Base + 429, (False, (False, 1)));

   Internal_Set_Body
    (Base + 430,
     (False, League.Strings.To_Universal_String ("The query unlimitedValue() gives a single UnlimitedNatural value when one can be computed.")));

   Internal_Set_Name
    (Base + 431,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (433, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 433, False);
   Internal_Set_Is_Unique (Base + 433, True);
   Internal_Set_Lower (Base + 433, (False, 1));
   Internal_Set_Upper (Base + 433, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 434, False);
   Internal_Set_Is_Ordered (Base + 434, False);
   Internal_Set_Is_Query (Base + 434, True);
   Internal_Set_Is_Unique (Base + 434, True);
   Internal_Set_Lower (Base + 434, (False, 1));
   Internal_Set_Name
    (Base + 434,
     (False, League.Strings.To_Universal_String ("isNull")));
   Internal_Set_Upper (Base + 434, (False, (False, 1)));

   Internal_Set_Body
    (Base + 435,
     (False, League.Strings.To_Universal_String ("The query isNull() returns true when it can be computed that the value is null.")));

   Internal_Set_Name
    (Base + 436,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (438, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 438, False);
   Internal_Set_Is_Unique (Base + 438, True);
   Internal_Set_Lower (Base + 438, (False, 1));
   Internal_Set_Upper (Base + 438, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 1, False);
   Internal_Set_Is_Final_Specialization (Base + 1, False);
   Internal_Set_Name
    (Base + 1,
     (False, League.Strings.To_Universal_String ("Association")));

   Internal_Set_Body
    (Base + 439,
     (False, League.Strings.To_Universal_String ("An association describes a set of tuples whose values refer to typed instances. An instance of an association is called a link.A link is a tuple with one value for each end of the association, where each value is an instance of the type of the end.")));

   Internal_Set_Name
    (Base + 440,
     (False, League.Strings.To_Universal_String ("association_ends")));

   Internal_Set_Body
    (Base + 441,
     (False, League.Strings.To_Universal_String ("Association ends of associations with more than two ends must be owned by the association.")));


   Internal_Set_Name
    (Base + 443,
     (False, League.Strings.To_Universal_String ("binary_associations")));

   Internal_Set_Body
    (Base + 444,
     (False, League.Strings.To_Universal_String ("Only binary associations can be aggregations.")));


   Internal_Set_Name
    (Base + 446,
     (False, League.Strings.To_Universal_String ("specialized_end_number")));

   Internal_Set_Body
    (Base + 447,
     (False, League.Strings.To_Universal_String ("An association specializing another association has the same number of ends as the other association.")));


   Internal_Set_Name
    (Base + 449,
     (False, League.Strings.To_Universal_String ("specialized_end_types")));

   Internal_Set_Body
    (Base + 450,
     (False, League.Strings.To_Universal_String ("When an association specializes another association, every end of the specific association corresponds to an end of the general association, and the specific end reaches the same type or a subtype of the more general end.")));


   Internal_Set_Default
    (Base + 79,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (Base + 79, False);
   Internal_Set_Is_Derived (Base + 79, False);
   Internal_Set_Is_Derived_Union (Base + 79, False);
   Internal_Set_Is_Leaf (Base + 79, False);
   Internal_Set_Is_Ordered (Base + 79, False);
   Internal_Set_Is_Read_Only (Base + 79, False);
   Internal_Set_Is_Unique (Base + 79, True);
   Internal_Set_Lower (Base + 79, (False, 1));
   Internal_Set_Name
    (Base + 79,
     (False, League.Strings.To_Universal_String ("isDerived")));
   Internal_Set_Upper (Base + 79, (False, (False, 1)));

   Internal_Set_Body
    (Base + 452,
     (False, League.Strings.To_Universal_String ("Specifies whether the association is derived from other model elements such as other associations or constraints.")));

   Internal_Set_Is_Composite (Base + 37, True);
   Internal_Set_Is_Derived (Base + 37, False);
   Internal_Set_Is_Derived_Union (Base + 37, False);
   Internal_Set_Is_Leaf (Base + 37, False);
   Internal_Set_Is_Ordered (Base + 37, True);
   Internal_Set_Is_Read_Only (Base + 37, False);
   Internal_Set_Is_Unique (Base + 37, True);
   Internal_Set_Lower (Base + 37, (False, 0));
   Internal_Set_Name
    (Base + 37,
     (False, League.Strings.To_Universal_String ("ownedEnd")));
   Internal_Set_Upper (Base + 37, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 453,
     (False, League.Strings.To_Universal_String ("The ends that are owned by the association itself.")));

   Internal_Set_Is_Composite (Base + 34, False);
   Internal_Set_Is_Derived (Base + 34, True);
   Internal_Set_Is_Derived_Union (Base + 34, False);
   Internal_Set_Is_Leaf (Base + 34, False);
   Internal_Set_Is_Ordered (Base + 34, False);
   Internal_Set_Is_Read_Only (Base + 34, True);
   Internal_Set_Is_Unique (Base + 34, True);
   Internal_Set_Lower (Base + 34, (False, 1));
   Internal_Set_Name
    (Base + 34,
     (False, League.Strings.To_Universal_String ("endType")));
   Internal_Set_Upper (Base + 34, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 454,
     (False, League.Strings.To_Universal_String ("References the classifiers that are used as types of the ends of the association.")));

   Internal_Set_Is_Composite (Base + 35, False);
   Internal_Set_Is_Derived (Base + 35, False);
   Internal_Set_Is_Derived_Union (Base + 35, False);
   Internal_Set_Is_Leaf (Base + 35, False);
   Internal_Set_Is_Ordered (Base + 35, True);
   Internal_Set_Is_Read_Only (Base + 35, False);
   Internal_Set_Is_Unique (Base + 35, True);
   Internal_Set_Lower (Base + 35, (False, 2));
   Internal_Set_Name
    (Base + 35,
     (False, League.Strings.To_Universal_String ("memberEnd")));
   Internal_Set_Upper (Base + 35, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 455,
     (False, League.Strings.To_Universal_String ("Each end represents participation of instances of the classifier connected to the end in links of the association.")));

   Internal_Set_Is_Composite (Base + 36, False);
   Internal_Set_Is_Derived (Base + 36, False);
   Internal_Set_Is_Derived_Union (Base + 36, False);
   Internal_Set_Is_Leaf (Base + 36, False);
   Internal_Set_Is_Ordered (Base + 36, False);
   Internal_Set_Is_Read_Only (Base + 36, False);
   Internal_Set_Is_Unique (Base + 36, True);
   Internal_Set_Lower (Base + 36, (False, 0));
   Internal_Set_Name
    (Base + 36,
     (False, League.Strings.To_Universal_String ("navigableOwnedEnd")));
   Internal_Set_Upper (Base + 36, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 456,
     (False, League.Strings.To_Universal_String ("The navigable ends that are owned by the association itself.")));

   Internal_Set_Is_Leaf (Base + 457, False);
   Internal_Set_Is_Ordered (Base + 457, False);
   Internal_Set_Is_Query (Base + 457, True);
   Internal_Set_Is_Unique (Base + 457, True);
   Internal_Set_Lower (Base + 457, (False, 1));
   Internal_Set_Name
    (Base + 457,
     (False, League.Strings.To_Universal_String ("endType")));
   Internal_Set_Upper (Base + 457, (False, (False, 1)));

   Internal_Set_Body
    (Base + 458,
     (False, League.Strings.To_Universal_String ("endType is derived from the types of the member ends.")));

   Internal_Set_Name
    (Base + 459,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (461, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 461, True);
   Internal_Set_Is_Unique (Base + 461, True);
   Internal_Set_Lower (Base + 461, (False, 0));
   Internal_Set_Upper (Base + 461, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (Base + 3, False);
   Internal_Set_Is_Final_Specialization (Base + 3, False);
   Internal_Set_Name
    (Base + 3,
     (False, League.Strings.To_Universal_String ("Class")));

   Internal_Set_Body
    (Base + 462,
     (False, League.Strings.To_Universal_String ("A class describes a set of objects that share the same specifications of features, constraints, and semantics.")));

   Internal_Set_Default
    (Base + 80,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (Base + 80, False);
   Internal_Set_Is_Derived (Base + 80, False);
   Internal_Set_Is_Derived_Union (Base + 80, False);
   Internal_Set_Is_Leaf (Base + 80, False);
   Internal_Set_Is_Ordered (Base + 80, False);
   Internal_Set_Is_Read_Only (Base + 80, False);
   Internal_Set_Is_Unique (Base + 80, True);
   Internal_Set_Lower (Base + 80, (False, 1));
   Internal_Set_Name
    (Base + 80,
     (False, League.Strings.To_Universal_String ("isAbstract")));
   Internal_Set_Upper (Base + 80, (False, (False, 1)));

   Internal_Set_Body
    (Base + 463,
     (False, League.Strings.To_Universal_String ("True when a class is abstract.")));

   Internal_Set_Is_Composite (Base + 40, True);
   Internal_Set_Is_Derived (Base + 40, False);
   Internal_Set_Is_Derived_Union (Base + 40, False);
   Internal_Set_Is_Leaf (Base + 40, False);
   Internal_Set_Is_Ordered (Base + 40, True);
   Internal_Set_Is_Read_Only (Base + 40, False);
   Internal_Set_Is_Unique (Base + 40, True);
   Internal_Set_Lower (Base + 40, (False, 0));
   Internal_Set_Name
    (Base + 40,
     (False, League.Strings.To_Universal_String ("ownedAttribute")));
   Internal_Set_Upper (Base + 40, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 464,
     (False, League.Strings.To_Universal_String ("The attributes (i.e. the properties) owned by the class.")));

   Internal_Set_Is_Composite (Base + 41, True);
   Internal_Set_Is_Derived (Base + 41, False);
   Internal_Set_Is_Derived_Union (Base + 41, False);
   Internal_Set_Is_Leaf (Base + 41, False);
   Internal_Set_Is_Ordered (Base + 41, True);
   Internal_Set_Is_Read_Only (Base + 41, False);
   Internal_Set_Is_Unique (Base + 41, True);
   Internal_Set_Lower (Base + 41, (False, 0));
   Internal_Set_Name
    (Base + 41,
     (False, League.Strings.To_Universal_String ("ownedOperation")));
   Internal_Set_Upper (Base + 41, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 465,
     (False, League.Strings.To_Universal_String ("The operations owned by the class.")));

   Internal_Set_Is_Composite (Base + 42, False);
   Internal_Set_Is_Derived (Base + 42, False);
   Internal_Set_Is_Derived_Union (Base + 42, False);
   Internal_Set_Is_Leaf (Base + 42, False);
   Internal_Set_Is_Ordered (Base + 42, False);
   Internal_Set_Is_Read_Only (Base + 42, False);
   Internal_Set_Is_Unique (Base + 42, True);
   Internal_Set_Lower (Base + 42, (False, 0));
   Internal_Set_Name
    (Base + 42,
     (False, League.Strings.To_Universal_String ("superClass")));
   Internal_Set_Upper (Base + 42, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 466,
     (False, League.Strings.To_Universal_String ("This gives the superclasses of a class.")));

   Internal_Set_Is_Leaf (Base + 467, False);
   Internal_Set_Is_Ordered (Base + 467, False);
   Internal_Set_Is_Query (Base + 467, True);
   Internal_Set_Is_Unique (Base + 467, True);
   Internal_Set_Lower (Base + 467, (False, 1));
   Internal_Set_Name
    (Base + 467,
     (False, League.Strings.To_Universal_String ("inherit")));
   Internal_Set_Upper (Base + 467, (False, (False, 1)));

   Internal_Set_Body
    (Base + 468,
     (False, League.Strings.To_Universal_String ("The inherit operation is overridden to exclude redefined properties.")));

   Internal_Set_Name
    (Base + 469,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (471, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 471, False);
   Internal_Set_Is_Unique (Base + 471, True);
   Internal_Set_Lower (Base + 471, (False, 0));
   Internal_Set_Upper (Base + 471, (False, (Unlimited => True)));

   Internal_Set_Direction (472, In_Parameter);
   Internal_Set_Is_Ordered (Base + 472, False);
   Internal_Set_Is_Unique (Base + 472, True);
   Internal_Set_Lower (Base + 472, (False, 0));
   Internal_Set_Name
    (Base + 472,
     (False, League.Strings.To_Universal_String ("inhs")));
   Internal_Set_Upper (Base + 472, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (Base + 26, False);
   Internal_Set_Is_Final_Specialization (Base + 26, False);
   Internal_Set_Name
    (Base + 26,
     (False, League.Strings.To_Universal_String ("Property")));

   Internal_Set_Body
    (Base + 473,
     (False, League.Strings.To_Universal_String ("A property is a structural feature of a classifier that characterizes instances of the classifier. A property related by ownedAttribute to a classifier (other than an association) represents an attribute and might also represent an association end. It relates an instance of the class to a value or set of values of the type of the attribute. A property related by memberEnd or its specializations to an association represents an end of the association. The type of the property is the type of the end of the association.")));

   Internal_Set_Name
    (Base + 474,
     (False, League.Strings.To_Universal_String ("multiplicity_of_composite")));

   Internal_Set_Body
    (Base + 475,
     (False, League.Strings.To_Universal_String ("A multiplicity of a composite aggregation must not have an upper bound greater than 1.")));


   Internal_Set_Name
    (Base + 477,
     (False, League.Strings.To_Universal_String ("subsetting_context_conforms")));

   Internal_Set_Body
    (Base + 478,
     (False, League.Strings.To_Universal_String ("Subsetting may only occur when the context of the subsetting property conforms to the context of the subsetted property.")));


   Internal_Set_Name
    (Base + 480,
     (False, League.Strings.To_Universal_String ("redefined_property_inherited")));

   Internal_Set_Body
    (Base + 481,
     (False, League.Strings.To_Universal_String ("A redefined property must be inherited from a more general classifier containing the redefining property.")));


   Internal_Set_Name
    (Base + 483,
     (False, League.Strings.To_Universal_String ("subsetting_rules")));

   Internal_Set_Body
    (Base + 484,
     (False, League.Strings.To_Universal_String ("A subsetting property may strengthen the type of the subsetted property, and its upper bound may be less.")));


   Internal_Set_Name
    (Base + 486,
     (False, League.Strings.To_Universal_String ("navigable_readonly")));

   Internal_Set_Body
    (Base + 487,
     (False, League.Strings.To_Universal_String ("Only a navigable property can be marked as readOnly.")));


   Internal_Set_Name
    (Base + 489,
     (False, League.Strings.To_Universal_String ("derived_union_is_derived")));

   Internal_Set_Body
    (Base + 490,
     (False, League.Strings.To_Universal_String ("A derived union is derived.")));


   Internal_Set_Name
    (Base + 492,
     (False, League.Strings.To_Universal_String ("subsetted_property_names")));

   Internal_Set_Body
    (Base + 493,
     (False, League.Strings.To_Universal_String ("A property may not subset a property with the same name.")));


   Internal_Set_Default
    (Base + 127,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (Base + 127, False);
   Internal_Set_Is_Derived (Base + 127, False);
   Internal_Set_Is_Derived_Union (Base + 127, False);
   Internal_Set_Is_Leaf (Base + 127, False);
   Internal_Set_Is_Ordered (Base + 127, False);
   Internal_Set_Is_Read_Only (Base + 127, False);
   Internal_Set_Is_Unique (Base + 127, True);
   Internal_Set_Lower (Base + 127, (False, 1));
   Internal_Set_Name
    (Base + 127,
     (False, League.Strings.To_Universal_String ("isReadOnly")));
   Internal_Set_Upper (Base + 127, (False, (False, 1)));

   Internal_Set_Body
    (Base + 495,
     (False, League.Strings.To_Universal_String ("If isReadOnly is true, the attribute may not be written to after initialization.")));

   Internal_Set_Is_Composite (Base + 123, False);
   Internal_Set_Is_Derived (Base + 123, False);
   Internal_Set_Is_Derived_Union (Base + 123, False);
   Internal_Set_Is_Leaf (Base + 123, False);
   Internal_Set_Is_Ordered (Base + 123, False);
   Internal_Set_Is_Read_Only (Base + 123, False);
   Internal_Set_Is_Unique (Base + 123, True);
   Internal_Set_Lower (Base + 123, (False, 0));
   Internal_Set_Name
    (Base + 123,
     (False, League.Strings.To_Universal_String ("default")));
   Internal_Set_Upper (Base + 123, (False, (False, 1)));

   Internal_Set_Body
    (Base + 496,
     (False, League.Strings.To_Universal_String ("Specifies a String that represents a value to be used when no argument is supplied for the Property.")));

   Internal_Set_Default
    (Base + 124,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (Base + 124, False);
   Internal_Set_Is_Derived (Base + 124, False);
   Internal_Set_Is_Derived_Union (Base + 124, False);
   Internal_Set_Is_Leaf (Base + 124, False);
   Internal_Set_Is_Ordered (Base + 124, False);
   Internal_Set_Is_Read_Only (Base + 124, False);
   Internal_Set_Is_Unique (Base + 124, True);
   Internal_Set_Lower (Base + 124, (False, 1));
   Internal_Set_Name
    (Base + 124,
     (False, League.Strings.To_Universal_String ("isComposite")));
   Internal_Set_Upper (Base + 124, (False, (False, 1)));

   Internal_Set_Body
    (Base + 497,
     (False, League.Strings.To_Universal_String ("If isComposite is true, the object containing the attribute is a container for the object or value contained in the attribute.")));

   Internal_Set_Default
    (Base + 125,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (Base + 125, False);
   Internal_Set_Is_Derived (Base + 125, False);
   Internal_Set_Is_Derived_Union (Base + 125, False);
   Internal_Set_Is_Leaf (Base + 125, False);
   Internal_Set_Is_Ordered (Base + 125, False);
   Internal_Set_Is_Read_Only (Base + 125, False);
   Internal_Set_Is_Unique (Base + 125, True);
   Internal_Set_Lower (Base + 125, (False, 1));
   Internal_Set_Name
    (Base + 125,
     (False, League.Strings.To_Universal_String ("isDerived")));
   Internal_Set_Upper (Base + 125, (False, (False, 1)));

   Internal_Set_Body
    (Base + 498,
     (False, League.Strings.To_Universal_String ("If isDerived is true, the value of the attribute is derived from information elsewhere.")));

   Internal_Set_Default
    (Base + 126,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (Base + 126, False);
   Internal_Set_Is_Derived (Base + 126, False);
   Internal_Set_Is_Derived_Union (Base + 126, False);
   Internal_Set_Is_Leaf (Base + 126, False);
   Internal_Set_Is_Ordered (Base + 126, False);
   Internal_Set_Is_Read_Only (Base + 126, False);
   Internal_Set_Is_Unique (Base + 126, True);
   Internal_Set_Lower (Base + 126, (False, 1));
   Internal_Set_Name
    (Base + 126,
     (False, League.Strings.To_Universal_String ("isDerivedUnion")));
   Internal_Set_Upper (Base + 126, (False, (False, 1)));

   Internal_Set_Body
    (Base + 499,
     (False, League.Strings.To_Universal_String ("Specifies whether the property is derived as the union of all of the properties that are constrained to subset it.")));

   Internal_Set_Is_Composite (Base + 121, False);
   Internal_Set_Is_Derived (Base + 121, False);
   Internal_Set_Is_Derived_Union (Base + 121, False);
   Internal_Set_Is_Leaf (Base + 121, False);
   Internal_Set_Is_Ordered (Base + 121, False);
   Internal_Set_Is_Read_Only (Base + 121, False);
   Internal_Set_Is_Unique (Base + 121, True);
   Internal_Set_Lower (Base + 121, (False, 0));
   Internal_Set_Name
    (Base + 121,
     (False, League.Strings.To_Universal_String ("class")));
   Internal_Set_Upper (Base + 121, (False, (False, 1)));

   Internal_Set_Body
    (Base + 500,
     (False, League.Strings.To_Universal_String ("References the Class that owns the Property.")));

   Internal_Set_Is_Composite (Base + 129, False);
   Internal_Set_Is_Derived (Base + 129, False);
   Internal_Set_Is_Derived_Union (Base + 129, False);
   Internal_Set_Is_Leaf (Base + 129, False);
   Internal_Set_Is_Ordered (Base + 129, False);
   Internal_Set_Is_Read_Only (Base + 129, False);
   Internal_Set_Is_Unique (Base + 129, True);
   Internal_Set_Lower (Base + 129, (False, 0));
   Internal_Set_Name
    (Base + 129,
     (False, League.Strings.To_Universal_String ("owningAssociation")));
   Internal_Set_Upper (Base + 129, (False, (False, 1)));

   Internal_Set_Body
    (Base + 501,
     (False, League.Strings.To_Universal_String ("References the owning association of this property, if any.")));

   Internal_Set_Is_Composite (Base + 73, False);
   Internal_Set_Is_Derived (Base + 73, False);
   Internal_Set_Is_Derived_Union (Base + 73, False);
   Internal_Set_Is_Leaf (Base + 73, False);
   Internal_Set_Is_Ordered (Base + 73, False);
   Internal_Set_Is_Read_Only (Base + 73, False);
   Internal_Set_Is_Unique (Base + 73, True);
   Internal_Set_Lower (Base + 73, (False, 0));
   Internal_Set_Name
    (Base + 73,
     (False, League.Strings.To_Universal_String ("redefinedProperty")));
   Internal_Set_Upper (Base + 73, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 502,
     (False, League.Strings.To_Universal_String ("References the properties that are redefined by this property.")));

   Internal_Set_Is_Composite (Base + 74, False);
   Internal_Set_Is_Derived (Base + 74, False);
   Internal_Set_Is_Derived_Union (Base + 74, False);
   Internal_Set_Is_Leaf (Base + 74, False);
   Internal_Set_Is_Ordered (Base + 74, False);
   Internal_Set_Is_Read_Only (Base + 74, False);
   Internal_Set_Is_Unique (Base + 74, True);
   Internal_Set_Lower (Base + 74, (False, 0));
   Internal_Set_Name
    (Base + 74,
     (False, League.Strings.To_Universal_String ("subsettedProperty")));
   Internal_Set_Upper (Base + 74, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 503,
     (False, League.Strings.To_Universal_String ("References the properties of which this property is constrained to be a subset.")));

   Internal_Set_Is_Composite (Base + 128, False);
   Internal_Set_Is_Derived (Base + 128, True);
   Internal_Set_Is_Derived_Union (Base + 128, False);
   Internal_Set_Is_Leaf (Base + 128, False);
   Internal_Set_Is_Ordered (Base + 128, False);
   Internal_Set_Is_Read_Only (Base + 128, False);
   Internal_Set_Is_Unique (Base + 128, True);
   Internal_Set_Lower (Base + 128, (False, 0));
   Internal_Set_Name
    (Base + 128,
     (False, League.Strings.To_Universal_String ("opposite")));
   Internal_Set_Upper (Base + 128, (False, (False, 1)));

   Internal_Set_Body
    (Base + 504,
     (False, League.Strings.To_Universal_String ("In the case where the property is one navigable end of a binary association with both ends navigable, this gives the other end.")));

   Internal_Set_Is_Composite (Base + 122, False);
   Internal_Set_Is_Derived (Base + 122, False);
   Internal_Set_Is_Derived_Union (Base + 122, False);
   Internal_Set_Is_Leaf (Base + 122, False);
   Internal_Set_Is_Ordered (Base + 122, False);
   Internal_Set_Is_Read_Only (Base + 122, False);
   Internal_Set_Is_Unique (Base + 122, True);
   Internal_Set_Lower (Base + 122, (False, 0));
   Internal_Set_Name
    (Base + 122,
     (False, League.Strings.To_Universal_String ("datatype")));
   Internal_Set_Upper (Base + 122, (False, (False, 1)));

   Internal_Set_Body
    (Base + 505,
     (False, League.Strings.To_Universal_String ("The DataType that owns this Property.")));

   Internal_Set_Is_Composite (Base + 120, False);
   Internal_Set_Is_Derived (Base + 120, False);
   Internal_Set_Is_Derived_Union (Base + 120, False);
   Internal_Set_Is_Leaf (Base + 120, False);
   Internal_Set_Is_Ordered (Base + 120, False);
   Internal_Set_Is_Read_Only (Base + 120, False);
   Internal_Set_Is_Unique (Base + 120, True);
   Internal_Set_Lower (Base + 120, (False, 0));
   Internal_Set_Name
    (Base + 120,
     (False, League.Strings.To_Universal_String ("association")));
   Internal_Set_Upper (Base + 120, (False, (False, 1)));

   Internal_Set_Body
    (Base + 506,
     (False, League.Strings.To_Universal_String ("References the association of which this property is a member, if any.")));

   Internal_Set_Is_Leaf (Base + 507, False);
   Internal_Set_Is_Ordered (Base + 507, False);
   Internal_Set_Is_Query (Base + 507, True);
   Internal_Set_Is_Unique (Base + 507, True);
   Internal_Set_Lower (Base + 507, (False, 1));
   Internal_Set_Name
    (Base + 507,
     (False, League.Strings.To_Universal_String ("opposite")));
   Internal_Set_Upper (Base + 507, (False, (False, 1)));

   Internal_Set_Body
    (Base + 508,
     (False, League.Strings.To_Universal_String ("If this property is owned by a class, associated with a binary association, and the other end of the association is also owned by a class, then opposite gives the other end.")));

   Internal_Set_Name
    (Base + 509,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (511, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 511, False);
   Internal_Set_Is_Unique (Base + 511, True);
   Internal_Set_Lower (Base + 511, (False, 1));
   Internal_Set_Upper (Base + 511, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 512, False);
   Internal_Set_Is_Ordered (Base + 512, False);
   Internal_Set_Is_Query (Base + 512, True);
   Internal_Set_Is_Unique (Base + 512, True);
   Internal_Set_Lower (Base + 512, (False, 1));
   Internal_Set_Name
    (Base + 512,
     (False, League.Strings.To_Universal_String ("isConsistentWith")));
   Internal_Set_Upper (Base + 512, (False, (False, 1)));

   Internal_Set_Body
    (Base + 513,
     (False, League.Strings.To_Universal_String ("The query isConsistentWith() specifies, for any two Properties in a context in which redefinition is possible, whether redefinition would be logically consistent. A redefining property is consistent with a redefined property if the type of the redefining property conforms to the type of the redefined property, the multiplicity of the redefining property (if specified) is contained in the multiplicity of the redefined property, and the redefining property is derived if the redefined property is derived.")));



   Internal_Set_Name
    (Base + 516,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (518, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 518, False);
   Internal_Set_Is_Unique (Base + 518, True);
   Internal_Set_Lower (Base + 518, (False, 1));
   Internal_Set_Upper (Base + 518, (False, (False, 1)));

   Internal_Set_Direction (519, In_Parameter);
   Internal_Set_Is_Ordered (Base + 519, False);
   Internal_Set_Is_Unique (Base + 519, True);
   Internal_Set_Lower (Base + 519, (False, 1));
   Internal_Set_Name
    (Base + 519,
     (False, League.Strings.To_Universal_String ("redefinee")));
   Internal_Set_Upper (Base + 519, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 520, False);
   Internal_Set_Is_Ordered (Base + 520, False);
   Internal_Set_Is_Query (Base + 520, True);
   Internal_Set_Is_Unique (Base + 520, True);
   Internal_Set_Lower (Base + 520, (False, 1));
   Internal_Set_Name
    (Base + 520,
     (False, League.Strings.To_Universal_String ("subsettingContext")));
   Internal_Set_Upper (Base + 520, (False, (False, 1)));

   Internal_Set_Body
    (Base + 521,
     (False, League.Strings.To_Universal_String ("The query subsettingContext() gives the context for subsetting a property. It consists, in the case of an attribute, of the corresponding classifier, and in the case of an association end, all of the classifiers at the other ends.")));

   Internal_Set_Name
    (Base + 522,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (524, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 524, False);
   Internal_Set_Is_Unique (Base + 524, True);
   Internal_Set_Lower (Base + 524, (False, 0));
   Internal_Set_Upper (Base + 524, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 525, False);
   Internal_Set_Is_Ordered (Base + 525, False);
   Internal_Set_Is_Query (Base + 525, True);
   Internal_Set_Is_Unique (Base + 525, True);
   Internal_Set_Lower (Base + 525, (False, 1));
   Internal_Set_Name
    (Base + 525,
     (False, League.Strings.To_Universal_String ("isNavigable")));
   Internal_Set_Upper (Base + 525, (False, (False, 1)));

   Internal_Set_Body
    (Base + 526,
     (False, League.Strings.To_Universal_String ("The query isNavigable() indicates whether it is possible to navigate across the property.")));

   Internal_Set_Name
    (Base + 527,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (529, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 529, False);
   Internal_Set_Is_Unique (Base + 529, True);
   Internal_Set_Lower (Base + 529, (False, 1));
   Internal_Set_Upper (Base + 529, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 530, False);
   Internal_Set_Is_Ordered (Base + 530, False);
   Internal_Set_Is_Query (Base + 530, True);
   Internal_Set_Is_Unique (Base + 530, True);
   Internal_Set_Lower (Base + 530, (False, 1));
   Internal_Set_Name
    (Base + 530,
     (False, League.Strings.To_Universal_String ("isAttribute")));
   Internal_Set_Upper (Base + 530, (False, (False, 1)));

   Internal_Set_Body
    (Base + 531,
     (False, League.Strings.To_Universal_String ("The query isAttribute() is true if the Property is defined as an attribute of some classifier.")));

   Internal_Set_Name
    (Base + 532,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (534, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 534, False);
   Internal_Set_Is_Unique (Base + 534, True);
   Internal_Set_Lower (Base + 534, (False, 1));
   Internal_Set_Upper (Base + 534, (False, (False, 1)));

   Internal_Set_Direction (535, In_Parameter);
   Internal_Set_Is_Ordered (Base + 535, False);
   Internal_Set_Is_Unique (Base + 535, True);
   Internal_Set_Lower (Base + 535, (False, 1));
   Internal_Set_Name
    (Base + 535,
     (False, League.Strings.To_Universal_String ("p")));
   Internal_Set_Upper (Base + 535, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 7, False);
   Internal_Set_Is_Final_Specialization (Base + 7, False);
   Internal_Set_Name
    (Base + 7,
     (False, League.Strings.To_Universal_String ("DataType")));

   Internal_Set_Body
    (Base + 536,
     (False, League.Strings.To_Universal_String ("A data type is a type whose instances are identified only by their value. A data type may contain attributes to support the modeling of structured data types.")));

   Internal_Set_Is_Composite (Base + 49, True);
   Internal_Set_Is_Derived (Base + 49, False);
   Internal_Set_Is_Derived_Union (Base + 49, False);
   Internal_Set_Is_Leaf (Base + 49, False);
   Internal_Set_Is_Ordered (Base + 49, True);
   Internal_Set_Is_Read_Only (Base + 49, False);
   Internal_Set_Is_Unique (Base + 49, True);
   Internal_Set_Lower (Base + 49, (False, 0));
   Internal_Set_Name
    (Base + 49,
     (False, League.Strings.To_Universal_String ("ownedAttribute")));
   Internal_Set_Upper (Base + 49, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 537,
     (False, League.Strings.To_Universal_String ("The Attributes owned by the DataType.")));

   Internal_Set_Is_Composite (Base + 50, True);
   Internal_Set_Is_Derived (Base + 50, False);
   Internal_Set_Is_Derived_Union (Base + 50, False);
   Internal_Set_Is_Leaf (Base + 50, False);
   Internal_Set_Is_Ordered (Base + 50, True);
   Internal_Set_Is_Read_Only (Base + 50, False);
   Internal_Set_Is_Unique (Base + 50, True);
   Internal_Set_Lower (Base + 50, (False, 0));
   Internal_Set_Name
    (Base + 50,
     (False, League.Strings.To_Universal_String ("ownedOperation")));
   Internal_Set_Upper (Base + 50, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 538,
     (False, League.Strings.To_Universal_String ("The Operations owned by the DataType.")));

   Internal_Set_Is_Leaf (Base + 539, False);
   Internal_Set_Is_Ordered (Base + 539, False);
   Internal_Set_Is_Query (Base + 539, True);
   Internal_Set_Is_Unique (Base + 539, True);
   Internal_Set_Lower (Base + 539, (False, 1));
   Internal_Set_Name
    (Base + 539,
     (False, League.Strings.To_Universal_String ("inherit")));
   Internal_Set_Upper (Base + 539, (False, (False, 1)));

   Internal_Set_Body
    (Base + 540,
     (False, League.Strings.To_Universal_String ("The inherit operation is overridden to exclude redefined properties.")));

   Internal_Set_Name
    (Base + 541,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (543, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 543, False);
   Internal_Set_Is_Unique (Base + 543, True);
   Internal_Set_Lower (Base + 543, (False, 0));
   Internal_Set_Upper (Base + 543, (False, (Unlimited => True)));

   Internal_Set_Direction (544, In_Parameter);
   Internal_Set_Is_Ordered (Base + 544, False);
   Internal_Set_Is_Unique (Base + 544, True);
   Internal_Set_Lower (Base + 544, (False, 0));
   Internal_Set_Name
    (Base + 544,
     (False, League.Strings.To_Universal_String ("inhs")));
   Internal_Set_Upper (Base + 544, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (Base + 11, False);
   Internal_Set_Is_Final_Specialization (Base + 11, False);
   Internal_Set_Name
    (Base + 11,
     (False, League.Strings.To_Universal_String ("Enumeration")));

   Internal_Set_Body
    (Base + 545,
     (False, League.Strings.To_Universal_String ("An enumeration is a data type whose values are enumerated in the model as enumeration literals.")));

   Internal_Set_Is_Composite (Base + 55, True);
   Internal_Set_Is_Derived (Base + 55, False);
   Internal_Set_Is_Derived_Union (Base + 55, False);
   Internal_Set_Is_Leaf (Base + 55, False);
   Internal_Set_Is_Ordered (Base + 55, True);
   Internal_Set_Is_Read_Only (Base + 55, False);
   Internal_Set_Is_Unique (Base + 55, True);
   Internal_Set_Lower (Base + 55, (False, 0));
   Internal_Set_Name
    (Base + 55,
     (False, League.Strings.To_Universal_String ("ownedLiteral")));
   Internal_Set_Upper (Base + 55, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 546,
     (False, League.Strings.To_Universal_String ("The ordered set of literals for this Enumeration.")));

   Internal_Set_Is_Abstract (Base + 12, False);
   Internal_Set_Is_Final_Specialization (Base + 12, False);
   Internal_Set_Name
    (Base + 12,
     (False, League.Strings.To_Universal_String ("EnumerationLiteral")));

   Internal_Set_Body
    (Base + 547,
     (False, League.Strings.To_Universal_String ("An enumeration literal is a user-defined data value for an enumeration.")));

   Internal_Set_Is_Composite (Base + 90, False);
   Internal_Set_Is_Derived (Base + 90, False);
   Internal_Set_Is_Derived_Union (Base + 90, False);
   Internal_Set_Is_Leaf (Base + 90, False);
   Internal_Set_Is_Ordered (Base + 90, False);
   Internal_Set_Is_Read_Only (Base + 90, False);
   Internal_Set_Is_Unique (Base + 90, True);
   Internal_Set_Lower (Base + 90, (False, 0));
   Internal_Set_Name
    (Base + 90,
     (False, League.Strings.To_Universal_String ("enumeration")));
   Internal_Set_Upper (Base + 90, (False, (False, 1)));

   Internal_Set_Body
    (Base + 548,
     (False, League.Strings.To_Universal_String ("The Enumeration that this EnumerationLiteral is a member of.")));

   Internal_Set_Is_Abstract (Base + 25, False);
   Internal_Set_Is_Final_Specialization (Base + 25, False);
   Internal_Set_Name
    (Base + 25,
     (False, League.Strings.To_Universal_String ("PrimitiveType")));

   Internal_Set_Body
    (Base + 549,
     (False, League.Strings.To_Universal_String ("A primitive type defines a predefined data type, without any relevant substructure (i.e., it has no parts in the context of UML). A primitive datatype may have an algebra and operations defined outside of UML, for example, mathematically.")));

   Internal_Set_Is_Abstract (Base + 6, False);
   Internal_Set_Is_Final_Specialization (Base + 6, False);
   Internal_Set_Name
    (Base + 6,
     (False, League.Strings.To_Universal_String ("Constraint")));

   Internal_Set_Body
    (Base + 550,
     (False, League.Strings.To_Universal_String ("A constraint is a condition or restriction expressed in natural language text or in a machine readable language for the purpose of declaring some of the semantics of an element.")));

   Internal_Set_Name
    (Base + 551,
     (False, League.Strings.To_Universal_String ("not_apply_to_self")));

   Internal_Set_Body
    (Base + 552,
     (False, League.Strings.To_Universal_String ("A constraint cannot be applied to itself.")));


   Internal_Set_Name
    (Base + 554,
     (False, League.Strings.To_Universal_String ("value_specification_boolean")));

   Internal_Set_Body
    (Base + 555,
     (False, League.Strings.To_Universal_String ("The value specification for a constraint must evaluate to a Boolean value.")));


   Internal_Set_Is_Composite (Base + 48, False);
   Internal_Set_Is_Derived (Base + 48, False);
   Internal_Set_Is_Derived_Union (Base + 48, False);
   Internal_Set_Is_Leaf (Base + 48, False);
   Internal_Set_Is_Ordered (Base + 48, True);
   Internal_Set_Is_Read_Only (Base + 48, False);
   Internal_Set_Is_Unique (Base + 48, True);
   Internal_Set_Lower (Base + 48, (False, 0));
   Internal_Set_Name
    (Base + 48,
     (False, League.Strings.To_Universal_String ("constrainedElement")));
   Internal_Set_Upper (Base + 48, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 557,
     (False, League.Strings.To_Universal_String ("The ordered set of Elements referenced by this Constraint.")));

   Internal_Set_Is_Composite (Base + 84, True);
   Internal_Set_Is_Derived (Base + 84, False);
   Internal_Set_Is_Derived_Union (Base + 84, False);
   Internal_Set_Is_Leaf (Base + 84, False);
   Internal_Set_Is_Ordered (Base + 84, False);
   Internal_Set_Is_Read_Only (Base + 84, False);
   Internal_Set_Is_Unique (Base + 84, True);
   Internal_Set_Lower (Base + 84, (False, 1));
   Internal_Set_Name
    (Base + 84,
     (False, League.Strings.To_Universal_String ("specification")));
   Internal_Set_Upper (Base + 84, (False, (False, 1)));

   Internal_Set_Body
    (Base + 558,
     (False, League.Strings.To_Universal_String ("A condition that must be true when evaluated in order for the constraint to be satisfied.")));

   Internal_Set_Is_Composite (Base + 83, False);
   Internal_Set_Is_Derived (Base + 83, False);
   Internal_Set_Is_Derived_Union (Base + 83, False);
   Internal_Set_Is_Leaf (Base + 83, False);
   Internal_Set_Is_Ordered (Base + 83, False);
   Internal_Set_Is_Read_Only (Base + 83, False);
   Internal_Set_Is_Unique (Base + 83, True);
   Internal_Set_Lower (Base + 83, (False, 0));
   Internal_Set_Name
    (Base + 83,
     (False, League.Strings.To_Universal_String ("context")));
   Internal_Set_Upper (Base + 83, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 18, False);
   Internal_Set_Is_Final_Specialization (Base + 18, False);
   Internal_Set_Name
    (Base + 18,
     (False, League.Strings.To_Universal_String ("OpaqueExpression")));

   Internal_Set_Body
    (Base + 559,
     (False, League.Strings.To_Universal_String ("An opaque expression is an uninterpreted textual statement that denotes a (possibly empty) set of values when evaluated in a context.")));

   Internal_Set_Name
    (Base + 560,
     (False, League.Strings.To_Universal_String ("language_body_size")));

   Internal_Set_Body
    (Base + 561,
     (False, League.Strings.To_Universal_String ("If the language attribute is not empty, then the size of the body and language arrays must be the same.")));


   Internal_Set_Is_Composite (Base + 99, True);
   Internal_Set_Is_Derived (Base + 99, False);
   Internal_Set_Is_Derived_Union (Base + 99, False);
   Internal_Set_Is_Leaf (Base + 99, False);
   Internal_Set_Is_Ordered (Base + 99, True);
   Internal_Set_Is_Read_Only (Base + 99, False);
   Internal_Set_Is_Unique (Base + 99, False);
   Internal_Set_Lower (Base + 99, (False, 0));
   Internal_Set_Name
    (Base + 99,
     (False, League.Strings.To_Universal_String ("body")));
   Internal_Set_Upper (Base + 99, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 563,
     (False, League.Strings.To_Universal_String ("The text of the expression, possibly in multiple languages.")));

   Internal_Set_Is_Composite (Base + 100, True);
   Internal_Set_Is_Derived (Base + 100, False);
   Internal_Set_Is_Derived_Union (Base + 100, False);
   Internal_Set_Is_Leaf (Base + 100, False);
   Internal_Set_Is_Ordered (Base + 100, True);
   Internal_Set_Is_Read_Only (Base + 100, False);
   Internal_Set_Is_Unique (Base + 100, True);
   Internal_Set_Lower (Base + 100, (False, 0));
   Internal_Set_Name
    (Base + 100,
     (False, League.Strings.To_Universal_String ("language")));
   Internal_Set_Upper (Base + 100, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 564,
     (False, League.Strings.To_Universal_String ("Specifies the languages in which the expression is stated. The interpretation of the expression body depends on the languages. If the languages are unspecified, they might be implicit from the expression body or the context. Languages are matched to body strings by order.")));

   Internal_Set_Is_Abstract (Base + 19, False);
   Internal_Set_Is_Final_Specialization (Base + 19, False);
   Internal_Set_Name
    (Base + 19,
     (False, League.Strings.To_Universal_String ("Operation")));

   Internal_Set_Body
    (Base + 565,
     (False, League.Strings.To_Universal_String ("An operation is a behavioral feature of a classifier that specifies the name, type, parameters, and constraints for invoking an associated behavior.")));

   Internal_Set_Name
    (Base + 566,
     (False, League.Strings.To_Universal_String ("only_body_for_query")));

   Internal_Set_Body
    (Base + 567,
     (False, League.Strings.To_Universal_String ("A bodyCondition can only be specified for a query operation.")));


   Internal_Set_Name
    (Base + 569,
     (False, League.Strings.To_Universal_String ("at_most_one_return")));

   Internal_Set_Body
    (Base + 570,
     (False, League.Strings.To_Universal_String ("An operation can have at most one return parameter; i.e., an owned parameter with the direction set to 'return'")));


   Internal_Set_Default
    (Base + 105,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (Base + 105, False);
   Internal_Set_Is_Derived (Base + 105, False);
   Internal_Set_Is_Derived_Union (Base + 105, False);
   Internal_Set_Is_Leaf (Base + 105, False);
   Internal_Set_Is_Ordered (Base + 105, False);
   Internal_Set_Is_Read_Only (Base + 105, False);
   Internal_Set_Is_Unique (Base + 105, True);
   Internal_Set_Lower (Base + 105, (False, 1));
   Internal_Set_Name
    (Base + 105,
     (False, League.Strings.To_Universal_String ("isQuery")));
   Internal_Set_Upper (Base + 105, (False, (False, 1)));

   Internal_Set_Body
    (Base + 572,
     (False, League.Strings.To_Universal_String ("Specifies whether an execution of the BehavioralFeature leaves the state of the system unchanged (isQuery=true) or whether side effects may occur (isQuery=false).")));

   Internal_Set_Default
    (Base + 104,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (Base + 104, False);
   Internal_Set_Is_Derived (Base + 104, True);
   Internal_Set_Is_Derived_Union (Base + 104, False);
   Internal_Set_Is_Leaf (Base + 104, False);
   Internal_Set_Is_Ordered (Base + 104, False);
   Internal_Set_Is_Read_Only (Base + 104, False);
   Internal_Set_Is_Unique (Base + 104, True);
   Internal_Set_Lower (Base + 104, (False, 1));
   Internal_Set_Name
    (Base + 104,
     (False, League.Strings.To_Universal_String ("isOrdered")));
   Internal_Set_Upper (Base + 104, (False, (False, 1)));

   Internal_Set_Body
    (Base + 573,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Default
    (Base + 106,
     (False, League.Strings.To_Universal_String ("true")));
   Internal_Set_Is_Composite (Base + 106, False);
   Internal_Set_Is_Derived (Base + 106, True);
   Internal_Set_Is_Derived_Union (Base + 106, False);
   Internal_Set_Is_Leaf (Base + 106, False);
   Internal_Set_Is_Ordered (Base + 106, False);
   Internal_Set_Is_Read_Only (Base + 106, False);
   Internal_Set_Is_Unique (Base + 106, True);
   Internal_Set_Lower (Base + 106, (False, 1));
   Internal_Set_Name
    (Base + 106,
     (False, League.Strings.To_Universal_String ("isUnique")));
   Internal_Set_Upper (Base + 106, (False, (False, 1)));

   Internal_Set_Body
    (Base + 574,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Default
    (Base + 107,
     (False, League.Strings.To_Universal_String ("1")));
   Internal_Set_Is_Composite (Base + 107, False);
   Internal_Set_Is_Derived (Base + 107, True);
   Internal_Set_Is_Derived_Union (Base + 107, False);
   Internal_Set_Is_Leaf (Base + 107, False);
   Internal_Set_Is_Ordered (Base + 107, False);
   Internal_Set_Is_Read_Only (Base + 107, False);
   Internal_Set_Is_Unique (Base + 107, True);
   Internal_Set_Lower (Base + 107, (False, 0));
   Internal_Set_Name
    (Base + 107,
     (False, League.Strings.To_Universal_String ("lower")));
   Internal_Set_Upper (Base + 107, (False, (False, 1)));

   Internal_Set_Body
    (Base + 575,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Default
    (Base + 109,
     (False, League.Strings.To_Universal_String ("1")));
   Internal_Set_Is_Composite (Base + 109, False);
   Internal_Set_Is_Derived (Base + 109, True);
   Internal_Set_Is_Derived_Union (Base + 109, False);
   Internal_Set_Is_Leaf (Base + 109, False);
   Internal_Set_Is_Ordered (Base + 109, False);
   Internal_Set_Is_Read_Only (Base + 109, False);
   Internal_Set_Is_Unique (Base + 109, True);
   Internal_Set_Lower (Base + 109, (False, 0));
   Internal_Set_Name
    (Base + 109,
     (False, League.Strings.To_Universal_String ("upper")));
   Internal_Set_Upper (Base + 109, (False, (False, 1)));

   Internal_Set_Body
    (Base + 576,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Is_Composite (Base + 102, False);
   Internal_Set_Is_Derived (Base + 102, False);
   Internal_Set_Is_Derived_Union (Base + 102, False);
   Internal_Set_Is_Leaf (Base + 102, False);
   Internal_Set_Is_Ordered (Base + 102, False);
   Internal_Set_Is_Read_Only (Base + 102, False);
   Internal_Set_Is_Unique (Base + 102, True);
   Internal_Set_Lower (Base + 102, (False, 0));
   Internal_Set_Name
    (Base + 102,
     (False, League.Strings.To_Universal_String ("class")));
   Internal_Set_Upper (Base + 102, (False, (False, 1)));

   Internal_Set_Body
    (Base + 577,
     (False, League.Strings.To_Universal_String ("The class that owns the operation.")));

   Internal_Set_Is_Composite (Base + 103, False);
   Internal_Set_Is_Derived (Base + 103, False);
   Internal_Set_Is_Derived_Union (Base + 103, False);
   Internal_Set_Is_Leaf (Base + 103, False);
   Internal_Set_Is_Ordered (Base + 103, False);
   Internal_Set_Is_Read_Only (Base + 103, False);
   Internal_Set_Is_Unique (Base + 103, True);
   Internal_Set_Lower (Base + 103, (False, 0));
   Internal_Set_Name
    (Base + 103,
     (False, League.Strings.To_Universal_String ("datatype")));
   Internal_Set_Upper (Base + 103, (False, (False, 1)));

   Internal_Set_Body
    (Base + 578,
     (False, League.Strings.To_Universal_String ("The DataType that owns this Operation.")));

   Internal_Set_Is_Composite (Base + 67, False);
   Internal_Set_Is_Derived (Base + 67, False);
   Internal_Set_Is_Derived_Union (Base + 67, False);
   Internal_Set_Is_Leaf (Base + 67, False);
   Internal_Set_Is_Ordered (Base + 67, False);
   Internal_Set_Is_Read_Only (Base + 67, False);
   Internal_Set_Is_Unique (Base + 67, True);
   Internal_Set_Lower (Base + 67, (False, 0));
   Internal_Set_Name
    (Base + 67,
     (False, League.Strings.To_Universal_String ("raisedException")));
   Internal_Set_Upper (Base + 67, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 579,
     (False, League.Strings.To_Universal_String ("References the Types representing exceptions that may be raised during an invocation of this operation.")));

   Internal_Set_Is_Composite (Base + 68, False);
   Internal_Set_Is_Derived (Base + 68, False);
   Internal_Set_Is_Derived_Union (Base + 68, False);
   Internal_Set_Is_Leaf (Base + 68, False);
   Internal_Set_Is_Ordered (Base + 68, False);
   Internal_Set_Is_Read_Only (Base + 68, False);
   Internal_Set_Is_Unique (Base + 68, True);
   Internal_Set_Lower (Base + 68, (False, 0));
   Internal_Set_Name
    (Base + 68,
     (False, League.Strings.To_Universal_String ("redefinedOperation")));
   Internal_Set_Upper (Base + 68, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 580,
     (False, League.Strings.To_Universal_String ("References the Operations that are redefined by this Operation.")));

   Internal_Set_Is_Composite (Base + 108, False);
   Internal_Set_Is_Derived (Base + 108, True);
   Internal_Set_Is_Derived_Union (Base + 108, False);
   Internal_Set_Is_Leaf (Base + 108, False);
   Internal_Set_Is_Ordered (Base + 108, False);
   Internal_Set_Is_Read_Only (Base + 108, False);
   Internal_Set_Is_Unique (Base + 108, True);
   Internal_Set_Lower (Base + 108, (False, 0));
   Internal_Set_Name
    (Base + 108,
     (False, League.Strings.To_Universal_String ("type")));
   Internal_Set_Upper (Base + 108, (False, (False, 1)));

   Internal_Set_Body
    (Base + 581,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Is_Composite (Base + 64, True);
   Internal_Set_Is_Derived (Base + 64, False);
   Internal_Set_Is_Derived_Union (Base + 64, False);
   Internal_Set_Is_Leaf (Base + 64, False);
   Internal_Set_Is_Ordered (Base + 64, True);
   Internal_Set_Is_Read_Only (Base + 64, False);
   Internal_Set_Is_Unique (Base + 64, True);
   Internal_Set_Lower (Base + 64, (False, 0));
   Internal_Set_Name
    (Base + 64,
     (False, League.Strings.To_Universal_String ("ownedParameter")));
   Internal_Set_Upper (Base + 64, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 582,
     (False, League.Strings.To_Universal_String ("Specifies the ordered set of formal parameters of this BehavioralFeature.")));

   Internal_Set_Is_Composite (Base + 66, True);
   Internal_Set_Is_Derived (Base + 66, False);
   Internal_Set_Is_Derived_Union (Base + 66, False);
   Internal_Set_Is_Leaf (Base + 66, False);
   Internal_Set_Is_Ordered (Base + 66, False);
   Internal_Set_Is_Read_Only (Base + 66, False);
   Internal_Set_Is_Unique (Base + 66, True);
   Internal_Set_Lower (Base + 66, (False, 0));
   Internal_Set_Name
    (Base + 66,
     (False, League.Strings.To_Universal_String ("precondition")));
   Internal_Set_Upper (Base + 66, (False, (Unlimited => True)));

   Internal_Set_Is_Composite (Base + 65, True);
   Internal_Set_Is_Derived (Base + 65, False);
   Internal_Set_Is_Derived_Union (Base + 65, False);
   Internal_Set_Is_Leaf (Base + 65, False);
   Internal_Set_Is_Ordered (Base + 65, False);
   Internal_Set_Is_Read_Only (Base + 65, False);
   Internal_Set_Is_Unique (Base + 65, True);
   Internal_Set_Lower (Base + 65, (False, 0));
   Internal_Set_Name
    (Base + 65,
     (False, League.Strings.To_Universal_String ("postcondition")));
   Internal_Set_Upper (Base + 65, (False, (Unlimited => True)));

   Internal_Set_Is_Composite (Base + 101, True);
   Internal_Set_Is_Derived (Base + 101, False);
   Internal_Set_Is_Derived_Union (Base + 101, False);
   Internal_Set_Is_Leaf (Base + 101, False);
   Internal_Set_Is_Ordered (Base + 101, False);
   Internal_Set_Is_Read_Only (Base + 101, False);
   Internal_Set_Is_Unique (Base + 101, True);
   Internal_Set_Lower (Base + 101, (False, 0));
   Internal_Set_Name
    (Base + 101,
     (False, League.Strings.To_Universal_String ("bodyCondition")));
   Internal_Set_Upper (Base + 101, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 583, False);
   Internal_Set_Is_Ordered (Base + 583, False);
   Internal_Set_Is_Query (Base + 583, True);
   Internal_Set_Is_Unique (Base + 583, True);
   Internal_Set_Lower (Base + 583, (False, 1));
   Internal_Set_Name
    (Base + 583,
     (False, League.Strings.To_Universal_String ("isOrdered")));
   Internal_Set_Upper (Base + 583, (False, (False, 1)));

   Internal_Set_Body
    (Base + 584,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, isOrdered equals the value of isOrdered for that parameter. Otherwise isOrdered is false.")));

   Internal_Set_Name
    (Base + 585,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (587, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 587, False);
   Internal_Set_Is_Unique (Base + 587, True);
   Internal_Set_Lower (Base + 587, (False, 1));
   Internal_Set_Upper (Base + 587, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 588, False);
   Internal_Set_Is_Ordered (Base + 588, False);
   Internal_Set_Is_Query (Base + 588, True);
   Internal_Set_Is_Unique (Base + 588, True);
   Internal_Set_Lower (Base + 588, (False, 1));
   Internal_Set_Name
    (Base + 588,
     (False, League.Strings.To_Universal_String ("isUnique")));
   Internal_Set_Upper (Base + 588, (False, (False, 1)));

   Internal_Set_Body
    (Base + 589,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, isUnique equals the value of isUnique for that parameter. Otherwise isUnique is true.")));

   Internal_Set_Name
    (Base + 590,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (592, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 592, False);
   Internal_Set_Is_Unique (Base + 592, True);
   Internal_Set_Lower (Base + 592, (False, 1));
   Internal_Set_Upper (Base + 592, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 593, False);
   Internal_Set_Is_Ordered (Base + 593, False);
   Internal_Set_Is_Query (Base + 593, True);
   Internal_Set_Is_Unique (Base + 593, True);
   Internal_Set_Lower (Base + 593, (False, 1));
   Internal_Set_Name
    (Base + 593,
     (False, League.Strings.To_Universal_String ("lower")));
   Internal_Set_Upper (Base + 593, (False, (False, 1)));

   Internal_Set_Body
    (Base + 594,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, lower equals the value of lower for that parameter. Otherwise lower is not defined.")));

   Internal_Set_Name
    (Base + 595,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (597, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 597, False);
   Internal_Set_Is_Unique (Base + 597, True);
   Internal_Set_Lower (Base + 597, (False, 1));
   Internal_Set_Upper (Base + 597, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 598, False);
   Internal_Set_Is_Ordered (Base + 598, False);
   Internal_Set_Is_Query (Base + 598, True);
   Internal_Set_Is_Unique (Base + 598, True);
   Internal_Set_Lower (Base + 598, (False, 1));
   Internal_Set_Name
    (Base + 598,
     (False, League.Strings.To_Universal_String ("upper")));
   Internal_Set_Upper (Base + 598, (False, (False, 1)));

   Internal_Set_Body
    (Base + 599,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, upper equals the value of upper for that parameter. Otherwise upper is not defined.")));

   Internal_Set_Name
    (Base + 600,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (602, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 602, False);
   Internal_Set_Is_Unique (Base + 602, True);
   Internal_Set_Lower (Base + 602, (False, 1));
   Internal_Set_Upper (Base + 602, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 603, False);
   Internal_Set_Is_Ordered (Base + 603, False);
   Internal_Set_Is_Query (Base + 603, True);
   Internal_Set_Is_Unique (Base + 603, True);
   Internal_Set_Lower (Base + 603, (False, 1));
   Internal_Set_Name
    (Base + 603,
     (False, League.Strings.To_Universal_String ("type")));
   Internal_Set_Upper (Base + 603, (False, (False, 1)));

   Internal_Set_Body
    (Base + 604,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, type equals the value of type for that parameter. Otherwise type is not defined.")));

   Internal_Set_Name
    (Base + 605,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (607, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 607, False);
   Internal_Set_Is_Unique (Base + 607, True);
   Internal_Set_Lower (Base + 607, (False, 1));
   Internal_Set_Upper (Base + 607, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 608, False);
   Internal_Set_Is_Ordered (Base + 608, False);
   Internal_Set_Is_Query (Base + 608, True);
   Internal_Set_Is_Unique (Base + 608, True);
   Internal_Set_Lower (Base + 608, (False, 1));
   Internal_Set_Name
    (Base + 608,
     (False, League.Strings.To_Universal_String ("isConsistentWith")));
   Internal_Set_Upper (Base + 608, (False, (False, 1)));

   Internal_Set_Body
    (Base + 609,
     (False, League.Strings.To_Universal_String ("The query isConsistentWith() specifies, for any two Operations in a context in which redefinition is possible, whether redefinition would be consistent in the sense of maintaining type covariance. Other senses of consistency may be required, for example to determine consistency in the sense of contravariance. Users may define alternative queries under names different from 'isConsistentWith()', as for example, users may define a query named 'isContravariantWith()'.")));



   Internal_Set_Name
    (Base + 612,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (614, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 614, False);
   Internal_Set_Is_Unique (Base + 614, True);
   Internal_Set_Lower (Base + 614, (False, 1));
   Internal_Set_Upper (Base + 614, (False, (False, 1)));

   Internal_Set_Direction (615, In_Parameter);
   Internal_Set_Is_Ordered (Base + 615, False);
   Internal_Set_Is_Unique (Base + 615, True);
   Internal_Set_Lower (Base + 615, (False, 1));
   Internal_Set_Name
    (Base + 615,
     (False, League.Strings.To_Universal_String ("redefinee")));
   Internal_Set_Upper (Base + 615, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 616, False);
   Internal_Set_Is_Ordered (Base + 616, False);
   Internal_Set_Is_Query (Base + 616, True);
   Internal_Set_Is_Unique (Base + 616, True);
   Internal_Set_Lower (Base + 616, (False, 1));
   Internal_Set_Name
    (Base + 616,
     (False, League.Strings.To_Universal_String ("returnResult")));
   Internal_Set_Upper (Base + 616, (False, (False, 1)));

   Internal_Set_Name
    (Base + 617,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (619, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 619, False);
   Internal_Set_Is_Unique (Base + 619, True);
   Internal_Set_Lower (Base + 619, (False, 0));
   Internal_Set_Upper (Base + 619, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (Base + 24, False);
   Internal_Set_Is_Final_Specialization (Base + 24, False);
   Internal_Set_Name
    (Base + 24,
     (False, League.Strings.To_Universal_String ("Parameter")));

   Internal_Set_Body
    (Base + 620,
     (False, League.Strings.To_Universal_String ("A parameter is a specification of an argument used to pass information into or out of an invocation of a behavioral feature.")));

   Internal_Set_Is_Composite (Base + 117, False);
   Internal_Set_Is_Derived (Base + 117, False);
   Internal_Set_Is_Derived_Union (Base + 117, False);
   Internal_Set_Is_Leaf (Base + 117, False);
   Internal_Set_Is_Ordered (Base + 117, False);
   Internal_Set_Is_Read_Only (Base + 117, False);
   Internal_Set_Is_Unique (Base + 117, True);
   Internal_Set_Lower (Base + 117, (False, 0));
   Internal_Set_Name
    (Base + 117,
     (False, League.Strings.To_Universal_String ("default")));
   Internal_Set_Upper (Base + 117, (False, (False, 1)));

   Internal_Set_Body
    (Base + 621,
     (False, League.Strings.To_Universal_String ("Specifies a String that represents a value to be used when no argument is supplied for the Parameter.")));

   Internal_Set_Default
    (Base + 118,
     (False, League.Strings.To_Universal_String ("in")));
   Internal_Set_Is_Composite (Base + 118, False);
   Internal_Set_Is_Derived (Base + 118, False);
   Internal_Set_Is_Derived_Union (Base + 118, False);
   Internal_Set_Is_Leaf (Base + 118, False);
   Internal_Set_Is_Ordered (Base + 118, False);
   Internal_Set_Is_Read_Only (Base + 118, False);
   Internal_Set_Is_Unique (Base + 118, True);
   Internal_Set_Lower (Base + 118, (False, 1));
   Internal_Set_Name
    (Base + 118,
     (False, League.Strings.To_Universal_String ("direction")));
   Internal_Set_Upper (Base + 118, (False, (False, 1)));

   Internal_Set_Body
    (Base + 622,
     (False, League.Strings.To_Universal_String ("Indicates whether a parameter is being sent into or out of a behavioral element.")));

   Internal_Set_Is_Composite (Base + 119, False);
   Internal_Set_Is_Derived (Base + 119, False);
   Internal_Set_Is_Derived_Union (Base + 119, False);
   Internal_Set_Is_Leaf (Base + 119, False);
   Internal_Set_Is_Ordered (Base + 119, False);
   Internal_Set_Is_Read_Only (Base + 119, False);
   Internal_Set_Is_Unique (Base + 119, True);
   Internal_Set_Lower (Base + 119, (False, 0));
   Internal_Set_Name
    (Base + 119,
     (False, League.Strings.To_Universal_String ("operation")));
   Internal_Set_Upper (Base + 119, (False, (False, 1)));

   Internal_Set_Body
    (Base + 623,
     (False, League.Strings.To_Universal_String ("References the Operation owning this parameter.")));

   Internal_Set_Is_Abstract (Base + 2, True);
   Internal_Set_Is_Final_Specialization (Base + 2, False);
   Internal_Set_Name
    (Base + 2,
     (False, League.Strings.To_Universal_String ("BehavioralFeature")));

   Internal_Set_Body
    (Base + 624,
     (False, League.Strings.To_Universal_String ("A behavioral feature is a feature of a classifier that specifies an aspect of the behavior of its instances.")));

   Internal_Set_Is_Composite (Base + 38, True);
   Internal_Set_Is_Derived (Base + 38, False);
   Internal_Set_Is_Derived_Union (Base + 38, False);
   Internal_Set_Is_Leaf (Base + 38, False);
   Internal_Set_Is_Ordered (Base + 38, True);
   Internal_Set_Is_Read_Only (Base + 38, False);
   Internal_Set_Is_Unique (Base + 38, True);
   Internal_Set_Lower (Base + 38, (False, 0));
   Internal_Set_Name
    (Base + 38,
     (False, League.Strings.To_Universal_String ("ownedParameter")));
   Internal_Set_Upper (Base + 38, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 625,
     (False, League.Strings.To_Universal_String ("Specifies the ordered set of formal parameters of this BehavioralFeature.")));

   Internal_Set_Is_Composite (Base + 39, False);
   Internal_Set_Is_Derived (Base + 39, False);
   Internal_Set_Is_Derived_Union (Base + 39, False);
   Internal_Set_Is_Leaf (Base + 39, False);
   Internal_Set_Is_Ordered (Base + 39, False);
   Internal_Set_Is_Read_Only (Base + 39, False);
   Internal_Set_Is_Unique (Base + 39, True);
   Internal_Set_Lower (Base + 39, (False, 0));
   Internal_Set_Name
    (Base + 39,
     (False, League.Strings.To_Universal_String ("raisedException")));
   Internal_Set_Upper (Base + 39, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 626,
     (False, League.Strings.To_Universal_String ("References the Types representing exceptions that may be raised during an invocation of this feature.")));

   Internal_Set_Is_Leaf (Base + 627, False);
   Internal_Set_Is_Ordered (Base + 627, False);
   Internal_Set_Is_Query (Base + 627, True);
   Internal_Set_Is_Unique (Base + 627, True);
   Internal_Set_Lower (Base + 627, (False, 1));
   Internal_Set_Name
    (Base + 627,
     (False, League.Strings.To_Universal_String ("isDistinguishableFrom")));
   Internal_Set_Upper (Base + 627, (False, (False, 1)));

   Internal_Set_Body
    (Base + 628,
     (False, League.Strings.To_Universal_String ("The query isDistinguishableFrom() determines whether two BehavioralFeatures may coexist in the same Namespace. It specifies that they have to have different signatures.")));

   Internal_Set_Name
    (Base + 629,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (631, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 631, False);
   Internal_Set_Is_Unique (Base + 631, True);
   Internal_Set_Lower (Base + 631, (False, 1));
   Internal_Set_Upper (Base + 631, (False, (False, 1)));

   Internal_Set_Direction (632, In_Parameter);
   Internal_Set_Is_Ordered (Base + 632, False);
   Internal_Set_Is_Unique (Base + 632, True);
   Internal_Set_Lower (Base + 632, (False, 1));
   Internal_Set_Name
    (Base + 632,
     (False, League.Strings.To_Universal_String ("n")));
   Internal_Set_Upper (Base + 632, (False, (False, 1)));

   Internal_Set_Direction (633, In_Parameter);
   Internal_Set_Is_Ordered (Base + 633, False);
   Internal_Set_Is_Unique (Base + 633, True);
   Internal_Set_Lower (Base + 633, (False, 1));
   Internal_Set_Name
    (Base + 633,
     (False, League.Strings.To_Universal_String ("ns")));
   Internal_Set_Upper (Base + 633, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 10, False);
   Internal_Set_Is_Final_Specialization (Base + 10, False);
   Internal_Set_Name
    (Base + 10,
     (False, League.Strings.To_Universal_String ("ElementImport")));

   Internal_Set_Body
    (Base + 634,
     (False, League.Strings.To_Universal_String ("An element import identifies an element in another package, and allows the element to be referenced using its name without a qualifier.")));

   Internal_Set_Name
    (Base + 635,
     (False, League.Strings.To_Universal_String ("visibility_public_or_private")));

   Internal_Set_Body
    (Base + 636,
     (False, League.Strings.To_Universal_String ("The visibility of an ElementImport is either public or private.")));


   Internal_Set_Name
    (Base + 638,
     (False, League.Strings.To_Universal_String ("imported_element_is_public")));

   Internal_Set_Body
    (Base + 639,
     (False, League.Strings.To_Universal_String ("An importedElement has either public visibility or no visibility at all.")));


   Internal_Set_Default
    (Base + 89,
     (False, League.Strings.To_Universal_String ("public")));
   Internal_Set_Is_Composite (Base + 89, False);
   Internal_Set_Is_Derived (Base + 89, False);
   Internal_Set_Is_Derived_Union (Base + 89, False);
   Internal_Set_Is_Leaf (Base + 89, False);
   Internal_Set_Is_Ordered (Base + 89, False);
   Internal_Set_Is_Read_Only (Base + 89, False);
   Internal_Set_Is_Unique (Base + 89, True);
   Internal_Set_Lower (Base + 89, (False, 1));
   Internal_Set_Name
    (Base + 89,
     (False, League.Strings.To_Universal_String ("visibility")));
   Internal_Set_Upper (Base + 89, (False, (False, 1)));

   Internal_Set_Body
    (Base + 641,
     (False, League.Strings.To_Universal_String ("Specifies the visibility of the imported PackageableElement within the importing Package. The default visibility is the same as that of the imported element. If the imported element does not have a visibility, it is possible to add visibility to the element import.")));

   Internal_Set_Is_Composite (Base + 86, False);
   Internal_Set_Is_Derived (Base + 86, False);
   Internal_Set_Is_Derived_Union (Base + 86, False);
   Internal_Set_Is_Leaf (Base + 86, False);
   Internal_Set_Is_Ordered (Base + 86, False);
   Internal_Set_Is_Read_Only (Base + 86, False);
   Internal_Set_Is_Unique (Base + 86, True);
   Internal_Set_Lower (Base + 86, (False, 0));
   Internal_Set_Name
    (Base + 86,
     (False, League.Strings.To_Universal_String ("alias")));
   Internal_Set_Upper (Base + 86, (False, (False, 1)));

   Internal_Set_Body
    (Base + 642,
     (False, League.Strings.To_Universal_String ("Specifies the name that should be added to the namespace of the importing package in lieu of the name of the imported packagable element. The aliased name must not clash with any other member name in the importing package. By default, no alias is used.")));

   Internal_Set_Is_Composite (Base + 87, False);
   Internal_Set_Is_Derived (Base + 87, False);
   Internal_Set_Is_Derived_Union (Base + 87, False);
   Internal_Set_Is_Leaf (Base + 87, False);
   Internal_Set_Is_Ordered (Base + 87, False);
   Internal_Set_Is_Read_Only (Base + 87, False);
   Internal_Set_Is_Unique (Base + 87, True);
   Internal_Set_Lower (Base + 87, (False, 1));
   Internal_Set_Name
    (Base + 87,
     (False, League.Strings.To_Universal_String ("importedElement")));
   Internal_Set_Upper (Base + 87, (False, (False, 1)));

   Internal_Set_Body
    (Base + 643,
     (False, League.Strings.To_Universal_String ("Specifies the PackageableElement whose name is to be added to a Namespace.")));

   Internal_Set_Is_Composite (Base + 88, False);
   Internal_Set_Is_Derived (Base + 88, False);
   Internal_Set_Is_Derived_Union (Base + 88, False);
   Internal_Set_Is_Leaf (Base + 88, False);
   Internal_Set_Is_Ordered (Base + 88, False);
   Internal_Set_Is_Read_Only (Base + 88, False);
   Internal_Set_Is_Unique (Base + 88, True);
   Internal_Set_Lower (Base + 88, (False, 1));
   Internal_Set_Name
    (Base + 88,
     (False, League.Strings.To_Universal_String ("importingNamespace")));
   Internal_Set_Upper (Base + 88, (False, (False, 1)));

   Internal_Set_Body
    (Base + 644,
     (False, League.Strings.To_Universal_String ("Specifies the Namespace that imports a PackageableElement from another Package.")));

   Internal_Set_Is_Leaf (Base + 645, False);
   Internal_Set_Is_Ordered (Base + 645, False);
   Internal_Set_Is_Query (Base + 645, True);
   Internal_Set_Is_Unique (Base + 645, True);
   Internal_Set_Lower (Base + 645, (False, 1));
   Internal_Set_Name
    (Base + 645,
     (False, League.Strings.To_Universal_String ("getName")));
   Internal_Set_Upper (Base + 645, (False, (False, 1)));

   Internal_Set_Body
    (Base + 646,
     (False, League.Strings.To_Universal_String ("The query getName() returns the name under which the imported PackageableElement will be known in the importing namespace.")));

   Internal_Set_Name
    (Base + 647,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (649, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 649, False);
   Internal_Set_Is_Unique (Base + 649, True);
   Internal_Set_Lower (Base + 649, (False, 1));
   Internal_Set_Upper (Base + 649, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 20, False);
   Internal_Set_Is_Final_Specialization (Base + 20, False);
   Internal_Set_Name
    (Base + 20,
     (False, League.Strings.To_Universal_String ("Package")));

   Internal_Set_Body
    (Base + 650,
     (False, League.Strings.To_Universal_String ("A package is used to group elements, and provides a namespace for the grouped elements.")));

   Internal_Set_Name
    (Base + 651,
     (False, League.Strings.To_Universal_String ("elements_public_or_private")));

   Internal_Set_Body
    (Base + 652,
     (False, League.Strings.To_Universal_String ("If an element that is owned by a package has visibility, it is public or private.")));


   Internal_Set_Is_Composite (Base + 72, True);
   Internal_Set_Is_Derived (Base + 72, False);
   Internal_Set_Is_Derived_Union (Base + 72, False);
   Internal_Set_Is_Leaf (Base + 72, False);
   Internal_Set_Is_Ordered (Base + 72, False);
   Internal_Set_Is_Read_Only (Base + 72, False);
   Internal_Set_Is_Unique (Base + 72, True);
   Internal_Set_Lower (Base + 72, (False, 0));
   Internal_Set_Name
    (Base + 72,
     (False, League.Strings.To_Universal_String ("packagedElement")));
   Internal_Set_Upper (Base + 72, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 654,
     (False, League.Strings.To_Universal_String ("Specifies the packageable elements that are owned by this Package.")));

   Internal_Set_Is_Composite (Base + 70, True);
   Internal_Set_Is_Derived (Base + 70, True);
   Internal_Set_Is_Derived_Union (Base + 70, False);
   Internal_Set_Is_Leaf (Base + 70, False);
   Internal_Set_Is_Ordered (Base + 70, False);
   Internal_Set_Is_Read_Only (Base + 70, False);
   Internal_Set_Is_Unique (Base + 70, True);
   Internal_Set_Lower (Base + 70, (False, 0));
   Internal_Set_Name
    (Base + 70,
     (False, League.Strings.To_Universal_String ("ownedType")));
   Internal_Set_Upper (Base + 70, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 655,
     (False, League.Strings.To_Universal_String ("References the packaged elements that are Types.")));

   Internal_Set_Is_Composite (Base + 69, True);
   Internal_Set_Is_Derived (Base + 69, True);
   Internal_Set_Is_Derived_Union (Base + 69, False);
   Internal_Set_Is_Leaf (Base + 69, False);
   Internal_Set_Is_Ordered (Base + 69, False);
   Internal_Set_Is_Read_Only (Base + 69, False);
   Internal_Set_Is_Unique (Base + 69, True);
   Internal_Set_Lower (Base + 69, (False, 0));
   Internal_Set_Name
    (Base + 69,
     (False, League.Strings.To_Universal_String ("nestedPackage")));
   Internal_Set_Upper (Base + 69, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 656,
     (False, League.Strings.To_Universal_String ("References the packaged elements that are Packages.")));

   Internal_Set_Is_Composite (Base + 110, False);
   Internal_Set_Is_Derived (Base + 110, False);
   Internal_Set_Is_Derived_Union (Base + 110, False);
   Internal_Set_Is_Leaf (Base + 110, False);
   Internal_Set_Is_Ordered (Base + 110, False);
   Internal_Set_Is_Read_Only (Base + 110, False);
   Internal_Set_Is_Unique (Base + 110, True);
   Internal_Set_Lower (Base + 110, (False, 0));
   Internal_Set_Name
    (Base + 110,
     (False, League.Strings.To_Universal_String ("nestingPackage")));
   Internal_Set_Upper (Base + 110, (False, (False, 1)));

   Internal_Set_Body
    (Base + 657,
     (False, League.Strings.To_Universal_String ("References the Package that owns this Package.")));

   Internal_Set_Is_Composite (Base + 71, True);
   Internal_Set_Is_Derived (Base + 71, False);
   Internal_Set_Is_Derived_Union (Base + 71, False);
   Internal_Set_Is_Leaf (Base + 71, False);
   Internal_Set_Is_Ordered (Base + 71, False);
   Internal_Set_Is_Read_Only (Base + 71, False);
   Internal_Set_Is_Unique (Base + 71, True);
   Internal_Set_Lower (Base + 71, (False, 0));
   Internal_Set_Name
    (Base + 71,
     (False, League.Strings.To_Universal_String ("packageMerge")));
   Internal_Set_Upper (Base + 71, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 658,
     (False, League.Strings.To_Universal_String ("References the PackageMerges that are owned by this Package.")));

   Internal_Set_Is_Composite (Base + 111, False);
   Internal_Set_Is_Derived (Base + 111, False);
   Internal_Set_Is_Derived_Union (Base + 111, False);
   Internal_Set_Is_Leaf (Base + 111, False);
   Internal_Set_Is_Ordered (Base + 111, False);
   Internal_Set_Is_Read_Only (Base + 111, False);
   Internal_Set_Is_Unique (Base + 111, True);
   Internal_Set_Lower (Base + 111, (False, 0));
   Internal_Set_Name
    (Base + 111,
     (False, League.Strings.To_Universal_String ("uri")));
   Internal_Set_Upper (Base + 111, (False, (False, 1)));

   Internal_Set_Body
    (Base + 659,
     (False, League.Strings.To_Universal_String ("Provides an identifier for the package that can be used for many purposes. A URI is the universally unique identification of the package following the IETF URI specification, RFC 2396 http://www.ietf.org/rfc/rfc2396.txt. UML 1.4 and MOF 1.4 were assigned URIs to their outermost package. The package URI appears in XMI files when instances of the package’s classes are serialized.")));

   Internal_Set_Is_Leaf (Base + 660, False);
   Internal_Set_Is_Ordered (Base + 660, False);
   Internal_Set_Is_Query (Base + 660, True);
   Internal_Set_Is_Unique (Base + 660, True);
   Internal_Set_Lower (Base + 660, (False, 1));
   Internal_Set_Name
    (Base + 660,
     (False, League.Strings.To_Universal_String ("mustBeOwned")));
   Internal_Set_Upper (Base + 660, (False, (False, 1)));

   Internal_Set_Body
    (Base + 661,
     (False, League.Strings.To_Universal_String ("The query mustBeOwned() indicates whether elements of this type must have an owner.")));

   Internal_Set_Name
    (Base + 662,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (664, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 664, False);
   Internal_Set_Is_Unique (Base + 664, True);
   Internal_Set_Lower (Base + 664, (False, 1));
   Internal_Set_Upper (Base + 664, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 665, False);
   Internal_Set_Is_Ordered (Base + 665, False);
   Internal_Set_Is_Query (Base + 665, True);
   Internal_Set_Is_Unique (Base + 665, True);
   Internal_Set_Lower (Base + 665, (False, 1));
   Internal_Set_Name
    (Base + 665,
     (False, League.Strings.To_Universal_String ("visibleMembers")));
   Internal_Set_Upper (Base + 665, (False, (False, 1)));

   Internal_Set_Body
    (Base + 666,
     (False, League.Strings.To_Universal_String ("The query visibleMembers() defines which members of a Package can be accessed outside it.")));

   Internal_Set_Name
    (Base + 667,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (669, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 669, False);
   Internal_Set_Is_Unique (Base + 669, True);
   Internal_Set_Lower (Base + 669, (False, 0));
   Internal_Set_Upper (Base + 669, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 670, False);
   Internal_Set_Is_Ordered (Base + 670, False);
   Internal_Set_Is_Query (Base + 670, True);
   Internal_Set_Is_Unique (Base + 670, True);
   Internal_Set_Lower (Base + 670, (False, 1));
   Internal_Set_Name
    (Base + 670,
     (False, League.Strings.To_Universal_String ("makesVisible")));
   Internal_Set_Upper (Base + 670, (False, (False, 1)));

   Internal_Set_Body
    (Base + 671,
     (False, League.Strings.To_Universal_String ("The query makesVisible() defines whether a Package makes an element visible outside itself. Elements with no visibility and elements with public visibility are made visible.")));



   Internal_Set_Name
    (Base + 674,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (676, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 676, False);
   Internal_Set_Is_Unique (Base + 676, True);
   Internal_Set_Lower (Base + 676, (False, 1));
   Internal_Set_Upper (Base + 676, (False, (False, 1)));

   Internal_Set_Direction (677, In_Parameter);
   Internal_Set_Is_Ordered (Base + 677, False);
   Internal_Set_Is_Unique (Base + 677, True);
   Internal_Set_Lower (Base + 677, (False, 1));
   Internal_Set_Name
    (Base + 677,
     (False, League.Strings.To_Universal_String ("el")));
   Internal_Set_Upper (Base + 677, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 21, False);
   Internal_Set_Is_Final_Specialization (Base + 21, False);
   Internal_Set_Name
    (Base + 21,
     (False, League.Strings.To_Universal_String ("PackageImport")));

   Internal_Set_Body
    (Base + 678,
     (False, League.Strings.To_Universal_String ("A package import is a relationship that allows the use of unqualified names to refer to package members from other namespaces.")));

   Internal_Set_Name
    (Base + 679,
     (False, League.Strings.To_Universal_String ("public_or_private")));

   Internal_Set_Body
    (Base + 680,
     (False, League.Strings.To_Universal_String ("The visibility of a PackageImport is either public or private.")));


   Internal_Set_Default
    (Base + 114,
     (False, League.Strings.To_Universal_String ("public")));
   Internal_Set_Is_Composite (Base + 114, False);
   Internal_Set_Is_Derived (Base + 114, False);
   Internal_Set_Is_Derived_Union (Base + 114, False);
   Internal_Set_Is_Leaf (Base + 114, False);
   Internal_Set_Is_Ordered (Base + 114, False);
   Internal_Set_Is_Read_Only (Base + 114, False);
   Internal_Set_Is_Unique (Base + 114, True);
   Internal_Set_Lower (Base + 114, (False, 1));
   Internal_Set_Name
    (Base + 114,
     (False, League.Strings.To_Universal_String ("visibility")));
   Internal_Set_Upper (Base + 114, (False, (False, 1)));

   Internal_Set_Body
    (Base + 682,
     (False, League.Strings.To_Universal_String ("Specifies the visibility of the imported PackageableElements within the importing Namespace, i.e., whether imported elements will in turn be visible to other packages that use that importingPackage as an importedPackage. If the PackageImport is public, the imported elements will be visible outside the package, while if it is private they will not.")));

   Internal_Set_Is_Composite (Base + 112, False);
   Internal_Set_Is_Derived (Base + 112, False);
   Internal_Set_Is_Derived_Union (Base + 112, False);
   Internal_Set_Is_Leaf (Base + 112, False);
   Internal_Set_Is_Ordered (Base + 112, False);
   Internal_Set_Is_Read_Only (Base + 112, False);
   Internal_Set_Is_Unique (Base + 112, True);
   Internal_Set_Lower (Base + 112, (False, 1));
   Internal_Set_Name
    (Base + 112,
     (False, League.Strings.To_Universal_String ("importedPackage")));
   Internal_Set_Upper (Base + 112, (False, (False, 1)));

   Internal_Set_Body
    (Base + 683,
     (False, League.Strings.To_Universal_String ("Specifies the Package whose members are imported into a Namespace.")));

   Internal_Set_Is_Composite (Base + 113, False);
   Internal_Set_Is_Derived (Base + 113, False);
   Internal_Set_Is_Derived_Union (Base + 113, False);
   Internal_Set_Is_Leaf (Base + 113, False);
   Internal_Set_Is_Ordered (Base + 113, False);
   Internal_Set_Is_Read_Only (Base + 113, False);
   Internal_Set_Is_Unique (Base + 113, True);
   Internal_Set_Lower (Base + 113, (False, 1));
   Internal_Set_Name
    (Base + 113,
     (False, League.Strings.To_Universal_String ("importingNamespace")));
   Internal_Set_Upper (Base + 113, (False, (False, 1)));

   Internal_Set_Body
    (Base + 684,
     (False, League.Strings.To_Universal_String ("Specifies the Namespace that imports the members from a Package.")));

   Internal_Set_Is_Abstract (Base + 22, False);
   Internal_Set_Is_Final_Specialization (Base + 22, False);
   Internal_Set_Name
    (Base + 22,
     (False, League.Strings.To_Universal_String ("PackageMerge")));

   Internal_Set_Body
    (Base + 685,
     (False, League.Strings.To_Universal_String ("A package merge defines how the contents of one package are extended by the contents of another package.")));

   Internal_Set_Is_Composite (Base + 116, False);
   Internal_Set_Is_Derived (Base + 116, False);
   Internal_Set_Is_Derived_Union (Base + 116, False);
   Internal_Set_Is_Leaf (Base + 116, False);
   Internal_Set_Is_Ordered (Base + 116, False);
   Internal_Set_Is_Read_Only (Base + 116, False);
   Internal_Set_Is_Unique (Base + 116, True);
   Internal_Set_Lower (Base + 116, (False, 1));
   Internal_Set_Name
    (Base + 116,
     (False, League.Strings.To_Universal_String ("receivingPackage")));
   Internal_Set_Upper (Base + 116, (False, (False, 1)));

   Internal_Set_Body
    (Base + 686,
     (False, League.Strings.To_Universal_String ("References the Package that is being extended with the contents of the merged package of the PackageMerge.")));

   Internal_Set_Is_Composite (Base + 115, False);
   Internal_Set_Is_Derived (Base + 115, False);
   Internal_Set_Is_Derived_Union (Base + 115, False);
   Internal_Set_Is_Leaf (Base + 115, False);
   Internal_Set_Is_Ordered (Base + 115, False);
   Internal_Set_Is_Read_Only (Base + 115, False);
   Internal_Set_Is_Unique (Base + 115, True);
   Internal_Set_Lower (Base + 115, (False, 1));
   Internal_Set_Name
    (Base + 115,
     (False, League.Strings.To_Universal_String ("mergedPackage")));
   Internal_Set_Upper (Base + 115, (False, (False, 1)));

   Internal_Set_Body
    (Base + 687,
     (False, League.Strings.To_Universal_String ("References the Package that is to be merged with the receiving package of the PackageMerge.")));

   Internal_Set_Is_Abstract (Base + 31, True);
   Internal_Set_Is_Final_Specialization (Base + 31, False);
   Internal_Set_Name
    (Base + 31,
     (False, League.Strings.To_Universal_String ("Type")));

   Internal_Set_Body
    (Base + 688,
     (False, League.Strings.To_Universal_String ("A type is a named element that is used as the type for a typed element. A type can be contained in a package.")));

   Internal_Set_Is_Composite (Base + 134, False);
   Internal_Set_Is_Derived (Base + 134, False);
   Internal_Set_Is_Derived_Union (Base + 134, False);
   Internal_Set_Is_Leaf (Base + 134, False);
   Internal_Set_Is_Ordered (Base + 134, False);
   Internal_Set_Is_Read_Only (Base + 134, False);
   Internal_Set_Is_Unique (Base + 134, True);
   Internal_Set_Lower (Base + 134, (False, 0));
   Internal_Set_Name
    (Base + 134,
     (False, League.Strings.To_Universal_String ("package")));
   Internal_Set_Upper (Base + 134, (False, (False, 1)));

   Internal_Set_Body
    (Base + 689,
     (False, League.Strings.To_Universal_String ("Specifies the owning package of this classifier, if any.")));

   Internal_Set_Is_Leaf (Base + 690, False);
   Internal_Set_Is_Ordered (Base + 690, False);
   Internal_Set_Is_Query (Base + 690, True);
   Internal_Set_Is_Unique (Base + 690, True);
   Internal_Set_Lower (Base + 690, (False, 1));
   Internal_Set_Name
    (Base + 690,
     (False, League.Strings.To_Universal_String ("conformsTo")));
   Internal_Set_Upper (Base + 690, (False, (False, 1)));

   Internal_Set_Body
    (Base + 691,
     (False, League.Strings.To_Universal_String ("The query conformsTo() gives true for a type that conforms to another. By default, two types do not conform to each other. This query is intended to be redefined for specific conformance situations.")));

   Internal_Set_Name
    (Base + 692,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (694, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 694, False);
   Internal_Set_Is_Unique (Base + 694, True);
   Internal_Set_Lower (Base + 694, (False, 1));
   Internal_Set_Upper (Base + 694, (False, (False, 1)));

   Internal_Set_Direction (695, In_Parameter);
   Internal_Set_Is_Ordered (Base + 695, False);
   Internal_Set_Is_Unique (Base + 695, True);
   Internal_Set_Lower (Base + 695, (False, 1));
   Internal_Set_Name
    (Base + 695,
     (False, League.Strings.To_Universal_String ("other")));
   Internal_Set_Upper (Base + 695, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 16, True);
   Internal_Set_Is_Final_Specialization (Base + 16, False);
   Internal_Set_Name
    (Base + 16,
     (False, League.Strings.To_Universal_String ("NamedElement")));

   Internal_Set_Body
    (Base + 696,
     (False, League.Strings.To_Universal_String ("A named element is an element in a model that may have a name.")));

   Internal_Set_Name
    (Base + 697,
     (False, League.Strings.To_Universal_String ("has_no_qualified_name")));

   Internal_Set_Body
    (Base + 698,
     (False, League.Strings.To_Universal_String ("If there is no name, or one of the containing namespaces has no name, there is no qualified name.")));


   Internal_Set_Name
    (Base + 700,
     (False, League.Strings.To_Universal_String ("has_qualified_name")));

   Internal_Set_Body
    (Base + 701,
     (False, League.Strings.To_Universal_String ("When there is a name, and all of the containing namespaces have a name, the qualified name is constructed from the names of the containing namespaces.")));


   Internal_Set_Name
    (Base + 703,
     (False, League.Strings.To_Universal_String ("visibility_needs_ownership")));

   Internal_Set_Body
    (Base + 704,
     (False, League.Strings.To_Universal_String ("If a NamedElement is not owned by a Namespace, it does not have a visibility.")));


   Internal_Set_Is_Composite (Base + 95, False);
   Internal_Set_Is_Derived (Base + 95, False);
   Internal_Set_Is_Derived_Union (Base + 95, False);
   Internal_Set_Is_Leaf (Base + 95, False);
   Internal_Set_Is_Ordered (Base + 95, False);
   Internal_Set_Is_Read_Only (Base + 95, False);
   Internal_Set_Is_Unique (Base + 95, True);
   Internal_Set_Lower (Base + 95, (False, 0));
   Internal_Set_Name
    (Base + 95,
     (False, League.Strings.To_Universal_String ("name")));
   Internal_Set_Upper (Base + 95, (False, (False, 1)));

   Internal_Set_Body
    (Base + 706,
     (False, League.Strings.To_Universal_String ("The name of the NamedElement.")));

   Internal_Set_Is_Composite (Base + 98, False);
   Internal_Set_Is_Derived (Base + 98, False);
   Internal_Set_Is_Derived_Union (Base + 98, False);
   Internal_Set_Is_Leaf (Base + 98, False);
   Internal_Set_Is_Ordered (Base + 98, False);
   Internal_Set_Is_Read_Only (Base + 98, False);
   Internal_Set_Is_Unique (Base + 98, True);
   Internal_Set_Lower (Base + 98, (False, 0));
   Internal_Set_Name
    (Base + 98,
     (False, League.Strings.To_Universal_String ("visibility")));
   Internal_Set_Upper (Base + 98, (False, (False, 1)));

   Internal_Set_Body
    (Base + 707,
     (False, League.Strings.To_Universal_String ("Determines where the NamedElement appears within different Namespaces within the overall model, and its accessibility.")));

   Internal_Set_Is_Composite (Base + 96, False);
   Internal_Set_Is_Derived (Base + 96, True);
   Internal_Set_Is_Derived_Union (Base + 96, True);
   Internal_Set_Is_Leaf (Base + 96, False);
   Internal_Set_Is_Ordered (Base + 96, False);
   Internal_Set_Is_Read_Only (Base + 96, True);
   Internal_Set_Is_Unique (Base + 96, True);
   Internal_Set_Lower (Base + 96, (False, 0));
   Internal_Set_Name
    (Base + 96,
     (False, League.Strings.To_Universal_String ("namespace")));
   Internal_Set_Upper (Base + 96, (False, (False, 1)));

   Internal_Set_Body
    (Base + 708,
     (False, League.Strings.To_Universal_String ("Specifies the namespace that owns the NamedElement.")));

   Internal_Set_Is_Composite (Base + 97, False);
   Internal_Set_Is_Derived (Base + 97, True);
   Internal_Set_Is_Derived_Union (Base + 97, False);
   Internal_Set_Is_Leaf (Base + 97, False);
   Internal_Set_Is_Ordered (Base + 97, False);
   Internal_Set_Is_Read_Only (Base + 97, True);
   Internal_Set_Is_Unique (Base + 97, True);
   Internal_Set_Lower (Base + 97, (False, 0));
   Internal_Set_Name
    (Base + 97,
     (False, League.Strings.To_Universal_String ("qualifiedName")));
   Internal_Set_Upper (Base + 97, (False, (False, 1)));

   Internal_Set_Body
    (Base + 709,
     (False, League.Strings.To_Universal_String ("A name which allows the NamedElement to be identified within a hierarchy of nested Namespaces. It is constructed from the names of the containing namespaces starting at the root of the hierarchy and ending with the name of the NamedElement itself.")));

   Internal_Set_Is_Leaf (Base + 710, False);
   Internal_Set_Is_Ordered (Base + 710, False);
   Internal_Set_Is_Query (Base + 710, True);
   Internal_Set_Is_Unique (Base + 710, True);
   Internal_Set_Lower (Base + 710, (False, 1));
   Internal_Set_Name
    (Base + 710,
     (False, League.Strings.To_Universal_String ("allNamespaces")));
   Internal_Set_Upper (Base + 710, (False, (False, 1)));

   Internal_Set_Body
    (Base + 711,
     (False, League.Strings.To_Universal_String ("The query allNamespaces() gives the sequence of namespaces in which the NamedElement is nested, working outwards.")));

   Internal_Set_Name
    (Base + 712,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (714, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 714, True);
   Internal_Set_Is_Unique (Base + 714, True);
   Internal_Set_Lower (Base + 714, (False, 0));
   Internal_Set_Upper (Base + 714, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (Base + 715, False);
   Internal_Set_Is_Ordered (Base + 715, False);
   Internal_Set_Is_Query (Base + 715, True);
   Internal_Set_Is_Unique (Base + 715, True);
   Internal_Set_Lower (Base + 715, (False, 1));
   Internal_Set_Name
    (Base + 715,
     (False, League.Strings.To_Universal_String ("isDistinguishableFrom")));
   Internal_Set_Upper (Base + 715, (False, (False, 1)));

   Internal_Set_Body
    (Base + 716,
     (False, League.Strings.To_Universal_String ("The query isDistinguishableFrom() determines whether two NamedElements may logically co-exist within a Namespace. By default, two named elements are distinguishable if (a) they have unrelated types or (b) they have related types but different names.")));

   Internal_Set_Name
    (Base + 717,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (719, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 719, False);
   Internal_Set_Is_Unique (Base + 719, True);
   Internal_Set_Lower (Base + 719, (False, 1));
   Internal_Set_Upper (Base + 719, (False, (False, 1)));

   Internal_Set_Direction (720, In_Parameter);
   Internal_Set_Is_Ordered (Base + 720, False);
   Internal_Set_Is_Unique (Base + 720, True);
   Internal_Set_Lower (Base + 720, (False, 1));
   Internal_Set_Name
    (Base + 720,
     (False, League.Strings.To_Universal_String ("n")));
   Internal_Set_Upper (Base + 720, (False, (False, 1)));

   Internal_Set_Direction (721, In_Parameter);
   Internal_Set_Is_Ordered (Base + 721, False);
   Internal_Set_Is_Unique (Base + 721, True);
   Internal_Set_Lower (Base + 721, (False, 1));
   Internal_Set_Name
    (Base + 721,
     (False, League.Strings.To_Universal_String ("ns")));
   Internal_Set_Upper (Base + 721, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 722, False);
   Internal_Set_Is_Ordered (Base + 722, False);
   Internal_Set_Is_Query (Base + 722, True);
   Internal_Set_Is_Unique (Base + 722, True);
   Internal_Set_Lower (Base + 722, (False, 1));
   Internal_Set_Name
    (Base + 722,
     (False, League.Strings.To_Universal_String ("separator")));
   Internal_Set_Upper (Base + 722, (False, (False, 1)));

   Internal_Set_Body
    (Base + 723,
     (False, League.Strings.To_Universal_String ("The query separator() gives the string that is used to separate names when constructing a qualified name.")));

   Internal_Set_Name
    (Base + 724,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (726, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 726, False);
   Internal_Set_Is_Unique (Base + 726, True);
   Internal_Set_Lower (Base + 726, (False, 1));
   Internal_Set_Upper (Base + 726, (False, (False, 1)));

   Internal_Set_Is_Leaf (Base + 727, False);
   Internal_Set_Is_Ordered (Base + 727, False);
   Internal_Set_Is_Query (Base + 727, True);
   Internal_Set_Is_Unique (Base + 727, True);
   Internal_Set_Lower (Base + 727, (False, 1));
   Internal_Set_Name
    (Base + 727,
     (False, League.Strings.To_Universal_String ("qualifiedName")));
   Internal_Set_Upper (Base + 727, (False, (False, 1)));

   Internal_Set_Body
    (Base + 728,
     (False, League.Strings.To_Universal_String ("When there is a name, and all of the containing namespaces have a name, the qualified name is constructed from the names of the containing namespaces.")));

   Internal_Set_Name
    (Base + 729,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (731, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 731, False);
   Internal_Set_Is_Unique (Base + 731, True);
   Internal_Set_Lower (Base + 731, (False, 1));
   Internal_Set_Upper (Base + 731, (False, (False, 1)));

   Internal_Set_Is_Abstract (Base + 13, False);
   Internal_Set_Is_Final_Specialization (Base + 13, False);
   Internal_Set_Name
    (Base + 13,
     (False, League.Strings.To_Universal_String ("Expression")));

   Internal_Set_Body
    (Base + 732,
     (False, League.Strings.To_Universal_String ("An expression is a structured tree of symbols that denotes a (possibly empty) set of values when evaluated in a context.")));

   Internal_Set_Is_Composite (Base + 56, True);
   Internal_Set_Is_Derived (Base + 56, False);
   Internal_Set_Is_Derived_Union (Base + 56, False);
   Internal_Set_Is_Leaf (Base + 56, False);
   Internal_Set_Is_Ordered (Base + 56, True);
   Internal_Set_Is_Read_Only (Base + 56, False);
   Internal_Set_Is_Unique (Base + 56, True);
   Internal_Set_Lower (Base + 56, (False, 0));
   Internal_Set_Name
    (Base + 56,
     (False, League.Strings.To_Universal_String ("operand")));
   Internal_Set_Upper (Base + 56, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 733,
     (False, League.Strings.To_Universal_String ("Specifies a sequence of operands.")));

   Internal_Set_Is_Abstract (Base + 5, False);
   Internal_Set_Is_Final_Specialization (Base + 5, False);
   Internal_Set_Name
    (Base + 5,
     (False, League.Strings.To_Universal_String ("Comment")));

   Internal_Set_Body
    (Base + 734,
     (False, League.Strings.To_Universal_String ("A comment is a textual annotation that can be attached to a set of elements.")));

   Internal_Set_Is_Composite (Base + 82, False);
   Internal_Set_Is_Derived (Base + 82, False);
   Internal_Set_Is_Derived_Union (Base + 82, False);
   Internal_Set_Is_Leaf (Base + 82, False);
   Internal_Set_Is_Ordered (Base + 82, False);
   Internal_Set_Is_Read_Only (Base + 82, False);
   Internal_Set_Is_Unique (Base + 82, True);
   Internal_Set_Lower (Base + 82, (False, 0));
   Internal_Set_Name
    (Base + 82,
     (False, League.Strings.To_Universal_String ("body")));
   Internal_Set_Upper (Base + 82, (False, (False, 1)));

   Internal_Set_Body
    (Base + 735,
     (False, League.Strings.To_Universal_String ("Specifies a string that is the comment.")));

   Internal_Set_Is_Composite (Base + 47, False);
   Internal_Set_Is_Derived (Base + 47, False);
   Internal_Set_Is_Derived_Union (Base + 47, False);
   Internal_Set_Is_Leaf (Base + 47, False);
   Internal_Set_Is_Ordered (Base + 47, False);
   Internal_Set_Is_Read_Only (Base + 47, False);
   Internal_Set_Is_Unique (Base + 47, True);
   Internal_Set_Lower (Base + 47, (False, 0));
   Internal_Set_Name
    (Base + 47,
     (False, League.Strings.To_Universal_String ("annotatedElement")));
   Internal_Set_Upper (Base + 47, (False, (Unlimited => True)));

   Internal_Set_Body
    (Base + 736,
     (False, League.Strings.To_Universal_String ("References the Element(s) being commented.")));

   Internal_Set_Is_Final_Specialization (Base + 737, False);
   Internal_Set_Name
    (Base + 737,
     (False, League.Strings.To_Universal_String ("ParameterDirectionKind")));

   Internal_Set_Body
    (Base + 738,
     (False, League.Strings.To_Universal_String ("Parameter direction kind is an enumeration type that defines literals used to specify direction of parameters.")));

   Internal_Set_Name
    (Base + 739,
     (False, League.Strings.To_Universal_String ("in")));

   Internal_Set_Body
    (Base + 740,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed into the behavioral element by the caller.")));

   Internal_Set_Name
    (Base + 741,
     (False, League.Strings.To_Universal_String ("inout")));

   Internal_Set_Body
    (Base + 742,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed into a behavioral element by the caller and then back out to the caller from the behavioral element.")));

   Internal_Set_Name
    (Base + 743,
     (False, League.Strings.To_Universal_String ("out")));

   Internal_Set_Body
    (Base + 744,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed from a behavioral element out to the caller.")));

   Internal_Set_Name
    (Base + 745,
     (False, League.Strings.To_Universal_String ("return")));

   Internal_Set_Body
    (Base + 746,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed as return values from a behavioral element back to the caller.")));

   Internal_Set_Is_Final_Specialization (Base + 747, False);
   Internal_Set_Name
    (Base + 747,
     (False, League.Strings.To_Universal_String ("VisibilityKind")));

   Internal_Set_Body
    (Base + 748,
     (False, League.Strings.To_Universal_String ("VisibilityKind is an enumeration type that defines literals to determine the visibility of elements in a model.")));

   Internal_Set_Is_Leaf (Base + 749, False);
   Internal_Set_Is_Ordered (Base + 749, False);
   Internal_Set_Is_Query (Base + 749, True);
   Internal_Set_Is_Unique (Base + 749, True);
   Internal_Set_Lower (Base + 749, (False, 1));
   Internal_Set_Name
    (Base + 749,
     (False, League.Strings.To_Universal_String ("bestVisibility")));
   Internal_Set_Upper (Base + 749, (False, (False, 1)));

   Internal_Set_Body
    (Base + 750,
     (False, League.Strings.To_Universal_String ("The query bestVisibility() examines a set of VisibilityKinds, and returns public as the preferred visibility.")));

   Internal_Set_Name
    (Base + 751,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (753, Return_Parameter);
   Internal_Set_Is_Ordered (Base + 753, False);
   Internal_Set_Is_Unique (Base + 753, True);
   Internal_Set_Lower (Base + 753, (False, 1));
   Internal_Set_Upper (Base + 753, (False, (False, 1)));

   Internal_Set_Direction (754, In_Parameter);
   Internal_Set_Is_Ordered (Base + 754, False);
   Internal_Set_Is_Unique (Base + 754, True);
   Internal_Set_Lower (Base + 754, (False, 0));
   Internal_Set_Name
    (Base + 754,
     (False, League.Strings.To_Universal_String ("vis")));
   Internal_Set_Upper (Base + 754, (False, (Unlimited => True)));

   Internal_Set_Name
    (Base + 755,
     (False, League.Strings.To_Universal_String ("public")));

   Internal_Set_Body
    (Base + 756,
     (False, League.Strings.To_Universal_String ("A public element is visible to all elements that can access the contents of the namespace that owns it.")));

   Internal_Set_Name
    (Base + 757,
     (False, League.Strings.To_Universal_String ("private")));

   Internal_Set_Body
    (Base + 758,
     (False, League.Strings.To_Universal_String ("A private element is only visible inside the namespace that owns it.")));

   Internal_Set_Name
    (Base + 759,
     (False, League.Strings.To_Universal_String ("protected")));

   Internal_Set_Body
    (Base + 760,
     (False, League.Strings.To_Universal_String ("A protected element is visible to elements that have a generalization relationship to the namespace that owns it.")));

   Internal_Set_Name
    (Base + 761,
     (False, League.Strings.To_Universal_String ("package")));

   Internal_Set_Body
    (Base + 762,
     (False, League.Strings.To_Universal_String ("A package element is owned by a namespace that is not a package, and is visible to elements that are in the same package as its owning namespace. Only named elements that are not owned by packages can be marked as having package visibility.  Any element marked as having package visibility is visible to all elements within the nearest enclosing package (given that other owning elements have proper visibility).  Outside the nearest enclosing package, an element marked as having package visibility is not visible.")));

   Internal_Set_Is_Derived (Base + 153, False);
   Internal_Set_Is_Final_Specialization (Base + 153, False);
   Internal_Set_Name
    (Base + 153,
     (False, League.Strings.To_Universal_String ("A_type_typedElement")));

   Internal_Set_Is_Composite (Base + 763, False);
   Internal_Set_Is_Derived (Base + 763, False);
   Internal_Set_Is_Derived_Union (Base + 763, False);
   Internal_Set_Is_Leaf (Base + 763, False);
   Internal_Set_Is_Ordered (Base + 763, False);
   Internal_Set_Is_Read_Only (Base + 763, False);
   Internal_Set_Is_Unique (Base + 763, True);
   Internal_Set_Lower (Base + 763, (False, 0));
   Internal_Set_Name
    (Base + 763,
     (False, League.Strings.To_Universal_String ("typedElement")));
   Internal_Set_Upper (Base + 763, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 155, False);
   Internal_Set_Is_Final_Specialization (Base + 155, False);
   Internal_Set_Name
    (Base + 155,
     (False, League.Strings.To_Universal_String ("A_ownedAttribute_class")));

   Internal_Set_Is_Derived (Base + 156, False);
   Internal_Set_Is_Final_Specialization (Base + 156, False);
   Internal_Set_Name
    (Base + 156,
     (False, League.Strings.To_Universal_String ("A_ownedOperation_class")));

   Internal_Set_Is_Derived (Base + 158, False);
   Internal_Set_Is_Final_Specialization (Base + 158, False);
   Internal_Set_Name
    (Base + 158,
     (False, League.Strings.To_Universal_String ("A_ownedEnd_owningAssociation")));

   Internal_Set_Is_Derived (Base + 159, False);
   Internal_Set_Is_Final_Specialization (Base + 159, False);
   Internal_Set_Name
    (Base + 159,
     (False, League.Strings.To_Universal_String ("A_attribute_classifier")));

   Internal_Set_Is_Composite (Base + 764, False);
   Internal_Set_Is_Derived (Base + 764, False);
   Internal_Set_Is_Derived_Union (Base + 764, False);
   Internal_Set_Is_Leaf (Base + 764, False);
   Internal_Set_Is_Ordered (Base + 764, False);
   Internal_Set_Is_Read_Only (Base + 764, False);
   Internal_Set_Is_Unique (Base + 764, True);
   Internal_Set_Lower (Base + 764, (False, 0));
   Internal_Set_Name
    (Base + 764,
     (False, League.Strings.To_Universal_String ("classifier")));
   Internal_Set_Upper (Base + 764, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 162, False);
   Internal_Set_Is_Final_Specialization (Base + 162, False);
   Internal_Set_Name
    (Base + 162,
     (False, League.Strings.To_Universal_String ("A_redefinedProperty_property")));

   Internal_Set_Is_Composite (Base + 765, False);
   Internal_Set_Is_Derived (Base + 765, False);
   Internal_Set_Is_Derived_Union (Base + 765, False);
   Internal_Set_Is_Leaf (Base + 765, False);
   Internal_Set_Is_Ordered (Base + 765, False);
   Internal_Set_Is_Read_Only (Base + 765, False);
   Internal_Set_Is_Unique (Base + 765, True);
   Internal_Set_Lower (Base + 765, (False, 0));
   Internal_Set_Name
    (Base + 765,
     (False, League.Strings.To_Universal_String ("property")));
   Internal_Set_Upper (Base + 765, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 164, False);
   Internal_Set_Is_Final_Specialization (Base + 164, False);
   Internal_Set_Name
    (Base + 164,
     (False, League.Strings.To_Universal_String ("A_subsettedProperty_property")));

   Internal_Set_Is_Composite (Base + 766, False);
   Internal_Set_Is_Derived (Base + 766, False);
   Internal_Set_Is_Derived_Union (Base + 766, False);
   Internal_Set_Is_Leaf (Base + 766, False);
   Internal_Set_Is_Ordered (Base + 766, False);
   Internal_Set_Is_Read_Only (Base + 766, False);
   Internal_Set_Is_Unique (Base + 766, True);
   Internal_Set_Lower (Base + 766, (False, 0));
   Internal_Set_Name
    (Base + 766,
     (False, League.Strings.To_Universal_String ("property")));
   Internal_Set_Upper (Base + 766, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 166, False);
   Internal_Set_Is_Final_Specialization (Base + 166, False);
   Internal_Set_Name
    (Base + 166,
     (False, League.Strings.To_Universal_String ("A_opposite_property")));

   Internal_Set_Is_Composite (Base + 767, False);
   Internal_Set_Is_Derived (Base + 767, False);
   Internal_Set_Is_Derived_Union (Base + 767, False);
   Internal_Set_Is_Leaf (Base + 767, False);
   Internal_Set_Is_Ordered (Base + 767, False);
   Internal_Set_Is_Read_Only (Base + 767, False);
   Internal_Set_Is_Unique (Base + 767, True);
   Internal_Set_Lower (Base + 767, (False, 0));
   Internal_Set_Name
    (Base + 767,
     (False, League.Strings.To_Universal_String ("property")));
   Internal_Set_Upper (Base + 767, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 168, False);
   Internal_Set_Is_Final_Specialization (Base + 168, False);
   Internal_Set_Name
    (Base + 168,
     (False, League.Strings.To_Universal_String ("A_superClass_class")));

   Internal_Set_Is_Composite (Base + 768, False);
   Internal_Set_Is_Derived (Base + 768, False);
   Internal_Set_Is_Derived_Union (Base + 768, False);
   Internal_Set_Is_Leaf (Base + 768, False);
   Internal_Set_Is_Ordered (Base + 768, False);
   Internal_Set_Is_Read_Only (Base + 768, False);
   Internal_Set_Is_Unique (Base + 768, True);
   Internal_Set_Lower (Base + 768, (False, 0));
   Internal_Set_Name
    (Base + 768,
     (False, League.Strings.To_Universal_String ("class")));
   Internal_Set_Upper (Base + 768, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 170, False);
   Internal_Set_Is_Final_Specialization (Base + 170, False);
   Internal_Set_Name
    (Base + 170,
     (False, League.Strings.To_Universal_String ("A_endType_association")));

   Internal_Set_Is_Composite (Base + 769, False);
   Internal_Set_Is_Derived (Base + 769, False);
   Internal_Set_Is_Derived_Union (Base + 769, False);
   Internal_Set_Is_Leaf (Base + 769, False);
   Internal_Set_Is_Ordered (Base + 769, False);
   Internal_Set_Is_Read_Only (Base + 769, False);
   Internal_Set_Is_Unique (Base + 769, True);
   Internal_Set_Lower (Base + 769, (False, 0));
   Internal_Set_Name
    (Base + 769,
     (False, League.Strings.To_Universal_String ("association")));
   Internal_Set_Upper (Base + 769, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 172, False);
   Internal_Set_Is_Final_Specialization (Base + 172, False);
   Internal_Set_Name
    (Base + 172,
     (False, League.Strings.To_Universal_String ("A_ownedLiteral_enumeration")));

   Internal_Set_Is_Derived (Base + 174, False);
   Internal_Set_Is_Final_Specialization (Base + 174, False);
   Internal_Set_Name
    (Base + 174,
     (False, League.Strings.To_Universal_String ("A_ownedAttribute_datatype")));

   Internal_Set_Is_Derived (Base + 175, False);
   Internal_Set_Is_Final_Specialization (Base + 175, False);
   Internal_Set_Name
    (Base + 175,
     (False, League.Strings.To_Universal_String ("A_ownedOperation_datatype")));

   Internal_Set_Is_Derived (Base + 177, False);
   Internal_Set_Is_Final_Specialization (Base + 177, False);
   Internal_Set_Name
    (Base + 177,
     (False, League.Strings.To_Universal_String ("A_raisedException_operation")));

   Internal_Set_Is_Composite (Base + 770, False);
   Internal_Set_Is_Derived (Base + 770, False);
   Internal_Set_Is_Derived_Union (Base + 770, False);
   Internal_Set_Is_Leaf (Base + 770, False);
   Internal_Set_Is_Ordered (Base + 770, False);
   Internal_Set_Is_Read_Only (Base + 770, False);
   Internal_Set_Is_Unique (Base + 770, True);
   Internal_Set_Lower (Base + 770, (False, 0));
   Internal_Set_Name
    (Base + 770,
     (False, League.Strings.To_Universal_String ("operation")));
   Internal_Set_Upper (Base + 770, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 179, False);
   Internal_Set_Is_Final_Specialization (Base + 179, False);
   Internal_Set_Name
    (Base + 179,
     (False, League.Strings.To_Universal_String ("A_redefinedOperation_operation")));

   Internal_Set_Is_Composite (Base + 771, False);
   Internal_Set_Is_Derived (Base + 771, False);
   Internal_Set_Is_Derived_Union (Base + 771, False);
   Internal_Set_Is_Leaf (Base + 771, False);
   Internal_Set_Is_Ordered (Base + 771, False);
   Internal_Set_Is_Read_Only (Base + 771, False);
   Internal_Set_Is_Unique (Base + 771, True);
   Internal_Set_Lower (Base + 771, (False, 0));
   Internal_Set_Name
    (Base + 771,
     (False, League.Strings.To_Universal_String ("operation")));
   Internal_Set_Upper (Base + 771, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 181, False);
   Internal_Set_Is_Final_Specialization (Base + 181, False);
   Internal_Set_Name
    (Base + 181,
     (False, League.Strings.To_Universal_String ("A_ownedParameter_ownerFormalParam")));

   Internal_Set_Is_Composite (Base + 772, False);
   Internal_Set_Is_Derived (Base + 772, False);
   Internal_Set_Is_Derived_Union (Base + 772, False);
   Internal_Set_Is_Leaf (Base + 772, False);
   Internal_Set_Is_Ordered (Base + 772, False);
   Internal_Set_Is_Read_Only (Base + 772, False);
   Internal_Set_Is_Unique (Base + 772, True);
   Internal_Set_Lower (Base + 772, (False, 0));
   Internal_Set_Name
    (Base + 772,
     (False, League.Strings.To_Universal_String ("ownerFormalParam")));
   Internal_Set_Upper (Base + 772, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 183, False);
   Internal_Set_Is_Final_Specialization (Base + 183, False);
   Internal_Set_Name
    (Base + 183,
     (False, League.Strings.To_Universal_String ("A_raisedException_behavioralFeature")));

   Internal_Set_Is_Composite (Base + 773, False);
   Internal_Set_Is_Derived (Base + 773, False);
   Internal_Set_Is_Derived_Union (Base + 773, False);
   Internal_Set_Is_Leaf (Base + 773, False);
   Internal_Set_Is_Ordered (Base + 773, False);
   Internal_Set_Is_Read_Only (Base + 773, False);
   Internal_Set_Is_Unique (Base + 773, True);
   Internal_Set_Lower (Base + 773, (False, 0));
   Internal_Set_Name
    (Base + 773,
     (False, League.Strings.To_Universal_String ("behavioralFeature")));
   Internal_Set_Upper (Base + 773, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 185, False);
   Internal_Set_Is_Final_Specialization (Base + 185, False);
   Internal_Set_Name
    (Base + 185,
     (False, League.Strings.To_Universal_String ("A_importedMember_namespace")));

   Internal_Set_Is_Composite (Base + 774, False);
   Internal_Set_Is_Derived (Base + 774, False);
   Internal_Set_Is_Derived_Union (Base + 774, False);
   Internal_Set_Is_Leaf (Base + 774, False);
   Internal_Set_Is_Ordered (Base + 774, False);
   Internal_Set_Is_Read_Only (Base + 774, False);
   Internal_Set_Is_Unique (Base + 774, True);
   Internal_Set_Lower (Base + 774, (False, 0));
   Internal_Set_Name
    (Base + 774,
     (False, League.Strings.To_Universal_String ("namespace")));
   Internal_Set_Upper (Base + 774, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 187, False);
   Internal_Set_Is_Final_Specialization (Base + 187, False);
   Internal_Set_Name
    (Base + 187,
     (False, League.Strings.To_Universal_String ("A_importedPackage_packageImport")));

   Internal_Set_Is_Composite (Base + 775, False);
   Internal_Set_Is_Derived (Base + 775, False);
   Internal_Set_Is_Derived_Union (Base + 775, False);
   Internal_Set_Is_Leaf (Base + 775, False);
   Internal_Set_Is_Ordered (Base + 775, False);
   Internal_Set_Is_Read_Only (Base + 775, False);
   Internal_Set_Is_Unique (Base + 775, True);
   Internal_Set_Lower (Base + 775, (False, 0));
   Internal_Set_Name
    (Base + 775,
     (False, League.Strings.To_Universal_String ("packageImport")));
   Internal_Set_Upper (Base + 775, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 136, False);
   Internal_Set_Is_Final_Specialization (Base + 136, False);
   Internal_Set_Name
    (Base + 136,
     (False, League.Strings.To_Universal_String ("A_importedElement_elementImport")));

   Internal_Set_Is_Composite (Base + 776, False);
   Internal_Set_Is_Derived (Base + 776, False);
   Internal_Set_Is_Derived_Union (Base + 776, False);
   Internal_Set_Is_Leaf (Base + 776, False);
   Internal_Set_Is_Ordered (Base + 776, False);
   Internal_Set_Is_Read_Only (Base + 776, False);
   Internal_Set_Is_Unique (Base + 776, True);
   Internal_Set_Lower (Base + 776, (False, 0));
   Internal_Set_Name
    (Base + 776,
     (False, League.Strings.To_Universal_String ("elementImport")));
   Internal_Set_Upper (Base + 776, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 137, False);
   Internal_Set_Is_Final_Specialization (Base + 137, False);
   Internal_Set_Name
    (Base + 137,
     (False, League.Strings.To_Universal_String ("A_elementImport_importingNamespace")));

   Internal_Set_Is_Derived (Base + 138, False);
   Internal_Set_Is_Final_Specialization (Base + 138, False);
   Internal_Set_Name
    (Base + 138,
     (False, League.Strings.To_Universal_String ("A_packageImport_importingNamespace")));

   Internal_Set_Is_Derived (Base + 139, False);
   Internal_Set_Is_Final_Specialization (Base + 139, False);
   Internal_Set_Name
    (Base + 139,
     (False, League.Strings.To_Universal_String ("A_packagedElement_owningPackage")));

   Internal_Set_Is_Composite (Base + 777, False);
   Internal_Set_Is_Derived (Base + 777, False);
   Internal_Set_Is_Derived_Union (Base + 777, False);
   Internal_Set_Is_Leaf (Base + 777, False);
   Internal_Set_Is_Ordered (Base + 777, False);
   Internal_Set_Is_Read_Only (Base + 777, False);
   Internal_Set_Is_Unique (Base + 777, True);
   Internal_Set_Lower (Base + 777, (False, 0));
   Internal_Set_Name
    (Base + 777,
     (False, League.Strings.To_Universal_String ("owningPackage")));
   Internal_Set_Upper (Base + 777, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 141, False);
   Internal_Set_Is_Final_Specialization (Base + 141, False);
   Internal_Set_Name
    (Base + 141,
     (False, League.Strings.To_Universal_String ("A_ownedType_package")));

   Internal_Set_Is_Derived (Base + 143, False);
   Internal_Set_Is_Final_Specialization (Base + 143, False);
   Internal_Set_Name
    (Base + 143,
     (False, League.Strings.To_Universal_String ("A_memberEnd_association")));

   Internal_Set_Is_Derived (Base + 144, False);
   Internal_Set_Is_Final_Specialization (Base + 144, False);
   Internal_Set_Name
    (Base + 144,
     (False, League.Strings.To_Universal_String ("A_nestedPackage_nestingPackage")));

   Internal_Set_Is_Derived (Base + 145, False);
   Internal_Set_Is_Final_Specialization (Base + 145, False);
   Internal_Set_Name
    (Base + 145,
     (False, League.Strings.To_Universal_String ("A_type_operation")));

   Internal_Set_Is_Composite (Base + 778, False);
   Internal_Set_Is_Derived (Base + 778, False);
   Internal_Set_Is_Derived_Union (Base + 778, False);
   Internal_Set_Is_Leaf (Base + 778, False);
   Internal_Set_Is_Ordered (Base + 778, False);
   Internal_Set_Is_Read_Only (Base + 778, False);
   Internal_Set_Is_Unique (Base + 778, True);
   Internal_Set_Lower (Base + 778, (False, 0));
   Internal_Set_Name
    (Base + 778,
     (False, League.Strings.To_Universal_String ("operation")));
   Internal_Set_Upper (Base + 778, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 146, False);
   Internal_Set_Is_Final_Specialization (Base + 146, False);
   Internal_Set_Name
    (Base + 146,
     (False, League.Strings.To_Universal_String ("A_packageMerge_receivingPackage")));

   Internal_Set_Is_Derived (Base + 147, False);
   Internal_Set_Is_Final_Specialization (Base + 147, False);
   Internal_Set_Name
    (Base + 147,
     (False, League.Strings.To_Universal_String ("A_mergedPackage_packageMerge")));

   Internal_Set_Is_Composite (Base + 779, False);
   Internal_Set_Is_Derived (Base + 779, False);
   Internal_Set_Is_Derived_Union (Base + 779, False);
   Internal_Set_Is_Leaf (Base + 779, False);
   Internal_Set_Is_Ordered (Base + 779, False);
   Internal_Set_Is_Read_Only (Base + 779, False);
   Internal_Set_Is_Unique (Base + 779, True);
   Internal_Set_Lower (Base + 779, (False, 0));
   Internal_Set_Name
    (Base + 779,
     (False, League.Strings.To_Universal_String ("packageMerge")));
   Internal_Set_Upper (Base + 779, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 148, False);
   Internal_Set_Is_Final_Specialization (Base + 148, False);
   Internal_Set_Name
    (Base + 148,
     (False, League.Strings.To_Universal_String ("A_ownedElement_owner")));

   Internal_Set_Is_Derived (Base + 149, False);
   Internal_Set_Is_Final_Specialization (Base + 149, False);
   Internal_Set_Name
    (Base + 149,
     (False, League.Strings.To_Universal_String ("A_annotatedElement_comment")));

   Internal_Set_Is_Composite (Base + 780, False);
   Internal_Set_Is_Derived (Base + 780, False);
   Internal_Set_Is_Derived_Union (Base + 780, False);
   Internal_Set_Is_Leaf (Base + 780, False);
   Internal_Set_Is_Ordered (Base + 780, False);
   Internal_Set_Is_Read_Only (Base + 780, False);
   Internal_Set_Is_Unique (Base + 780, True);
   Internal_Set_Lower (Base + 780, (False, 0));
   Internal_Set_Name
    (Base + 780,
     (False, League.Strings.To_Universal_String ("comment")));
   Internal_Set_Upper (Base + 780, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 150, False);
   Internal_Set_Is_Final_Specialization (Base + 150, False);
   Internal_Set_Name
    (Base + 150,
     (False, League.Strings.To_Universal_String ("A_relatedElement_relationship")));

   Internal_Set_Is_Composite (Base + 781, False);
   Internal_Set_Is_Derived (Base + 781, False);
   Internal_Set_Is_Derived_Union (Base + 781, False);
   Internal_Set_Is_Leaf (Base + 781, False);
   Internal_Set_Is_Ordered (Base + 781, False);
   Internal_Set_Is_Read_Only (Base + 781, False);
   Internal_Set_Is_Unique (Base + 781, True);
   Internal_Set_Lower (Base + 781, (False, 0));
   Internal_Set_Name
    (Base + 781,
     (False, League.Strings.To_Universal_String ("relationship")));
   Internal_Set_Upper (Base + 781, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 151, False);
   Internal_Set_Is_Final_Specialization (Base + 151, False);
   Internal_Set_Name
    (Base + 151,
     (False, League.Strings.To_Universal_String ("A_source_directedRelationship")));

   Internal_Set_Is_Composite (Base + 782, False);
   Internal_Set_Is_Derived (Base + 782, False);
   Internal_Set_Is_Derived_Union (Base + 782, False);
   Internal_Set_Is_Leaf (Base + 782, False);
   Internal_Set_Is_Ordered (Base + 782, False);
   Internal_Set_Is_Read_Only (Base + 782, False);
   Internal_Set_Is_Unique (Base + 782, True);
   Internal_Set_Lower (Base + 782, (False, 0));
   Internal_Set_Name
    (Base + 782,
     (False, League.Strings.To_Universal_String ("directedRelationship")));
   Internal_Set_Upper (Base + 782, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 152, False);
   Internal_Set_Is_Final_Specialization (Base + 152, False);
   Internal_Set_Name
    (Base + 152,
     (False, League.Strings.To_Universal_String ("A_target_directedRelationship")));

   Internal_Set_Is_Composite (Base + 783, False);
   Internal_Set_Is_Derived (Base + 783, False);
   Internal_Set_Is_Derived_Union (Base + 783, False);
   Internal_Set_Is_Leaf (Base + 783, False);
   Internal_Set_Is_Ordered (Base + 783, False);
   Internal_Set_Is_Read_Only (Base + 783, False);
   Internal_Set_Is_Unique (Base + 783, True);
   Internal_Set_Lower (Base + 783, (False, 0));
   Internal_Set_Name
    (Base + 783,
     (False, League.Strings.To_Universal_String ("directedRelationship")));
   Internal_Set_Upper (Base + 783, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 154, False);
   Internal_Set_Is_Final_Specialization (Base + 154, False);
   Internal_Set_Name
    (Base + 154,
     (False, League.Strings.To_Universal_String ("A_redefinitionContext_redefinableElement")));

   Internal_Set_Is_Composite (Base + 784, False);
   Internal_Set_Is_Derived (Base + 784, False);
   Internal_Set_Is_Derived_Union (Base + 784, False);
   Internal_Set_Is_Leaf (Base + 784, False);
   Internal_Set_Is_Ordered (Base + 784, False);
   Internal_Set_Is_Read_Only (Base + 784, False);
   Internal_Set_Is_Unique (Base + 784, True);
   Internal_Set_Lower (Base + 784, (False, 0));
   Internal_Set_Name
    (Base + 784,
     (False, League.Strings.To_Universal_String ("redefinableElement")));
   Internal_Set_Upper (Base + 784, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 157, False);
   Internal_Set_Is_Final_Specialization (Base + 157, False);
   Internal_Set_Name
    (Base + 157,
     (False, League.Strings.To_Universal_String ("A_redefinedElement_redefinableElement")));

   Internal_Set_Is_Composite (Base + 785, False);
   Internal_Set_Is_Derived (Base + 785, False);
   Internal_Set_Is_Derived_Union (Base + 785, False);
   Internal_Set_Is_Leaf (Base + 785, False);
   Internal_Set_Is_Ordered (Base + 785, False);
   Internal_Set_Is_Read_Only (Base + 785, False);
   Internal_Set_Is_Unique (Base + 785, True);
   Internal_Set_Lower (Base + 785, (False, 0));
   Internal_Set_Name
    (Base + 785,
     (False, League.Strings.To_Universal_String ("redefinableElement")));
   Internal_Set_Upper (Base + 785, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 160, False);
   Internal_Set_Is_Final_Specialization (Base + 160, False);
   Internal_Set_Name
    (Base + 160,
     (False, League.Strings.To_Universal_String ("A_feature_featuringClassifier")));

   Internal_Set_Is_Derived (Base + 161, False);
   Internal_Set_Is_Final_Specialization (Base + 161, False);
   Internal_Set_Name
    (Base + 161,
     (False, League.Strings.To_Universal_String ("A_constrainedElement_constraint")));

   Internal_Set_Is_Composite (Base + 786, False);
   Internal_Set_Is_Derived (Base + 786, False);
   Internal_Set_Is_Derived_Union (Base + 786, False);
   Internal_Set_Is_Leaf (Base + 786, False);
   Internal_Set_Is_Ordered (Base + 786, False);
   Internal_Set_Is_Read_Only (Base + 786, False);
   Internal_Set_Is_Unique (Base + 786, True);
   Internal_Set_Lower (Base + 786, (False, 0));
   Internal_Set_Name
    (Base + 786,
     (False, League.Strings.To_Universal_String ("constraint")));
   Internal_Set_Upper (Base + 786, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 163, False);
   Internal_Set_Is_Final_Specialization (Base + 163, False);
   Internal_Set_Name
    (Base + 163,
     (False, League.Strings.To_Universal_String ("A_specification_owningConstraint")));

   Internal_Set_Is_Composite (Base + 787, False);
   Internal_Set_Is_Derived (Base + 787, False);
   Internal_Set_Is_Derived_Union (Base + 787, False);
   Internal_Set_Is_Leaf (Base + 787, False);
   Internal_Set_Is_Ordered (Base + 787, False);
   Internal_Set_Is_Read_Only (Base + 787, False);
   Internal_Set_Is_Unique (Base + 787, True);
   Internal_Set_Lower (Base + 787, (False, 0));
   Internal_Set_Name
    (Base + 787,
     (False, League.Strings.To_Universal_String ("owningConstraint")));
   Internal_Set_Upper (Base + 787, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 165, False);
   Internal_Set_Is_Final_Specialization (Base + 165, False);
   Internal_Set_Name
    (Base + 165,
     (False, League.Strings.To_Universal_String ("A_general_classifier")));

   Internal_Set_Is_Composite (Base + 788, False);
   Internal_Set_Is_Derived (Base + 788, False);
   Internal_Set_Is_Derived_Union (Base + 788, False);
   Internal_Set_Is_Leaf (Base + 788, False);
   Internal_Set_Is_Ordered (Base + 788, False);
   Internal_Set_Is_Read_Only (Base + 788, False);
   Internal_Set_Is_Unique (Base + 788, True);
   Internal_Set_Lower (Base + 788, (False, 0));
   Internal_Set_Name
    (Base + 788,
     (False, League.Strings.To_Universal_String ("classifier")));
   Internal_Set_Upper (Base + 788, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 167, False);
   Internal_Set_Is_Final_Specialization (Base + 167, False);
   Internal_Set_Name
    (Base + 167,
     (False, League.Strings.To_Universal_String ("A_ownedMember_namespace")));

   Internal_Set_Is_Derived (Base + 169, False);
   Internal_Set_Is_Final_Specialization (Base + 169, False);
   Internal_Set_Name
    (Base + 169,
     (False, League.Strings.To_Universal_String ("A_member_namespace")));

   Internal_Set_Is_Composite (Base + 789, False);
   Internal_Set_Is_Derived (Base + 789, False);
   Internal_Set_Is_Derived_Union (Base + 789, False);
   Internal_Set_Is_Leaf (Base + 789, False);
   Internal_Set_Is_Ordered (Base + 789, False);
   Internal_Set_Is_Read_Only (Base + 789, False);
   Internal_Set_Is_Unique (Base + 789, True);
   Internal_Set_Lower (Base + 789, (False, 0));
   Internal_Set_Name
    (Base + 789,
     (False, League.Strings.To_Universal_String ("namespace")));
   Internal_Set_Upper (Base + 789, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 171, False);
   Internal_Set_Is_Final_Specialization (Base + 171, False);
   Internal_Set_Name
    (Base + 171,
     (False, League.Strings.To_Universal_String ("A_operand_expression")));

   Internal_Set_Is_Composite (Base + 790, False);
   Internal_Set_Is_Derived (Base + 790, False);
   Internal_Set_Is_Derived_Union (Base + 790, False);
   Internal_Set_Is_Leaf (Base + 790, False);
   Internal_Set_Is_Ordered (Base + 790, False);
   Internal_Set_Is_Read_Only (Base + 790, False);
   Internal_Set_Is_Unique (Base + 790, True);
   Internal_Set_Lower (Base + 790, (False, 0));
   Internal_Set_Name
    (Base + 790,
     (False, League.Strings.To_Universal_String ("expression")));
   Internal_Set_Upper (Base + 790, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 173, False);
   Internal_Set_Is_Final_Specialization (Base + 173, False);
   Internal_Set_Name
    (Base + 173,
     (False, League.Strings.To_Universal_String ("A_navigableOwnedEnd_association")));

   Internal_Set_Is_Composite (Base + 791, False);
   Internal_Set_Is_Derived (Base + 791, False);
   Internal_Set_Is_Derived_Union (Base + 791, False);
   Internal_Set_Is_Leaf (Base + 791, False);
   Internal_Set_Is_Ordered (Base + 791, False);
   Internal_Set_Is_Read_Only (Base + 791, False);
   Internal_Set_Is_Unique (Base + 791, True);
   Internal_Set_Lower (Base + 791, (False, 0));
   Internal_Set_Name
    (Base + 791,
     (False, League.Strings.To_Universal_String ("association")));
   Internal_Set_Upper (Base + 791, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 176, False);
   Internal_Set_Is_Final_Specialization (Base + 176, False);
   Internal_Set_Name
    (Base + 176,
     (False, League.Strings.To_Universal_String ("A_ownedParameter_operation")));

   Internal_Set_Is_Derived (Base + 178, False);
   Internal_Set_Is_Final_Specialization (Base + 178, False);
   Internal_Set_Name
    (Base + 178,
     (False, League.Strings.To_Universal_String ("A_ownedComment_owningElement")));

   Internal_Set_Is_Composite (Base + 792, False);
   Internal_Set_Is_Derived (Base + 792, False);
   Internal_Set_Is_Derived_Union (Base + 792, False);
   Internal_Set_Is_Leaf (Base + 792, False);
   Internal_Set_Is_Ordered (Base + 792, False);
   Internal_Set_Is_Read_Only (Base + 792, False);
   Internal_Set_Is_Unique (Base + 792, True);
   Internal_Set_Lower (Base + 792, (False, 0));
   Internal_Set_Name
    (Base + 792,
     (False, League.Strings.To_Universal_String ("owningElement")));
   Internal_Set_Upper (Base + 792, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 180, False);
   Internal_Set_Is_Final_Specialization (Base + 180, False);
   Internal_Set_Name
    (Base + 180,
     (False, League.Strings.To_Universal_String ("A_inheritedMember_classifier")));

   Internal_Set_Is_Composite (Base + 793, False);
   Internal_Set_Is_Derived (Base + 793, False);
   Internal_Set_Is_Derived_Union (Base + 793, False);
   Internal_Set_Is_Leaf (Base + 793, False);
   Internal_Set_Is_Ordered (Base + 793, False);
   Internal_Set_Is_Read_Only (Base + 793, False);
   Internal_Set_Is_Unique (Base + 793, True);
   Internal_Set_Lower (Base + 793, (False, 0));
   Internal_Set_Name
    (Base + 793,
     (False, League.Strings.To_Universal_String ("classifier")));
   Internal_Set_Upper (Base + 793, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (Base + 182, False);
   Internal_Set_Is_Final_Specialization (Base + 182, False);
   Internal_Set_Name
    (Base + 182,
     (False, League.Strings.To_Universal_String ("A_precondition_preContext")));

   Internal_Set_Is_Composite (Base + 794, False);
   Internal_Set_Is_Derived (Base + 794, False);
   Internal_Set_Is_Derived_Union (Base + 794, False);
   Internal_Set_Is_Leaf (Base + 794, False);
   Internal_Set_Is_Ordered (Base + 794, False);
   Internal_Set_Is_Read_Only (Base + 794, False);
   Internal_Set_Is_Unique (Base + 794, True);
   Internal_Set_Lower (Base + 794, (False, 0));
   Internal_Set_Name
    (Base + 794,
     (False, League.Strings.To_Universal_String ("preContext")));
   Internal_Set_Upper (Base + 794, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 184, False);
   Internal_Set_Is_Final_Specialization (Base + 184, False);
   Internal_Set_Name
    (Base + 184,
     (False, League.Strings.To_Universal_String ("A_postcondition_postContext")));

   Internal_Set_Is_Composite (Base + 795, False);
   Internal_Set_Is_Derived (Base + 795, False);
   Internal_Set_Is_Derived_Union (Base + 795, False);
   Internal_Set_Is_Leaf (Base + 795, False);
   Internal_Set_Is_Ordered (Base + 795, False);
   Internal_Set_Is_Read_Only (Base + 795, False);
   Internal_Set_Is_Unique (Base + 795, True);
   Internal_Set_Lower (Base + 795, (False, 0));
   Internal_Set_Name
    (Base + 795,
     (False, League.Strings.To_Universal_String ("postContext")));
   Internal_Set_Upper (Base + 795, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 186, False);
   Internal_Set_Is_Final_Specialization (Base + 186, False);
   Internal_Set_Name
    (Base + 186,
     (False, League.Strings.To_Universal_String ("A_bodyCondition_bodyContext")));

   Internal_Set_Is_Composite (Base + 796, False);
   Internal_Set_Is_Derived (Base + 796, False);
   Internal_Set_Is_Derived_Union (Base + 796, False);
   Internal_Set_Is_Leaf (Base + 796, False);
   Internal_Set_Is_Ordered (Base + 796, False);
   Internal_Set_Is_Read_Only (Base + 796, False);
   Internal_Set_Is_Unique (Base + 796, True);
   Internal_Set_Lower (Base + 796, (False, 0));
   Internal_Set_Name
    (Base + 796,
     (False, League.Strings.To_Universal_String ("bodyContext")));
   Internal_Set_Upper (Base + 796, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 188, False);
   Internal_Set_Is_Final_Specialization (Base + 188, False);
   Internal_Set_Name
    (Base + 188,
     (False, League.Strings.To_Universal_String ("A_ownedRule_context")));

   Internal_Set_Is_Abstract (Base + 30, False);
   Internal_Set_Is_Final_Specialization (Base + 30, False);
   Internal_Set_Name
    (Base + 30,
     (False, League.Strings.To_Universal_String ("Tag")));

   Internal_Set_Is_Composite (Base + 131, False);
   Internal_Set_Is_Derived (Base + 131, False);
   Internal_Set_Is_Derived_Union (Base + 131, False);
   Internal_Set_Is_Leaf (Base + 131, False);
   Internal_Set_Is_Ordered (Base + 131, False);
   Internal_Set_Is_Read_Only (Base + 131, False);
   Internal_Set_Is_Unique (Base + 131, True);
   Internal_Set_Lower (Base + 131, (False, 1));
   Internal_Set_Name
    (Base + 131,
     (False, League.Strings.To_Universal_String ("name")));
   Internal_Set_Upper (Base + 131, (False, (False, 1)));

   Internal_Set_Is_Composite (Base + 133, False);
   Internal_Set_Is_Derived (Base + 133, False);
   Internal_Set_Is_Derived_Union (Base + 133, False);
   Internal_Set_Is_Leaf (Base + 133, False);
   Internal_Set_Is_Ordered (Base + 133, False);
   Internal_Set_Is_Read_Only (Base + 133, False);
   Internal_Set_Is_Unique (Base + 133, True);
   Internal_Set_Lower (Base + 133, (False, 1));
   Internal_Set_Name
    (Base + 133,
     (False, League.Strings.To_Universal_String ("value")));
   Internal_Set_Upper (Base + 133, (False, (False, 1)));

   Internal_Set_Is_Composite (Base + 78, False);
   Internal_Set_Is_Derived (Base + 78, False);
   Internal_Set_Is_Derived_Union (Base + 78, False);
   Internal_Set_Is_Leaf (Base + 78, False);
   Internal_Set_Is_Ordered (Base + 78, False);
   Internal_Set_Is_Read_Only (Base + 78, False);
   Internal_Set_Is_Unique (Base + 78, True);
   Internal_Set_Lower (Base + 78, (False, 0));
   Internal_Set_Name
    (Base + 78,
     (False, League.Strings.To_Universal_String ("element")));
   Internal_Set_Upper (Base + 78, (False, (Unlimited => True)));

   Internal_Set_Is_Composite (Base + 132, False);
   Internal_Set_Is_Derived (Base + 132, False);
   Internal_Set_Is_Derived_Union (Base + 132, False);
   Internal_Set_Is_Leaf (Base + 132, False);
   Internal_Set_Is_Ordered (Base + 132, False);
   Internal_Set_Is_Read_Only (Base + 132, False);
   Internal_Set_Is_Unique (Base + 132, True);
   Internal_Set_Lower (Base + 132, (False, 0));
   Internal_Set_Name
    (Base + 132,
     (False, League.Strings.To_Universal_String ("tagOwner")));
   Internal_Set_Upper (Base + 132, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 140, False);
   Internal_Set_Is_Final_Specialization (Base + 140, False);
   Internal_Set_Name
    (Base + 140,
     (False, League.Strings.To_Universal_String ("A_element_tag")));

   Internal_Set_Is_Composite (Base + 797, False);
   Internal_Set_Is_Derived (Base + 797, False);
   Internal_Set_Is_Derived_Union (Base + 797, False);
   Internal_Set_Is_Leaf (Base + 797, False);
   Internal_Set_Is_Ordered (Base + 797, False);
   Internal_Set_Is_Read_Only (Base + 797, False);
   Internal_Set_Is_Unique (Base + 797, True);
   Internal_Set_Lower (Base + 797, (False, 1));
   Internal_Set_Name
    (Base + 797,
     (False, League.Strings.To_Universal_String ("tag")));
   Internal_Set_Upper (Base + 797, (False, (False, 1)));

   Internal_Set_Is_Derived (Base + 142, False);
   Internal_Set_Is_Final_Specialization (Base + 142, False);
   Internal_Set_Name
    (Base + 142,
     (False, League.Strings.To_Universal_String ("A_ownedTag_tagOwner")));

   Internal_Set_Is_Composite (Base + 798, True);
   Internal_Set_Is_Derived (Base + 798, False);
   Internal_Set_Is_Derived_Union (Base + 798, False);
   Internal_Set_Is_Leaf (Base + 798, False);
   Internal_Set_Is_Ordered (Base + 798, False);
   Internal_Set_Is_Read_Only (Base + 798, False);
   Internal_Set_Is_Unique (Base + 798, True);
   Internal_Set_Lower (Base + 798, (False, 0));
   Internal_Set_Name
    (Base + 798,
     (False, League.Strings.To_Universal_String ("ownedTag")));
   Internal_Set_Upper (Base + 798, (False, (Unlimited => True)));

   Internal_Set_Name
    (Base + 799,
     (League.Strings.To_Universal_String ("org.omg.xmi.nsPrefix")));
   Internal_Set_Value
    (Base + 799,
     (League.Strings.To_Universal_String ("cmof")));

   Internal_Set_Name
    (Base + 800,
     (League.Strings.To_Universal_String ("org.omg.xmi.nsURI")));
   Internal_Set_Value
    (Base + 800,
     (League.Strings.To_Universal_String ("http://schema.omg.org/spec/MOF/2.0/cmof.xml")));

   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 190,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 192,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 194,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 196,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 4,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 8,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 9,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 14,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 15,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 17,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 23,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 27,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 28,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 29,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 32,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 33,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 1,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 3,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 26,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 7,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 11,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 12,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 25,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 6,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 18,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 19,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 24,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 2,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 10,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 20,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 21,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 22,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 31,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 16,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 13,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 5,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 737,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 747,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 153,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 155,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 156,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 158,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 159,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 162,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 164,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 166,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 168,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 170,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 172,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 174,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 175,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 177,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 179,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 181,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 183,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 185,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 187,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 136,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 137,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 138,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 139,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 141,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 143,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 144,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 145,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 146,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 147,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 148,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 149,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 150,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 151,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 152,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 154,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 157,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 160,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 161,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 163,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 165,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 167,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 169,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 171,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 173,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 176,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 178,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 180,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 182,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 184,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 186,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 188,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 30,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 140,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     Base + 189,
     MP_CMOF_Package_Packaged_Element,
     Base + 142,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 190,
     MP_CMOF_Element_Owned_Comment,
     Base + 191,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 191,
     MP_CMOF_Comment_Annotated_Element,
     Base + 190,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 192,
     MP_CMOF_Element_Owned_Comment,
     Base + 193,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 193,
     MP_CMOF_Comment_Annotated_Element,
     Base + 192,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 194,
     MP_CMOF_Element_Owned_Comment,
     Base + 195,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 195,
     MP_CMOF_Comment_Annotated_Element,
     Base + 194,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 196,
     MP_CMOF_Element_Owned_Comment,
     Base + 197,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 197,
     MP_CMOF_Comment_Annotated_Element,
     Base + 196,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Attribute,
     Base + 43,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Attribute,
     Base + 44,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Attribute,
     Base + 45,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Attribute,
     Base + 46,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Attribute,
     Base + 81,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 4,
     MP_CMOF_Element_Owned_Comment,
     Base + 198,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Operation,
     Base + 210,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Operation,
     Base + 216,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Operation,
     Base + 221,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Operation,
     Base + 226,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Operation,
     Base + 231,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Operation,
     Base + 236,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Operation,
     Base + 241,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Operation,
     Base + 249,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Operation,
     Base + 257,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 4,
     MP_CMOF_Class_Owned_Operation,
     Base + 263,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 4,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 199,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 4,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 202,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 4,
     MP_CMOF_Class_Super_Class,
     Base + 17,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 4,
     MP_CMOF_Class_Super_Class,
     Base + 31,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 198,
     MP_CMOF_Comment_Annotated_Element,
     Base + 4,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 199,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 4,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 199,
     MP_CMOF_Element_Owned_Comment,
     Base + 200,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 199,
     MP_CMOF_Constraint_Specification,
     Base + 201,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 200,
     MP_CMOF_Comment_Annotated_Element,
     Base + 199,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 202,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 4,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 202,
     MP_CMOF_Element_Owned_Comment,
     Base + 203,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 202,
     MP_CMOF_Constraint_Specification,
     Base + 204,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 203,
     MP_CMOF_Comment_Annotated_Element,
     Base + 202,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 43,
     MP_CMOF_Element_Owned_Comment,
     Base + 205,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 43,
     MP_CMOF_Property_Subsetted_Property,
     Base + 44,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 43,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 205,
     MP_CMOF_Comment_Annotated_Element,
     Base + 43,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 44,
     MP_CMOF_Element_Owned_Comment,
     Base + 206,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 44,
     MP_CMOF_Property_Subsetted_Property,
     Base + 60,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 44,
     MP_CMOF_Typed_Element_Type,
     Base + 14,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 206,
     MP_CMOF_Comment_Annotated_Element,
     Base + 44,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 45,
     MP_CMOF_Element_Owned_Comment,
     Base + 207,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 45,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 207,
     MP_CMOF_Comment_Annotated_Element,
     Base + 45,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 46,
     MP_CMOF_Element_Owned_Comment,
     Base + 208,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 46,
     MP_CMOF_Property_Subsetted_Property,
     Base + 60,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 46,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 208,
     MP_CMOF_Comment_Annotated_Element,
     Base + 46,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 81,
     MP_CMOF_Element_Owned_Comment,
     Base + 209,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 81,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 209,
     MP_CMOF_Comment_Annotated_Element,
     Base + 81,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 210,
     MP_CMOF_Operation_Body_Condition,
     Base + 212,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 210,
     MP_CMOF_Element_Owned_Comment,
     Base + 211,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 210,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 214,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 210,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 215,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 210,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 212,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     Base + 210,
     MP_CMOF_Operation_Redefined_Operation,
     Base + 690,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 211,
     MP_CMOF_Comment_Annotated_Element,
     Base + 210,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 212,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 210,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 212,
     MP_CMOF_Constraint_Specification,
     Base + 213,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 214,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 215,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 216,
     MP_CMOF_Operation_Body_Condition,
     Base + 218,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 216,
     MP_CMOF_Element_Owned_Comment,
     Base + 217,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 216,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 220,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 216,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 218,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 217,
     MP_CMOF_Comment_Annotated_Element,
     Base + 216,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 218,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 216,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 218,
     MP_CMOF_Constraint_Specification,
     Base + 219,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 220,
     MP_CMOF_Typed_Element_Type,
     Base + 14,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 221,
     MP_CMOF_Operation_Body_Condition,
     Base + 223,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 221,
     MP_CMOF_Element_Owned_Comment,
     Base + 222,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 221,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 225,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 221,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 223,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 222,
     MP_CMOF_Comment_Annotated_Element,
     Base + 221,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 223,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 221,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 223,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 45,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 223,
     MP_CMOF_Constraint_Specification,
     Base + 224,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 225,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 226,
     MP_CMOF_Operation_Body_Condition,
     Base + 228,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 226,
     MP_CMOF_Element_Owned_Comment,
     Base + 227,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 226,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 230,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 226,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 228,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 227,
     MP_CMOF_Comment_Annotated_Element,
     Base + 226,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 228,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 226,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 228,
     MP_CMOF_Constraint_Specification,
     Base + 229,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 230,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 231,
     MP_CMOF_Operation_Body_Condition,
     Base + 233,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 231,
     MP_CMOF_Element_Owned_Comment,
     Base + 232,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 231,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 235,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 231,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 233,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 232,
     MP_CMOF_Comment_Annotated_Element,
     Base + 231,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 233,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 231,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 233,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 46,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 233,
     MP_CMOF_Constraint_Specification,
     Base + 234,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 235,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 236,
     MP_CMOF_Operation_Body_Condition,
     Base + 238,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 236,
     MP_CMOF_Element_Owned_Comment,
     Base + 237,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 236,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 240,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 236,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 238,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 237,
     MP_CMOF_Comment_Annotated_Element,
     Base + 236,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 238,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 236,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 238,
     MP_CMOF_Constraint_Specification,
     Base + 239,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 240,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 241,
     MP_CMOF_Operation_Body_Condition,
     Base + 245,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 241,
     MP_CMOF_Element_Owned_Comment,
     Base + 242,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 241,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 247,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 241,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 248,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 241,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 243,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 241,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 245,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     Base + 241,
     MP_CMOF_Operation_Precondition,
     Base + 243,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 242,
     MP_CMOF_Comment_Annotated_Element,
     Base + 241,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 243,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 241,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 243,
     MP_CMOF_Constraint_Specification,
     Base + 244,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 245,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 241,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 245,
     MP_CMOF_Constraint_Specification,
     Base + 246,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 247,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 248,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 249,
     MP_CMOF_Operation_Body_Condition,
     Base + 253,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 249,
     MP_CMOF_Element_Owned_Comment,
     Base + 250,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 249,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 255,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 249,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 256,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 249,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 251,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 249,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 253,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     Base + 249,
     MP_CMOF_Operation_Precondition,
     Base + 251,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 250,
     MP_CMOF_Comment_Annotated_Element,
     Base + 249,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 251,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 249,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 251,
     MP_CMOF_Constraint_Specification,
     Base + 252,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 253,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 249,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 253,
     MP_CMOF_Constraint_Specification,
     Base + 254,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 255,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 256,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 257,
     MP_CMOF_Operation_Body_Condition,
     Base + 259,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 257,
     MP_CMOF_Element_Owned_Comment,
     Base + 258,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 257,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 261,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 257,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 262,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 257,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 259,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 258,
     MP_CMOF_Comment_Annotated_Element,
     Base + 257,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 259,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 257,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 259,
     MP_CMOF_Constraint_Specification,
     Base + 260,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 261,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 262,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 263,
     MP_CMOF_Operation_Body_Condition,
     Base + 265,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 263,
     MP_CMOF_Element_Owned_Comment,
     Base + 264,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 263,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 267,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 263,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 268,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 263,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 265,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 264,
     MP_CMOF_Comment_Annotated_Element,
     Base + 263,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 265,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 263,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 265,
     MP_CMOF_Constraint_Specification,
     Base + 266,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 267,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 268,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 8,
     MP_CMOF_Class_Owned_Attribute,
     Base + 51,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 8,
     MP_CMOF_Class_Owned_Attribute,
     Base + 52,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 8,
     MP_CMOF_Element_Owned_Comment,
     Base + 269,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 8,
     MP_CMOF_Class_Super_Class,
     Base + 28,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 269,
     MP_CMOF_Comment_Annotated_Element,
     Base + 8,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 51,
     MP_CMOF_Element_Owned_Comment,
     Base + 270,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 51,
     MP_CMOF_Property_Subsetted_Property,
     Base + 77,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 51,
     MP_CMOF_Typed_Element_Type,
     Base + 9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 270,
     MP_CMOF_Comment_Annotated_Element,
     Base + 51,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 52,
     MP_CMOF_Element_Owned_Comment,
     Base + 271,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 52,
     MP_CMOF_Property_Subsetted_Property,
     Base + 77,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 52,
     MP_CMOF_Typed_Element_Type,
     Base + 9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 271,
     MP_CMOF_Comment_Annotated_Element,
     Base + 52,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 9,
     MP_CMOF_Class_Owned_Attribute,
     Base + 54,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 9,
     MP_CMOF_Class_Owned_Attribute,
     Base + 85,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 9,
     MP_CMOF_Class_Owned_Attribute,
     Base + 53,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 9,
     MP_CMOF_Element_Owned_Comment,
     Base + 272,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 9,
     MP_CMOF_Class_Owned_Operation,
     Base + 282,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 9,
     MP_CMOF_Class_Owned_Operation,
     Base + 287,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 9,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 273,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 9,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 276,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 272,
     MP_CMOF_Comment_Annotated_Element,
     Base + 9,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 273,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 9,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 273,
     MP_CMOF_Element_Owned_Comment,
     Base + 274,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 273,
     MP_CMOF_Constraint_Specification,
     Base + 275,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 274,
     MP_CMOF_Comment_Annotated_Element,
     Base + 273,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 276,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 9,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 276,
     MP_CMOF_Element_Owned_Comment,
     Base + 277,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 276,
     MP_CMOF_Constraint_Specification,
     Base + 278,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 277,
     MP_CMOF_Comment_Annotated_Element,
     Base + 276,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 54,
     MP_CMOF_Element_Owned_Comment,
     Base + 279,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 54,
     MP_CMOF_Typed_Element_Type,
     Base + 9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 279,
     MP_CMOF_Comment_Annotated_Element,
     Base + 54,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 85,
     MP_CMOF_Element_Owned_Comment,
     Base + 280,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 85,
     MP_CMOF_Typed_Element_Type,
     Base + 9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 280,
     MP_CMOF_Comment_Annotated_Element,
     Base + 85,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 53,
     MP_CMOF_Element_Owned_Comment,
     Base + 281,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 53,
     MP_CMOF_Property_Subsetted_Property,
     Base + 54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 53,
     MP_CMOF_Typed_Element_Type,
     Base + 5,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 281,
     MP_CMOF_Comment_Annotated_Element,
     Base + 53,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 282,
     MP_CMOF_Operation_Body_Condition,
     Base + 284,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 282,
     MP_CMOF_Element_Owned_Comment,
     Base + 283,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 282,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 286,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 282,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 284,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 283,
     MP_CMOF_Comment_Annotated_Element,
     Base + 282,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 284,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 282,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 284,
     MP_CMOF_Constraint_Specification,
     Base + 285,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 286,
     MP_CMOF_Typed_Element_Type,
     Base + 9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 287,
     MP_CMOF_Operation_Body_Condition,
     Base + 289,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 287,
     MP_CMOF_Element_Owned_Comment,
     Base + 288,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 287,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 291,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 287,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 289,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 288,
     MP_CMOF_Comment_Annotated_Element,
     Base + 287,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 289,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 287,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 289,
     MP_CMOF_Constraint_Specification,
     Base + 290,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 291,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 14,
     MP_CMOF_Class_Owned_Attribute,
     Base + 57,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 14,
     MP_CMOF_Element_Owned_Comment,
     Base + 292,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 14,
     MP_CMOF_Class_Super_Class,
     Base + 27,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 292,
     MP_CMOF_Comment_Annotated_Element,
     Base + 14,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 57,
     MP_CMOF_Element_Owned_Comment,
     Base + 293,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 57,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 293,
     MP_CMOF_Comment_Annotated_Element,
     Base + 57,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 15,
     MP_CMOF_Class_Owned_Attribute,
     Base + 91,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 15,
     MP_CMOF_Class_Owned_Attribute,
     Base + 92,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 15,
     MP_CMOF_Class_Owned_Attribute,
     Base + 93,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 15,
     MP_CMOF_Class_Owned_Attribute,
     Base + 94,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 15,
     MP_CMOF_Element_Owned_Comment,
     Base + 294,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 15,
     MP_CMOF_Class_Owned_Operation,
     Base + 305,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 15,
     MP_CMOF_Class_Owned_Operation,
     Base + 312,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 15,
     MP_CMOF_Class_Owned_Operation,
     Base + 320,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 15,
     MP_CMOF_Class_Owned_Operation,
     Base + 328,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 15,
     MP_CMOF_Class_Owned_Operation,
     Base + 333,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 15,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 295,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 15,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 298,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 15,
     MP_CMOF_Class_Super_Class,
     Base + 9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 294,
     MP_CMOF_Comment_Annotated_Element,
     Base + 15,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 295,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 15,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 295,
     MP_CMOF_Element_Owned_Comment,
     Base + 296,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 295,
     MP_CMOF_Constraint_Specification,
     Base + 297,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 296,
     MP_CMOF_Comment_Annotated_Element,
     Base + 295,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 298,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 15,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 298,
     MP_CMOF_Element_Owned_Comment,
     Base + 299,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 298,
     MP_CMOF_Constraint_Specification,
     Base + 300,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 299,
     MP_CMOF_Comment_Annotated_Element,
     Base + 298,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 91,
     MP_CMOF_Element_Owned_Comment,
     Base + 301,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 91,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 301,
     MP_CMOF_Comment_Annotated_Element,
     Base + 91,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 92,
     MP_CMOF_Element_Owned_Comment,
     Base + 302,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 92,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 302,
     MP_CMOF_Comment_Annotated_Element,
     Base + 92,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 93,
     MP_CMOF_Element_Owned_Comment,
     Base + 303,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 93,
     MP_CMOF_Typed_Element_Type,
     Base + 190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 303,
     MP_CMOF_Comment_Annotated_Element,
     Base + 93,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 94,
     MP_CMOF_Element_Owned_Comment,
     Base + 304,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 94,
     MP_CMOF_Typed_Element_Type,
     Base + 196,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 304,
     MP_CMOF_Comment_Annotated_Element,
     Base + 94,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 305,
     MP_CMOF_Operation_Body_Condition,
     Base + 309,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 305,
     MP_CMOF_Element_Owned_Comment,
     Base + 306,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 305,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 311,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 305,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 307,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 305,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 309,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     Base + 305,
     MP_CMOF_Operation_Precondition,
     Base + 307,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 306,
     MP_CMOF_Comment_Annotated_Element,
     Base + 305,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 307,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 305,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 307,
     MP_CMOF_Constraint_Specification,
     Base + 308,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 309,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 305,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 309,
     MP_CMOF_Constraint_Specification,
     Base + 310,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 311,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 312,
     MP_CMOF_Operation_Body_Condition,
     Base + 316,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 312,
     MP_CMOF_Element_Owned_Comment,
     Base + 313,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 312,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 318,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 312,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 319,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 312,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 314,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 312,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 316,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     Base + 312,
     MP_CMOF_Operation_Precondition,
     Base + 314,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 313,
     MP_CMOF_Comment_Annotated_Element,
     Base + 312,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 314,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 312,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 314,
     MP_CMOF_Constraint_Specification,
     Base + 315,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 316,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 312,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 316,
     MP_CMOF_Constraint_Specification,
     Base + 317,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 318,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 319,
     MP_CMOF_Typed_Element_Type,
     Base + 15,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 320,
     MP_CMOF_Operation_Body_Condition,
     Base + 324,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 320,
     MP_CMOF_Element_Owned_Comment,
     Base + 321,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 320,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 326,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 320,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 327,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 320,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 322,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 320,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 324,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     Base + 320,
     MP_CMOF_Operation_Precondition,
     Base + 322,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 321,
     MP_CMOF_Comment_Annotated_Element,
     Base + 320,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 322,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 320,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 322,
     MP_CMOF_Constraint_Specification,
     Base + 323,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 324,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 320,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 324,
     MP_CMOF_Constraint_Specification,
     Base + 325,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 326,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 327,
     MP_CMOF_Typed_Element_Type,
     Base + 190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 328,
     MP_CMOF_Operation_Body_Condition,
     Base + 330,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 328,
     MP_CMOF_Element_Owned_Comment,
     Base + 329,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 328,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 332,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 328,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 330,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 329,
     MP_CMOF_Comment_Annotated_Element,
     Base + 328,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 330,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 328,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 330,
     MP_CMOF_Constraint_Specification,
     Base + 331,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 332,
     MP_CMOF_Typed_Element_Type,
     Base + 190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 333,
     MP_CMOF_Operation_Body_Condition,
     Base + 335,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 333,
     MP_CMOF_Element_Owned_Comment,
     Base + 334,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 333,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 337,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 333,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 335,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 334,
     MP_CMOF_Comment_Annotated_Element,
     Base + 333,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 335,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 333,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 335,
     MP_CMOF_Constraint_Specification,
     Base + 336,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 337,
     MP_CMOF_Typed_Element_Type,
     Base + 196,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 17,
     MP_CMOF_Class_Owned_Attribute,
     Base + 59,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 17,
     MP_CMOF_Class_Owned_Attribute,
     Base + 58,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 17,
     MP_CMOF_Class_Owned_Attribute,
     Base + 63,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 17,
     MP_CMOF_Class_Owned_Attribute,
     Base + 61,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 17,
     MP_CMOF_Class_Owned_Attribute,
     Base + 60,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 17,
     MP_CMOF_Class_Owned_Attribute,
     Base + 62,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 17,
     MP_CMOF_Element_Owned_Comment,
     Base + 338,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 17,
     MP_CMOF_Class_Owned_Operation,
     Base + 347,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 17,
     MP_CMOF_Class_Owned_Operation,
     Base + 352,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 17,
     MP_CMOF_Class_Owned_Operation,
     Base + 358,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 17,
     MP_CMOF_Class_Owned_Operation,
     Base + 364,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 17,
     MP_CMOF_Class_Owned_Operation,
     Base + 370,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 17,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 339,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 17,
     MP_CMOF_Class_Super_Class,
     Base + 16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 338,
     MP_CMOF_Comment_Annotated_Element,
     Base + 17,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 339,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 17,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 339,
     MP_CMOF_Element_Owned_Comment,
     Base + 340,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 339,
     MP_CMOF_Constraint_Specification,
     Base + 341,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 340,
     MP_CMOF_Comment_Annotated_Element,
     Base + 339,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 59,
     MP_CMOF_Element_Owned_Comment,
     Base + 342,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 59,
     MP_CMOF_Property_Subsetted_Property,
     Base + 60,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 59,
     MP_CMOF_Typed_Element_Type,
     Base + 23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 342,
     MP_CMOF_Comment_Annotated_Element,
     Base + 59,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 58,
     MP_CMOF_Element_Owned_Comment,
     Base + 343,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 58,
     MP_CMOF_Property_Subsetted_Property,
     Base + 54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 58,
     MP_CMOF_Typed_Element_Type,
     Base + 10,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 343,
     MP_CMOF_Comment_Annotated_Element,
     Base + 58,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 63,
     MP_CMOF_Element_Owned_Comment,
     Base + 344,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 63,
     MP_CMOF_Property_Subsetted_Property,
     Base + 54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 63,
     MP_CMOF_Typed_Element_Type,
     Base + 21,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 344,
     MP_CMOF_Comment_Annotated_Element,
     Base + 63,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 61,
     MP_CMOF_Element_Owned_Comment,
     Base + 345,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 61,
     MP_CMOF_Property_Subsetted_Property,
     Base + 54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 61,
     MP_CMOF_Property_Subsetted_Property,
     Base + 60,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 61,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 345,
     MP_CMOF_Comment_Annotated_Element,
     Base + 61,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 60,
     MP_CMOF_Element_Owned_Comment,
     Base + 346,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 60,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 346,
     MP_CMOF_Comment_Annotated_Element,
     Base + 60,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 62,
     MP_CMOF_Property_Subsetted_Property,
     Base + 61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 62,
     MP_CMOF_Typed_Element_Type,
     Base + 6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 347,
     MP_CMOF_Operation_Body_Condition,
     Base + 349,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 347,
     MP_CMOF_Element_Owned_Comment,
     Base + 348,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 347,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 351,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 347,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 349,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 348,
     MP_CMOF_Comment_Annotated_Element,
     Base + 347,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 349,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 347,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 349,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 59,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 349,
     MP_CMOF_Constraint_Specification,
     Base + 350,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 351,
     MP_CMOF_Typed_Element_Type,
     Base + 23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 352,
     MP_CMOF_Operation_Body_Condition,
     Base + 354,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 352,
     MP_CMOF_Element_Owned_Comment,
     Base + 353,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 352,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 356,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 352,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 357,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 352,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 354,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 353,
     MP_CMOF_Comment_Annotated_Element,
     Base + 352,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 354,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 352,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 354,
     MP_CMOF_Constraint_Specification,
     Base + 355,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 356,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 357,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 358,
     MP_CMOF_Operation_Body_Condition,
     Base + 360,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 358,
     MP_CMOF_Element_Owned_Comment,
     Base + 359,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 358,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 362,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 358,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 363,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 358,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 360,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 359,
     MP_CMOF_Comment_Annotated_Element,
     Base + 358,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 360,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 358,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 360,
     MP_CMOF_Constraint_Specification,
     Base + 361,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 362,
     MP_CMOF_Typed_Element_Type,
     Base + 23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 363,
     MP_CMOF_Typed_Element_Type,
     Base + 23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 364,
     MP_CMOF_Operation_Body_Condition,
     Base + 366,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 364,
     MP_CMOF_Element_Owned_Comment,
     Base + 365,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 364,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 368,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 364,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 369,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 364,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 366,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 365,
     MP_CMOF_Comment_Annotated_Element,
     Base + 364,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 366,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 364,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 366,
     MP_CMOF_Constraint_Specification,
     Base + 367,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 368,
     MP_CMOF_Typed_Element_Type,
     Base + 23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 369,
     MP_CMOF_Typed_Element_Type,
     Base + 23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 370,
     MP_CMOF_Operation_Body_Condition,
     Base + 372,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 370,
     MP_CMOF_Element_Owned_Comment,
     Base + 371,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 370,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 374,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 370,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 372,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 371,
     MP_CMOF_Comment_Annotated_Element,
     Base + 370,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 372,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 370,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 372,
     MP_CMOF_Constraint_Specification,
     Base + 373,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 374,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 23,
     MP_CMOF_Element_Owned_Comment,
     Base + 375,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 23,
     MP_CMOF_Class_Super_Class,
     Base + 16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 375,
     MP_CMOF_Comment_Annotated_Element,
     Base + 23,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 27,
     MP_CMOF_Class_Owned_Attribute,
     Base + 76,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 27,
     MP_CMOF_Class_Owned_Attribute,
     Base + 75,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 27,
     MP_CMOF_Class_Owned_Attribute,
     Base + 130,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 27,
     MP_CMOF_Element_Owned_Comment,
     Base + 376,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 27,
     MP_CMOF_Class_Owned_Operation,
     Base + 389,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 27,
     MP_CMOF_Class_Owned_Operation,
     Base + 397,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 27,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 377,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 27,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 380,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 27,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 383,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 27,
     MP_CMOF_Class_Super_Class,
     Base + 16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 376,
     MP_CMOF_Comment_Annotated_Element,
     Base + 27,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 377,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 27,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 377,
     MP_CMOF_Element_Owned_Comment,
     Base + 378,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 377,
     MP_CMOF_Constraint_Specification,
     Base + 379,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 378,
     MP_CMOF_Comment_Annotated_Element,
     Base + 377,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 380,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 27,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 380,
     MP_CMOF_Element_Owned_Comment,
     Base + 381,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 380,
     MP_CMOF_Constraint_Specification,
     Base + 382,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 381,
     MP_CMOF_Comment_Annotated_Element,
     Base + 380,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 383,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 27,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 383,
     MP_CMOF_Element_Owned_Comment,
     Base + 384,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 383,
     MP_CMOF_Constraint_Specification,
     Base + 385,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 384,
     MP_CMOF_Comment_Annotated_Element,
     Base + 383,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 76,
     MP_CMOF_Element_Owned_Comment,
     Base + 386,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 76,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 386,
     MP_CMOF_Comment_Annotated_Element,
     Base + 76,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 75,
     MP_CMOF_Element_Owned_Comment,
     Base + 387,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 75,
     MP_CMOF_Typed_Element_Type,
     Base + 27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 387,
     MP_CMOF_Comment_Annotated_Element,
     Base + 75,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 130,
     MP_CMOF_Element_Owned_Comment,
     Base + 388,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 130,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 388,
     MP_CMOF_Comment_Annotated_Element,
     Base + 130,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 389,
     MP_CMOF_Operation_Body_Condition,
     Base + 391,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 389,
     MP_CMOF_Element_Owned_Comment,
     Base + 390,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 389,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 395,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 389,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 396,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 389,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 391,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 389,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 393,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     Base + 389,
     MP_CMOF_Operation_Precondition,
     Base + 393,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 390,
     MP_CMOF_Comment_Annotated_Element,
     Base + 389,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 391,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 389,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 391,
     MP_CMOF_Constraint_Specification,
     Base + 392,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 393,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 389,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 393,
     MP_CMOF_Constraint_Specification,
     Base + 394,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 395,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 396,
     MP_CMOF_Typed_Element_Type,
     Base + 27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 397,
     MP_CMOF_Operation_Body_Condition,
     Base + 399,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 397,
     MP_CMOF_Element_Owned_Comment,
     Base + 398,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 397,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 401,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 397,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 402,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 397,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 399,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 398,
     MP_CMOF_Comment_Annotated_Element,
     Base + 397,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 399,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 397,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 399,
     MP_CMOF_Constraint_Specification,
     Base + 400,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 401,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 402,
     MP_CMOF_Typed_Element_Type,
     Base + 27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 28,
     MP_CMOF_Class_Owned_Attribute,
     Base + 77,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 28,
     MP_CMOF_Element_Owned_Comment,
     Base + 403,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 28,
     MP_CMOF_Class_Super_Class,
     Base + 9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 403,
     MP_CMOF_Comment_Annotated_Element,
     Base + 28,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 77,
     MP_CMOF_Element_Owned_Comment,
     Base + 404,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 77,
     MP_CMOF_Typed_Element_Type,
     Base + 9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 404,
     MP_CMOF_Comment_Annotated_Element,
     Base + 77,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 29,
     MP_CMOF_Element_Owned_Comment,
     Base + 405,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 29,
     MP_CMOF_Class_Super_Class,
     Base + 14,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 29,
     MP_CMOF_Class_Super_Class,
     Base + 15,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 29,
     MP_CMOF_Class_Super_Class,
     Base + 32,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 405,
     MP_CMOF_Comment_Annotated_Element,
     Base + 29,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 32,
     MP_CMOF_Class_Owned_Attribute,
     Base + 135,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 32,
     MP_CMOF_Element_Owned_Comment,
     Base + 406,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 32,
     MP_CMOF_Class_Super_Class,
     Base + 16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 406,
     MP_CMOF_Comment_Annotated_Element,
     Base + 32,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 135,
     MP_CMOF_Element_Owned_Comment,
     Base + 407,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 135,
     MP_CMOF_Typed_Element_Type,
     Base + 31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 407,
     MP_CMOF_Comment_Annotated_Element,
     Base + 135,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 33,
     MP_CMOF_Element_Owned_Comment,
     Base + 408,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 33,
     MP_CMOF_Class_Owned_Operation,
     Base + 409,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 33,
     MP_CMOF_Class_Owned_Operation,
     Base + 414,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 33,
     MP_CMOF_Class_Owned_Operation,
     Base + 419,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 33,
     MP_CMOF_Class_Owned_Operation,
     Base + 424,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 33,
     MP_CMOF_Class_Owned_Operation,
     Base + 429,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 33,
     MP_CMOF_Class_Owned_Operation,
     Base + 434,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 33,
     MP_CMOF_Class_Super_Class,
     Base + 32,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 33,
     MP_CMOF_Class_Super_Class,
     Base + 23,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 408,
     MP_CMOF_Comment_Annotated_Element,
     Base + 33,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 409,
     MP_CMOF_Operation_Body_Condition,
     Base + 411,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 409,
     MP_CMOF_Element_Owned_Comment,
     Base + 410,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 409,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 413,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 409,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 411,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 410,
     MP_CMOF_Comment_Annotated_Element,
     Base + 409,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 411,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 409,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 411,
     MP_CMOF_Constraint_Specification,
     Base + 412,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 413,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 414,
     MP_CMOF_Operation_Body_Condition,
     Base + 416,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 414,
     MP_CMOF_Element_Owned_Comment,
     Base + 415,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 414,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 418,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 414,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 416,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 415,
     MP_CMOF_Comment_Annotated_Element,
     Base + 414,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 416,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 414,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 416,
     MP_CMOF_Constraint_Specification,
     Base + 417,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 418,
     MP_CMOF_Typed_Element_Type,
     Base + 190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 419,
     MP_CMOF_Operation_Body_Condition,
     Base + 421,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 419,
     MP_CMOF_Element_Owned_Comment,
     Base + 420,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 419,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 423,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 419,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 421,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 420,
     MP_CMOF_Comment_Annotated_Element,
     Base + 419,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 421,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 419,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 421,
     MP_CMOF_Constraint_Specification,
     Base + 422,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 423,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 424,
     MP_CMOF_Operation_Body_Condition,
     Base + 426,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 424,
     MP_CMOF_Element_Owned_Comment,
     Base + 425,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 424,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 428,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 424,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 426,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 425,
     MP_CMOF_Comment_Annotated_Element,
     Base + 424,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 426,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 424,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 426,
     MP_CMOF_Constraint_Specification,
     Base + 427,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 428,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 429,
     MP_CMOF_Operation_Body_Condition,
     Base + 431,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 429,
     MP_CMOF_Element_Owned_Comment,
     Base + 430,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 429,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 433,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 429,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 431,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 430,
     MP_CMOF_Comment_Annotated_Element,
     Base + 429,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 431,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 429,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 431,
     MP_CMOF_Constraint_Specification,
     Base + 432,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 433,
     MP_CMOF_Typed_Element_Type,
     Base + 196,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 434,
     MP_CMOF_Operation_Body_Condition,
     Base + 436,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 434,
     MP_CMOF_Element_Owned_Comment,
     Base + 435,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 434,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 438,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 434,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 436,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 435,
     MP_CMOF_Comment_Annotated_Element,
     Base + 434,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 436,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 434,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 436,
     MP_CMOF_Constraint_Specification,
     Base + 437,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 438,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 1,
     MP_CMOF_Class_Owned_Attribute,
     Base + 79,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 1,
     MP_CMOF_Class_Owned_Attribute,
     Base + 37,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 1,
     MP_CMOF_Class_Owned_Attribute,
     Base + 34,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 1,
     MP_CMOF_Class_Owned_Attribute,
     Base + 35,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 1,
     MP_CMOF_Class_Owned_Attribute,
     Base + 36,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 1,
     MP_CMOF_Element_Owned_Comment,
     Base + 439,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 1,
     MP_CMOF_Class_Owned_Operation,
     Base + 457,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 1,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 440,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 1,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 443,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 1,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 446,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 1,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 449,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 1,
     MP_CMOF_Class_Super_Class,
     Base + 4,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 1,
     MP_CMOF_Class_Super_Class,
     Base + 28,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 439,
     MP_CMOF_Comment_Annotated_Element,
     Base + 1,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 440,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 440,
     MP_CMOF_Element_Owned_Comment,
     Base + 441,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 440,
     MP_CMOF_Constraint_Specification,
     Base + 442,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 441,
     MP_CMOF_Comment_Annotated_Element,
     Base + 440,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 443,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 443,
     MP_CMOF_Element_Owned_Comment,
     Base + 444,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 443,
     MP_CMOF_Constraint_Specification,
     Base + 445,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 444,
     MP_CMOF_Comment_Annotated_Element,
     Base + 443,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 446,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 446,
     MP_CMOF_Element_Owned_Comment,
     Base + 447,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 446,
     MP_CMOF_Constraint_Specification,
     Base + 448,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 447,
     MP_CMOF_Comment_Annotated_Element,
     Base + 446,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 449,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 449,
     MP_CMOF_Element_Owned_Comment,
     Base + 450,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 449,
     MP_CMOF_Constraint_Specification,
     Base + 451,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 450,
     MP_CMOF_Comment_Annotated_Element,
     Base + 449,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 79,
     MP_CMOF_Element_Owned_Comment,
     Base + 452,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 79,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 452,
     MP_CMOF_Comment_Annotated_Element,
     Base + 79,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 37,
     MP_CMOF_Element_Owned_Comment,
     Base + 453,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 37,
     MP_CMOF_Property_Subsetted_Property,
     Base + 44,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 37,
     MP_CMOF_Property_Subsetted_Property,
     Base + 61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 37,
     MP_CMOF_Property_Subsetted_Property,
     Base + 35,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 37,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 453,
     MP_CMOF_Comment_Annotated_Element,
     Base + 37,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 34,
     MP_CMOF_Element_Owned_Comment,
     Base + 454,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 34,
     MP_CMOF_Property_Subsetted_Property,
     Base + 77,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 34,
     MP_CMOF_Typed_Element_Type,
     Base + 31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 454,
     MP_CMOF_Comment_Annotated_Element,
     Base + 34,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 35,
     MP_CMOF_Element_Owned_Comment,
     Base + 455,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 35,
     MP_CMOF_Property_Subsetted_Property,
     Base + 60,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 35,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 455,
     MP_CMOF_Comment_Annotated_Element,
     Base + 35,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 36,
     MP_CMOF_Element_Owned_Comment,
     Base + 456,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 36,
     MP_CMOF_Property_Subsetted_Property,
     Base + 37,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 36,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 456,
     MP_CMOF_Comment_Annotated_Element,
     Base + 36,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 457,
     MP_CMOF_Operation_Body_Condition,
     Base + 459,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 457,
     MP_CMOF_Element_Owned_Comment,
     Base + 458,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 457,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 461,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 457,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 459,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 458,
     MP_CMOF_Comment_Annotated_Element,
     Base + 457,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 459,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 457,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 459,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 34,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 459,
     MP_CMOF_Constraint_Specification,
     Base + 460,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 461,
     MP_CMOF_Typed_Element_Type,
     Base + 31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 3,
     MP_CMOF_Class_Owned_Attribute,
     Base + 80,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 3,
     MP_CMOF_Class_Owned_Attribute,
     Base + 40,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 3,
     MP_CMOF_Class_Owned_Attribute,
     Base + 41,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 3,
     MP_CMOF_Class_Owned_Attribute,
     Base + 42,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 3,
     MP_CMOF_Element_Owned_Comment,
     Base + 462,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 3,
     MP_CMOF_Class_Owned_Operation,
     Base + 467,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 3,
     MP_CMOF_Class_Super_Class,
     Base + 4,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 462,
     MP_CMOF_Comment_Annotated_Element,
     Base + 3,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 80,
     MP_CMOF_Element_Owned_Comment,
     Base + 463,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 80,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 463,
     MP_CMOF_Comment_Annotated_Element,
     Base + 80,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 40,
     MP_CMOF_Element_Owned_Comment,
     Base + 464,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 40,
     MP_CMOF_Property_Subsetted_Property,
     Base + 43,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 40,
     MP_CMOF_Property_Subsetted_Property,
     Base + 61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 40,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 464,
     MP_CMOF_Comment_Annotated_Element,
     Base + 40,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 41,
     MP_CMOF_Element_Owned_Comment,
     Base + 465,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 41,
     MP_CMOF_Property_Subsetted_Property,
     Base + 44,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 41,
     MP_CMOF_Property_Subsetted_Property,
     Base + 61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 41,
     MP_CMOF_Typed_Element_Type,
     Base + 19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 465,
     MP_CMOF_Comment_Annotated_Element,
     Base + 41,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 42,
     MP_CMOF_Element_Owned_Comment,
     Base + 466,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Redefined_Property_Property,
     Base + 42,
     MP_CMOF_Property_Redefined_Property,
     Base + 45,
     MP_CMOF_Redefined_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 42,
     MP_CMOF_Typed_Element_Type,
     Base + 3,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 466,
     MP_CMOF_Comment_Annotated_Element,
     Base + 42,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 467,
     MP_CMOF_Operation_Body_Condition,
     Base + 469,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 467,
     MP_CMOF_Element_Owned_Comment,
     Base + 468,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 467,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 471,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 467,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 472,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 467,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 469,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     Base + 467,
     MP_CMOF_Operation_Redefined_Operation,
     Base + 257,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 468,
     MP_CMOF_Comment_Annotated_Element,
     Base + 467,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 469,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 467,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 469,
     MP_CMOF_Constraint_Specification,
     Base + 470,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 471,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 472,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 127,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 123,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 124,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 125,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 126,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 121,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 129,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 73,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 74,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 128,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 122,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Attribute,
     Base + 120,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 26,
     MP_CMOF_Element_Owned_Comment,
     Base + 473,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Operation,
     Base + 507,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Operation,
     Base + 512,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Operation,
     Base + 520,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Operation,
     Base + 525,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 26,
     MP_CMOF_Class_Owned_Operation,
     Base + 530,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 26,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 474,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 26,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 477,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 26,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 480,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 26,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 483,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 26,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 486,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 26,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 489,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 26,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 492,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 26,
     MP_CMOF_Class_Super_Class,
     Base + 29,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 473,
     MP_CMOF_Comment_Annotated_Element,
     Base + 26,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 474,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 474,
     MP_CMOF_Element_Owned_Comment,
     Base + 475,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 474,
     MP_CMOF_Constraint_Specification,
     Base + 476,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 475,
     MP_CMOF_Comment_Annotated_Element,
     Base + 474,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 477,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 477,
     MP_CMOF_Element_Owned_Comment,
     Base + 478,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 477,
     MP_CMOF_Constraint_Specification,
     Base + 479,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 478,
     MP_CMOF_Comment_Annotated_Element,
     Base + 477,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 480,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 480,
     MP_CMOF_Element_Owned_Comment,
     Base + 481,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 480,
     MP_CMOF_Constraint_Specification,
     Base + 482,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 481,
     MP_CMOF_Comment_Annotated_Element,
     Base + 480,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 483,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 483,
     MP_CMOF_Element_Owned_Comment,
     Base + 484,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 483,
     MP_CMOF_Constraint_Specification,
     Base + 485,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 484,
     MP_CMOF_Comment_Annotated_Element,
     Base + 483,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 486,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 486,
     MP_CMOF_Element_Owned_Comment,
     Base + 487,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 486,
     MP_CMOF_Constraint_Specification,
     Base + 488,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 487,
     MP_CMOF_Comment_Annotated_Element,
     Base + 486,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 489,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 489,
     MP_CMOF_Element_Owned_Comment,
     Base + 490,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 489,
     MP_CMOF_Constraint_Specification,
     Base + 491,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 490,
     MP_CMOF_Comment_Annotated_Element,
     Base + 489,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 492,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 492,
     MP_CMOF_Element_Owned_Comment,
     Base + 493,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 492,
     MP_CMOF_Constraint_Specification,
     Base + 494,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 493,
     MP_CMOF_Comment_Annotated_Element,
     Base + 492,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 127,
     MP_CMOF_Element_Owned_Comment,
     Base + 495,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 127,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 495,
     MP_CMOF_Comment_Annotated_Element,
     Base + 127,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 123,
     MP_CMOF_Element_Owned_Comment,
     Base + 496,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 123,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 496,
     MP_CMOF_Comment_Annotated_Element,
     Base + 123,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 124,
     MP_CMOF_Element_Owned_Comment,
     Base + 497,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 124,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 497,
     MP_CMOF_Comment_Annotated_Element,
     Base + 124,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 125,
     MP_CMOF_Element_Owned_Comment,
     Base + 498,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 125,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 498,
     MP_CMOF_Comment_Annotated_Element,
     Base + 125,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 126,
     MP_CMOF_Element_Owned_Comment,
     Base + 499,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 126,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 499,
     MP_CMOF_Comment_Annotated_Element,
     Base + 126,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 121,
     MP_CMOF_Element_Owned_Comment,
     Base + 500,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 121,
     MP_CMOF_Property_Subsetted_Property,
     Base + 57,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 121,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 121,
     MP_CMOF_Property_Subsetted_Property,
     Base + 764,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 121,
     MP_CMOF_Typed_Element_Type,
     Base + 3,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 500,
     MP_CMOF_Comment_Annotated_Element,
     Base + 121,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 129,
     MP_CMOF_Element_Owned_Comment,
     Base + 501,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 129,
     MP_CMOF_Property_Subsetted_Property,
     Base + 57,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 129,
     MP_CMOF_Property_Subsetted_Property,
     Base + 120,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 129,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 129,
     MP_CMOF_Typed_Element_Type,
     Base + 1,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 501,
     MP_CMOF_Comment_Annotated_Element,
     Base + 129,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 73,
     MP_CMOF_Element_Owned_Comment,
     Base + 502,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 73,
     MP_CMOF_Property_Subsetted_Property,
     Base + 75,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 73,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 502,
     MP_CMOF_Comment_Annotated_Element,
     Base + 73,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 74,
     MP_CMOF_Element_Owned_Comment,
     Base + 503,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 74,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 503,
     MP_CMOF_Comment_Annotated_Element,
     Base + 74,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 128,
     MP_CMOF_Element_Owned_Comment,
     Base + 504,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 128,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 504,
     MP_CMOF_Comment_Annotated_Element,
     Base + 128,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 122,
     MP_CMOF_Element_Owned_Comment,
     Base + 505,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 122,
     MP_CMOF_Property_Subsetted_Property,
     Base + 57,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 122,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 122,
     MP_CMOF_Property_Subsetted_Property,
     Base + 764,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 122,
     MP_CMOF_Typed_Element_Type,
     Base + 7,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 505,
     MP_CMOF_Comment_Annotated_Element,
     Base + 122,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 120,
     MP_CMOF_Element_Owned_Comment,
     Base + 506,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 120,
     MP_CMOF_Typed_Element_Type,
     Base + 1,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 506,
     MP_CMOF_Comment_Annotated_Element,
     Base + 120,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 507,
     MP_CMOF_Operation_Body_Condition,
     Base + 509,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 507,
     MP_CMOF_Element_Owned_Comment,
     Base + 508,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 507,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 511,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 507,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 509,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 508,
     MP_CMOF_Comment_Annotated_Element,
     Base + 507,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 509,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 507,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 509,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 128,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 509,
     MP_CMOF_Constraint_Specification,
     Base + 510,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 511,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 512,
     MP_CMOF_Operation_Body_Condition,
     Base + 516,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 512,
     MP_CMOF_Element_Owned_Comment,
     Base + 513,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 512,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 518,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 512,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 519,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 512,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 514,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 512,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 516,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     Base + 512,
     MP_CMOF_Operation_Precondition,
     Base + 514,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     Base + 512,
     MP_CMOF_Operation_Redefined_Operation,
     Base + 389,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 513,
     MP_CMOF_Comment_Annotated_Element,
     Base + 512,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 514,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 512,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 514,
     MP_CMOF_Constraint_Specification,
     Base + 515,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 516,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 512,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 516,
     MP_CMOF_Constraint_Specification,
     Base + 517,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 518,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 519,
     MP_CMOF_Typed_Element_Type,
     Base + 27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 520,
     MP_CMOF_Operation_Body_Condition,
     Base + 522,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 520,
     MP_CMOF_Element_Owned_Comment,
     Base + 521,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 520,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 524,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 520,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 522,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 521,
     MP_CMOF_Comment_Annotated_Element,
     Base + 520,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 522,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 520,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 522,
     MP_CMOF_Constraint_Specification,
     Base + 523,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 524,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 525,
     MP_CMOF_Operation_Body_Condition,
     Base + 527,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 525,
     MP_CMOF_Element_Owned_Comment,
     Base + 526,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 525,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 529,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 525,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 527,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 526,
     MP_CMOF_Comment_Annotated_Element,
     Base + 525,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 527,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 525,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 527,
     MP_CMOF_Constraint_Specification,
     Base + 528,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 529,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 530,
     MP_CMOF_Operation_Body_Condition,
     Base + 532,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 530,
     MP_CMOF_Element_Owned_Comment,
     Base + 531,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 530,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 534,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 530,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 535,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 530,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 532,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 531,
     MP_CMOF_Comment_Annotated_Element,
     Base + 530,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 532,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 530,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 532,
     MP_CMOF_Constraint_Specification,
     Base + 533,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 534,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 535,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 7,
     MP_CMOF_Class_Owned_Attribute,
     Base + 49,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 7,
     MP_CMOF_Class_Owned_Attribute,
     Base + 50,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 7,
     MP_CMOF_Element_Owned_Comment,
     Base + 536,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 7,
     MP_CMOF_Class_Owned_Operation,
     Base + 539,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 7,
     MP_CMOF_Class_Super_Class,
     Base + 4,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 536,
     MP_CMOF_Comment_Annotated_Element,
     Base + 7,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 49,
     MP_CMOF_Element_Owned_Comment,
     Base + 537,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 49,
     MP_CMOF_Property_Subsetted_Property,
     Base + 43,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 49,
     MP_CMOF_Property_Subsetted_Property,
     Base + 61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 49,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 537,
     MP_CMOF_Comment_Annotated_Element,
     Base + 49,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 50,
     MP_CMOF_Element_Owned_Comment,
     Base + 538,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 50,
     MP_CMOF_Property_Subsetted_Property,
     Base + 44,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 50,
     MP_CMOF_Property_Subsetted_Property,
     Base + 61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 50,
     MP_CMOF_Typed_Element_Type,
     Base + 19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 538,
     MP_CMOF_Comment_Annotated_Element,
     Base + 50,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 539,
     MP_CMOF_Operation_Body_Condition,
     Base + 541,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 539,
     MP_CMOF_Element_Owned_Comment,
     Base + 540,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 539,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 543,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 539,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 544,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 539,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 541,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     Base + 539,
     MP_CMOF_Operation_Redefined_Operation,
     Base + 257,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 540,
     MP_CMOF_Comment_Annotated_Element,
     Base + 539,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 541,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 539,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 541,
     MP_CMOF_Constraint_Specification,
     Base + 542,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 543,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 544,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 11,
     MP_CMOF_Class_Owned_Attribute,
     Base + 55,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 11,
     MP_CMOF_Element_Owned_Comment,
     Base + 545,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 11,
     MP_CMOF_Class_Super_Class,
     Base + 7,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 545,
     MP_CMOF_Comment_Annotated_Element,
     Base + 11,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 55,
     MP_CMOF_Element_Owned_Comment,
     Base + 546,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 55,
     MP_CMOF_Property_Subsetted_Property,
     Base + 61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 55,
     MP_CMOF_Typed_Element_Type,
     Base + 12,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 546,
     MP_CMOF_Comment_Annotated_Element,
     Base + 55,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 12,
     MP_CMOF_Class_Owned_Attribute,
     Base + 90,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 12,
     MP_CMOF_Element_Owned_Comment,
     Base + 547,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 12,
     MP_CMOF_Class_Super_Class,
     Base + 16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 547,
     MP_CMOF_Comment_Annotated_Element,
     Base + 12,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 90,
     MP_CMOF_Element_Owned_Comment,
     Base + 548,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 90,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 90,
     MP_CMOF_Typed_Element_Type,
     Base + 11,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 548,
     MP_CMOF_Comment_Annotated_Element,
     Base + 90,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 25,
     MP_CMOF_Element_Owned_Comment,
     Base + 549,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 25,
     MP_CMOF_Class_Super_Class,
     Base + 7,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 549,
     MP_CMOF_Comment_Annotated_Element,
     Base + 25,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 6,
     MP_CMOF_Class_Owned_Attribute,
     Base + 48,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 6,
     MP_CMOF_Class_Owned_Attribute,
     Base + 84,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 6,
     MP_CMOF_Class_Owned_Attribute,
     Base + 83,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 6,
     MP_CMOF_Element_Owned_Comment,
     Base + 550,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 6,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 551,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 6,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 554,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 6,
     MP_CMOF_Class_Super_Class,
     Base + 23,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 550,
     MP_CMOF_Comment_Annotated_Element,
     Base + 6,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 551,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 6,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 551,
     MP_CMOF_Element_Owned_Comment,
     Base + 552,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 551,
     MP_CMOF_Constraint_Specification,
     Base + 553,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 552,
     MP_CMOF_Comment_Annotated_Element,
     Base + 551,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 554,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 6,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 554,
     MP_CMOF_Element_Owned_Comment,
     Base + 555,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 554,
     MP_CMOF_Constraint_Specification,
     Base + 556,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 555,
     MP_CMOF_Comment_Annotated_Element,
     Base + 554,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 48,
     MP_CMOF_Element_Owned_Comment,
     Base + 557,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 48,
     MP_CMOF_Typed_Element_Type,
     Base + 9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 557,
     MP_CMOF_Comment_Annotated_Element,
     Base + 48,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 84,
     MP_CMOF_Element_Owned_Comment,
     Base + 558,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 84,
     MP_CMOF_Property_Subsetted_Property,
     Base + 54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 84,
     MP_CMOF_Typed_Element_Type,
     Base + 33,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 558,
     MP_CMOF_Comment_Annotated_Element,
     Base + 84,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 83,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 83,
     MP_CMOF_Typed_Element_Type,
     Base + 17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 18,
     MP_CMOF_Class_Owned_Attribute,
     Base + 99,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 18,
     MP_CMOF_Class_Owned_Attribute,
     Base + 100,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 18,
     MP_CMOF_Element_Owned_Comment,
     Base + 559,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 18,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 560,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 18,
     MP_CMOF_Class_Super_Class,
     Base + 33,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 559,
     MP_CMOF_Comment_Annotated_Element,
     Base + 18,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 560,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 18,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 560,
     MP_CMOF_Element_Owned_Comment,
     Base + 561,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 560,
     MP_CMOF_Constraint_Specification,
     Base + 562,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 561,
     MP_CMOF_Comment_Annotated_Element,
     Base + 560,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 99,
     MP_CMOF_Element_Owned_Comment,
     Base + 563,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 99,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 563,
     MP_CMOF_Comment_Annotated_Element,
     Base + 99,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 100,
     MP_CMOF_Element_Owned_Comment,
     Base + 564,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 100,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 564,
     MP_CMOF_Comment_Annotated_Element,
     Base + 100,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 105,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 104,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 106,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 107,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 109,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 102,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 103,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 67,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 68,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 108,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 64,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 66,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 65,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Attribute,
     Base + 101,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 19,
     MP_CMOF_Element_Owned_Comment,
     Base + 565,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Operation,
     Base + 583,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Operation,
     Base + 588,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Operation,
     Base + 593,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Operation,
     Base + 598,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Operation,
     Base + 603,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Operation,
     Base + 608,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 19,
     MP_CMOF_Class_Owned_Operation,
     Base + 616,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 19,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 566,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 19,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 569,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 19,
     MP_CMOF_Class_Super_Class,
     Base + 2,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 565,
     MP_CMOF_Comment_Annotated_Element,
     Base + 19,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 566,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 19,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 566,
     MP_CMOF_Element_Owned_Comment,
     Base + 567,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 566,
     MP_CMOF_Constraint_Specification,
     Base + 568,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 567,
     MP_CMOF_Comment_Annotated_Element,
     Base + 566,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 569,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 19,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 569,
     MP_CMOF_Element_Owned_Comment,
     Base + 570,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 569,
     MP_CMOF_Constraint_Specification,
     Base + 571,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 570,
     MP_CMOF_Comment_Annotated_Element,
     Base + 569,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 105,
     MP_CMOF_Element_Owned_Comment,
     Base + 572,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 105,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 572,
     MP_CMOF_Comment_Annotated_Element,
     Base + 105,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 104,
     MP_CMOF_Element_Owned_Comment,
     Base + 573,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 104,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 573,
     MP_CMOF_Comment_Annotated_Element,
     Base + 104,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 106,
     MP_CMOF_Element_Owned_Comment,
     Base + 574,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 106,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 574,
     MP_CMOF_Comment_Annotated_Element,
     Base + 106,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 107,
     MP_CMOF_Element_Owned_Comment,
     Base + 575,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 107,
     MP_CMOF_Typed_Element_Type,
     Base + 190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 575,
     MP_CMOF_Comment_Annotated_Element,
     Base + 107,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 109,
     MP_CMOF_Element_Owned_Comment,
     Base + 576,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 109,
     MP_CMOF_Typed_Element_Type,
     Base + 196,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 576,
     MP_CMOF_Comment_Annotated_Element,
     Base + 109,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 102,
     MP_CMOF_Element_Owned_Comment,
     Base + 577,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 102,
     MP_CMOF_Property_Subsetted_Property,
     Base + 76,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 102,
     MP_CMOF_Property_Subsetted_Property,
     Base + 57,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 102,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 102,
     MP_CMOF_Typed_Element_Type,
     Base + 3,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 577,
     MP_CMOF_Comment_Annotated_Element,
     Base + 102,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 103,
     MP_CMOF_Element_Owned_Comment,
     Base + 578,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 103,
     MP_CMOF_Property_Subsetted_Property,
     Base + 76,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 103,
     MP_CMOF_Property_Subsetted_Property,
     Base + 57,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 103,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 103,
     MP_CMOF_Typed_Element_Type,
     Base + 7,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 578,
     MP_CMOF_Comment_Annotated_Element,
     Base + 103,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 67,
     MP_CMOF_Element_Owned_Comment,
     Base + 579,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Redefined_Property_Property,
     Base + 67,
     MP_CMOF_Property_Redefined_Property,
     Base + 39,
     MP_CMOF_Redefined_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 67,
     MP_CMOF_Typed_Element_Type,
     Base + 31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 579,
     MP_CMOF_Comment_Annotated_Element,
     Base + 67,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 68,
     MP_CMOF_Element_Owned_Comment,
     Base + 580,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 68,
     MP_CMOF_Property_Subsetted_Property,
     Base + 75,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 68,
     MP_CMOF_Typed_Element_Type,
     Base + 19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 580,
     MP_CMOF_Comment_Annotated_Element,
     Base + 68,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 108,
     MP_CMOF_Element_Owned_Comment,
     Base + 581,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 108,
     MP_CMOF_Typed_Element_Type,
     Base + 31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 581,
     MP_CMOF_Comment_Annotated_Element,
     Base + 108,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 64,
     MP_CMOF_Element_Owned_Comment,
     Base + 582,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Redefined_Property_Property,
     Base + 64,
     MP_CMOF_Property_Redefined_Property,
     Base + 38,
     MP_CMOF_Redefined_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 64,
     MP_CMOF_Typed_Element_Type,
     Base + 24,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 582,
     MP_CMOF_Comment_Annotated_Element,
     Base + 64,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 66,
     MP_CMOF_Property_Subsetted_Property,
     Base + 62,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 66,
     MP_CMOF_Typed_Element_Type,
     Base + 6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 65,
     MP_CMOF_Property_Subsetted_Property,
     Base + 62,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 65,
     MP_CMOF_Typed_Element_Type,
     Base + 6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 101,
     MP_CMOF_Property_Subsetted_Property,
     Base + 62,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 101,
     MP_CMOF_Typed_Element_Type,
     Base + 6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 583,
     MP_CMOF_Operation_Body_Condition,
     Base + 585,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 583,
     MP_CMOF_Element_Owned_Comment,
     Base + 584,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 583,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 587,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 583,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 585,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 584,
     MP_CMOF_Comment_Annotated_Element,
     Base + 583,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 585,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 583,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 585,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 104,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 585,
     MP_CMOF_Constraint_Specification,
     Base + 586,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 587,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 588,
     MP_CMOF_Operation_Body_Condition,
     Base + 590,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 588,
     MP_CMOF_Element_Owned_Comment,
     Base + 589,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 588,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 592,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 588,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 590,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 589,
     MP_CMOF_Comment_Annotated_Element,
     Base + 588,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 590,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 588,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 590,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 106,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 590,
     MP_CMOF_Constraint_Specification,
     Base + 591,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 592,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 593,
     MP_CMOF_Operation_Body_Condition,
     Base + 595,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 593,
     MP_CMOF_Element_Owned_Comment,
     Base + 594,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 593,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 597,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 593,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 595,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 594,
     MP_CMOF_Comment_Annotated_Element,
     Base + 593,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 595,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 593,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 595,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 107,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 595,
     MP_CMOF_Constraint_Specification,
     Base + 596,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 597,
     MP_CMOF_Typed_Element_Type,
     Base + 190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 598,
     MP_CMOF_Operation_Body_Condition,
     Base + 600,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 598,
     MP_CMOF_Element_Owned_Comment,
     Base + 599,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 598,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 602,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 598,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 600,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 599,
     MP_CMOF_Comment_Annotated_Element,
     Base + 598,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 600,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 598,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 600,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 109,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 600,
     MP_CMOF_Constraint_Specification,
     Base + 601,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 602,
     MP_CMOF_Typed_Element_Type,
     Base + 196,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 603,
     MP_CMOF_Operation_Body_Condition,
     Base + 605,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 603,
     MP_CMOF_Element_Owned_Comment,
     Base + 604,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 603,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 607,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 603,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 605,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 604,
     MP_CMOF_Comment_Annotated_Element,
     Base + 603,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 605,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 603,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 605,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 108,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 605,
     MP_CMOF_Constraint_Specification,
     Base + 606,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 607,
     MP_CMOF_Typed_Element_Type,
     Base + 31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 608,
     MP_CMOF_Operation_Body_Condition,
     Base + 612,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 608,
     MP_CMOF_Element_Owned_Comment,
     Base + 609,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 608,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 614,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 608,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 615,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 608,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 610,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 608,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 612,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     Base + 608,
     MP_CMOF_Operation_Precondition,
     Base + 610,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     Base + 608,
     MP_CMOF_Operation_Redefined_Operation,
     Base + 389,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 609,
     MP_CMOF_Comment_Annotated_Element,
     Base + 608,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 610,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 608,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 610,
     MP_CMOF_Constraint_Specification,
     Base + 611,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 612,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 608,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 612,
     MP_CMOF_Constraint_Specification,
     Base + 613,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 614,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 615,
     MP_CMOF_Typed_Element_Type,
     Base + 27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 616,
     MP_CMOF_Operation_Body_Condition,
     Base + 617,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 616,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 619,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 616,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 617,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 617,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 616,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 617,
     MP_CMOF_Constraint_Specification,
     Base + 618,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 619,
     MP_CMOF_Typed_Element_Type,
     Base + 24,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 24,
     MP_CMOF_Class_Owned_Attribute,
     Base + 117,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 24,
     MP_CMOF_Class_Owned_Attribute,
     Base + 118,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 24,
     MP_CMOF_Class_Owned_Attribute,
     Base + 119,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 24,
     MP_CMOF_Element_Owned_Comment,
     Base + 620,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 24,
     MP_CMOF_Class_Super_Class,
     Base + 32,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 24,
     MP_CMOF_Class_Super_Class,
     Base + 15,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 620,
     MP_CMOF_Comment_Annotated_Element,
     Base + 24,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 117,
     MP_CMOF_Element_Owned_Comment,
     Base + 621,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 117,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 621,
     MP_CMOF_Comment_Annotated_Element,
     Base + 117,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 118,
     MP_CMOF_Element_Owned_Comment,
     Base + 622,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 118,
     MP_CMOF_Typed_Element_Type,
     Base + 737,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 622,
     MP_CMOF_Comment_Annotated_Element,
     Base + 118,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 119,
     MP_CMOF_Element_Owned_Comment,
     Base + 623,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 119,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 119,
     MP_CMOF_Typed_Element_Type,
     Base + 19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 623,
     MP_CMOF_Comment_Annotated_Element,
     Base + 119,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 2,
     MP_CMOF_Class_Owned_Attribute,
     Base + 38,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 2,
     MP_CMOF_Class_Owned_Attribute,
     Base + 39,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 2,
     MP_CMOF_Element_Owned_Comment,
     Base + 624,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 2,
     MP_CMOF_Class_Owned_Operation,
     Base + 627,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 2,
     MP_CMOF_Class_Super_Class,
     Base + 14,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 2,
     MP_CMOF_Class_Super_Class,
     Base + 17,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 624,
     MP_CMOF_Comment_Annotated_Element,
     Base + 2,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 38,
     MP_CMOF_Element_Owned_Comment,
     Base + 625,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 38,
     MP_CMOF_Property_Subsetted_Property,
     Base + 61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 38,
     MP_CMOF_Typed_Element_Type,
     Base + 24,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 625,
     MP_CMOF_Comment_Annotated_Element,
     Base + 38,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 39,
     MP_CMOF_Element_Owned_Comment,
     Base + 626,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 39,
     MP_CMOF_Typed_Element_Type,
     Base + 31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 626,
     MP_CMOF_Comment_Annotated_Element,
     Base + 39,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 627,
     MP_CMOF_Operation_Body_Condition,
     Base + 629,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 627,
     MP_CMOF_Element_Owned_Comment,
     Base + 628,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 627,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 631,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 627,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 632,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 627,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 633,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 627,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 629,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     Base + 627,
     MP_CMOF_Operation_Redefined_Operation,
     Base + 715,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 628,
     MP_CMOF_Comment_Annotated_Element,
     Base + 627,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 629,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 627,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 629,
     MP_CMOF_Constraint_Specification,
     Base + 630,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 631,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 632,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 633,
     MP_CMOF_Typed_Element_Type,
     Base + 17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 10,
     MP_CMOF_Class_Owned_Attribute,
     Base + 89,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 10,
     MP_CMOF_Class_Owned_Attribute,
     Base + 86,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 10,
     MP_CMOF_Class_Owned_Attribute,
     Base + 87,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 10,
     MP_CMOF_Class_Owned_Attribute,
     Base + 88,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 10,
     MP_CMOF_Element_Owned_Comment,
     Base + 634,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 10,
     MP_CMOF_Class_Owned_Operation,
     Base + 645,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 10,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 635,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 10,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 638,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 10,
     MP_CMOF_Class_Super_Class,
     Base + 8,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 634,
     MP_CMOF_Comment_Annotated_Element,
     Base + 10,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 635,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 10,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 635,
     MP_CMOF_Element_Owned_Comment,
     Base + 636,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 635,
     MP_CMOF_Constraint_Specification,
     Base + 637,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 636,
     MP_CMOF_Comment_Annotated_Element,
     Base + 635,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 638,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 10,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 638,
     MP_CMOF_Element_Owned_Comment,
     Base + 639,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 638,
     MP_CMOF_Constraint_Specification,
     Base + 640,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 639,
     MP_CMOF_Comment_Annotated_Element,
     Base + 638,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 89,
     MP_CMOF_Element_Owned_Comment,
     Base + 641,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 89,
     MP_CMOF_Typed_Element_Type,
     Base + 747,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 641,
     MP_CMOF_Comment_Annotated_Element,
     Base + 89,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 86,
     MP_CMOF_Element_Owned_Comment,
     Base + 642,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 86,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 642,
     MP_CMOF_Comment_Annotated_Element,
     Base + 86,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 87,
     MP_CMOF_Element_Owned_Comment,
     Base + 643,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 87,
     MP_CMOF_Property_Subsetted_Property,
     Base + 52,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 87,
     MP_CMOF_Typed_Element_Type,
     Base + 23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 643,
     MP_CMOF_Comment_Annotated_Element,
     Base + 87,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 88,
     MP_CMOF_Element_Owned_Comment,
     Base + 644,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 88,
     MP_CMOF_Property_Subsetted_Property,
     Base + 51,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 88,
     MP_CMOF_Property_Subsetted_Property,
     Base + 85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 88,
     MP_CMOF_Typed_Element_Type,
     Base + 17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 644,
     MP_CMOF_Comment_Annotated_Element,
     Base + 88,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 645,
     MP_CMOF_Operation_Body_Condition,
     Base + 647,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 645,
     MP_CMOF_Element_Owned_Comment,
     Base + 646,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 645,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 649,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 645,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 647,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 646,
     MP_CMOF_Comment_Annotated_Element,
     Base + 645,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 647,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 645,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 647,
     MP_CMOF_Constraint_Specification,
     Base + 648,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 649,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 20,
     MP_CMOF_Class_Owned_Attribute,
     Base + 72,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 20,
     MP_CMOF_Class_Owned_Attribute,
     Base + 70,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 20,
     MP_CMOF_Class_Owned_Attribute,
     Base + 69,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 20,
     MP_CMOF_Class_Owned_Attribute,
     Base + 110,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 20,
     MP_CMOF_Class_Owned_Attribute,
     Base + 71,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 20,
     MP_CMOF_Class_Owned_Attribute,
     Base + 111,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 20,
     MP_CMOF_Element_Owned_Comment,
     Base + 650,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 20,
     MP_CMOF_Class_Owned_Operation,
     Base + 660,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 20,
     MP_CMOF_Class_Owned_Operation,
     Base + 665,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 20,
     MP_CMOF_Class_Owned_Operation,
     Base + 670,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 20,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 651,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 20,
     MP_CMOF_Class_Super_Class,
     Base + 23,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 20,
     MP_CMOF_Class_Super_Class,
     Base + 17,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 650,
     MP_CMOF_Comment_Annotated_Element,
     Base + 20,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 651,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 20,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 651,
     MP_CMOF_Element_Owned_Comment,
     Base + 652,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 651,
     MP_CMOF_Constraint_Specification,
     Base + 653,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 652,
     MP_CMOF_Comment_Annotated_Element,
     Base + 651,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 72,
     MP_CMOF_Element_Owned_Comment,
     Base + 654,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 72,
     MP_CMOF_Property_Subsetted_Property,
     Base + 61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 72,
     MP_CMOF_Typed_Element_Type,
     Base + 23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 654,
     MP_CMOF_Comment_Annotated_Element,
     Base + 72,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 70,
     MP_CMOF_Element_Owned_Comment,
     Base + 655,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 70,
     MP_CMOF_Property_Subsetted_Property,
     Base + 72,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 70,
     MP_CMOF_Typed_Element_Type,
     Base + 31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 655,
     MP_CMOF_Comment_Annotated_Element,
     Base + 70,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 69,
     MP_CMOF_Element_Owned_Comment,
     Base + 656,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 69,
     MP_CMOF_Property_Subsetted_Property,
     Base + 72,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 69,
     MP_CMOF_Typed_Element_Type,
     Base + 20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 656,
     MP_CMOF_Comment_Annotated_Element,
     Base + 69,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 110,
     MP_CMOF_Element_Owned_Comment,
     Base + 657,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 110,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 110,
     MP_CMOF_Typed_Element_Type,
     Base + 20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 657,
     MP_CMOF_Comment_Annotated_Element,
     Base + 110,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 71,
     MP_CMOF_Element_Owned_Comment,
     Base + 658,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 71,
     MP_CMOF_Property_Subsetted_Property,
     Base + 54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 71,
     MP_CMOF_Typed_Element_Type,
     Base + 22,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 658,
     MP_CMOF_Comment_Annotated_Element,
     Base + 71,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 111,
     MP_CMOF_Element_Owned_Comment,
     Base + 659,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 111,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 659,
     MP_CMOF_Comment_Annotated_Element,
     Base + 111,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 660,
     MP_CMOF_Operation_Body_Condition,
     Base + 662,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 660,
     MP_CMOF_Element_Owned_Comment,
     Base + 661,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 660,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 664,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 660,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 662,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     Base + 660,
     MP_CMOF_Operation_Redefined_Operation,
     Base + 287,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 661,
     MP_CMOF_Comment_Annotated_Element,
     Base + 660,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 662,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 660,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 662,
     MP_CMOF_Constraint_Specification,
     Base + 663,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 664,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 665,
     MP_CMOF_Operation_Body_Condition,
     Base + 667,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 665,
     MP_CMOF_Element_Owned_Comment,
     Base + 666,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 665,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 669,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 665,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 667,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 666,
     MP_CMOF_Comment_Annotated_Element,
     Base + 665,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 667,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 665,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 667,
     MP_CMOF_Constraint_Specification,
     Base + 668,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 669,
     MP_CMOF_Typed_Element_Type,
     Base + 23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 670,
     MP_CMOF_Operation_Body_Condition,
     Base + 674,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 670,
     MP_CMOF_Element_Owned_Comment,
     Base + 671,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 670,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 676,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 670,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 677,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 670,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 672,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 670,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 674,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     Base + 670,
     MP_CMOF_Operation_Precondition,
     Base + 672,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 671,
     MP_CMOF_Comment_Annotated_Element,
     Base + 670,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 672,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 670,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 672,
     MP_CMOF_Constraint_Specification,
     Base + 673,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 674,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 670,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 674,
     MP_CMOF_Constraint_Specification,
     Base + 675,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 676,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 677,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 21,
     MP_CMOF_Class_Owned_Attribute,
     Base + 114,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 21,
     MP_CMOF_Class_Owned_Attribute,
     Base + 112,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 21,
     MP_CMOF_Class_Owned_Attribute,
     Base + 113,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 21,
     MP_CMOF_Element_Owned_Comment,
     Base + 678,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 21,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 679,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 21,
     MP_CMOF_Class_Super_Class,
     Base + 8,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 678,
     MP_CMOF_Comment_Annotated_Element,
     Base + 21,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 679,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 21,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 679,
     MP_CMOF_Element_Owned_Comment,
     Base + 680,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 679,
     MP_CMOF_Constraint_Specification,
     Base + 681,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 680,
     MP_CMOF_Comment_Annotated_Element,
     Base + 679,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 114,
     MP_CMOF_Element_Owned_Comment,
     Base + 682,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 114,
     MP_CMOF_Typed_Element_Type,
     Base + 747,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 682,
     MP_CMOF_Comment_Annotated_Element,
     Base + 114,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 112,
     MP_CMOF_Element_Owned_Comment,
     Base + 683,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 112,
     MP_CMOF_Property_Subsetted_Property,
     Base + 52,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 112,
     MP_CMOF_Typed_Element_Type,
     Base + 20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 683,
     MP_CMOF_Comment_Annotated_Element,
     Base + 112,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 113,
     MP_CMOF_Element_Owned_Comment,
     Base + 684,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 113,
     MP_CMOF_Property_Subsetted_Property,
     Base + 51,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 113,
     MP_CMOF_Property_Subsetted_Property,
     Base + 85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 113,
     MP_CMOF_Typed_Element_Type,
     Base + 17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 684,
     MP_CMOF_Comment_Annotated_Element,
     Base + 113,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 22,
     MP_CMOF_Class_Owned_Attribute,
     Base + 116,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 22,
     MP_CMOF_Class_Owned_Attribute,
     Base + 115,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 22,
     MP_CMOF_Element_Owned_Comment,
     Base + 685,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 22,
     MP_CMOF_Class_Super_Class,
     Base + 8,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 685,
     MP_CMOF_Comment_Annotated_Element,
     Base + 22,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 116,
     MP_CMOF_Element_Owned_Comment,
     Base + 686,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 116,
     MP_CMOF_Property_Subsetted_Property,
     Base + 51,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 116,
     MP_CMOF_Property_Subsetted_Property,
     Base + 85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 116,
     MP_CMOF_Typed_Element_Type,
     Base + 20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 686,
     MP_CMOF_Comment_Annotated_Element,
     Base + 116,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 115,
     MP_CMOF_Element_Owned_Comment,
     Base + 687,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 115,
     MP_CMOF_Property_Subsetted_Property,
     Base + 52,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 115,
     MP_CMOF_Typed_Element_Type,
     Base + 20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 687,
     MP_CMOF_Comment_Annotated_Element,
     Base + 115,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 31,
     MP_CMOF_Class_Owned_Attribute,
     Base + 134,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 31,
     MP_CMOF_Element_Owned_Comment,
     Base + 688,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 31,
     MP_CMOF_Class_Owned_Operation,
     Base + 690,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 31,
     MP_CMOF_Class_Super_Class,
     Base + 23,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 31,
     MP_CMOF_Class_Super_Class,
     Base + 16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 688,
     MP_CMOF_Comment_Annotated_Element,
     Base + 31,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 134,
     MP_CMOF_Element_Owned_Comment,
     Base + 689,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 134,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 134,
     MP_CMOF_Typed_Element_Type,
     Base + 20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 689,
     MP_CMOF_Comment_Annotated_Element,
     Base + 134,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 690,
     MP_CMOF_Operation_Body_Condition,
     Base + 692,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 690,
     MP_CMOF_Element_Owned_Comment,
     Base + 691,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 690,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 694,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 690,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 695,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 690,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 692,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 691,
     MP_CMOF_Comment_Annotated_Element,
     Base + 690,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 692,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 690,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 692,
     MP_CMOF_Constraint_Specification,
     Base + 693,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 694,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 695,
     MP_CMOF_Typed_Element_Type,
     Base + 31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 16,
     MP_CMOF_Class_Owned_Attribute,
     Base + 95,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 16,
     MP_CMOF_Class_Owned_Attribute,
     Base + 98,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 16,
     MP_CMOF_Class_Owned_Attribute,
     Base + 96,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 16,
     MP_CMOF_Class_Owned_Attribute,
     Base + 97,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 16,
     MP_CMOF_Element_Owned_Comment,
     Base + 696,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 16,
     MP_CMOF_Class_Owned_Operation,
     Base + 710,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 16,
     MP_CMOF_Class_Owned_Operation,
     Base + 715,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 16,
     MP_CMOF_Class_Owned_Operation,
     Base + 722,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     Base + 16,
     MP_CMOF_Class_Owned_Operation,
     Base + 727,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 16,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 697,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 16,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 700,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 16,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 703,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 16,
     MP_CMOF_Class_Super_Class,
     Base + 9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 696,
     MP_CMOF_Comment_Annotated_Element,
     Base + 16,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 697,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 16,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 697,
     MP_CMOF_Element_Owned_Comment,
     Base + 698,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 697,
     MP_CMOF_Constraint_Specification,
     Base + 699,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 698,
     MP_CMOF_Comment_Annotated_Element,
     Base + 697,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 700,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 16,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 700,
     MP_CMOF_Element_Owned_Comment,
     Base + 701,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 700,
     MP_CMOF_Constraint_Specification,
     Base + 702,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 701,
     MP_CMOF_Comment_Annotated_Element,
     Base + 700,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 703,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 16,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 703,
     MP_CMOF_Element_Owned_Comment,
     Base + 704,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 703,
     MP_CMOF_Constraint_Specification,
     Base + 705,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 704,
     MP_CMOF_Comment_Annotated_Element,
     Base + 703,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 95,
     MP_CMOF_Element_Owned_Comment,
     Base + 706,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 95,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 706,
     MP_CMOF_Comment_Annotated_Element,
     Base + 95,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 98,
     MP_CMOF_Element_Owned_Comment,
     Base + 707,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 98,
     MP_CMOF_Typed_Element_Type,
     Base + 747,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 707,
     MP_CMOF_Comment_Annotated_Element,
     Base + 98,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 96,
     MP_CMOF_Element_Owned_Comment,
     Base + 708,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 96,
     MP_CMOF_Property_Subsetted_Property,
     Base + 85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 96,
     MP_CMOF_Typed_Element_Type,
     Base + 17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 708,
     MP_CMOF_Comment_Annotated_Element,
     Base + 96,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 97,
     MP_CMOF_Element_Owned_Comment,
     Base + 709,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 97,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 709,
     MP_CMOF_Comment_Annotated_Element,
     Base + 97,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 710,
     MP_CMOF_Operation_Body_Condition,
     Base + 712,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 710,
     MP_CMOF_Element_Owned_Comment,
     Base + 711,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 710,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 714,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 710,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 712,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 711,
     MP_CMOF_Comment_Annotated_Element,
     Base + 710,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 712,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 710,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 712,
     MP_CMOF_Constraint_Specification,
     Base + 713,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 714,
     MP_CMOF_Typed_Element_Type,
     Base + 17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 715,
     MP_CMOF_Operation_Body_Condition,
     Base + 717,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 715,
     MP_CMOF_Element_Owned_Comment,
     Base + 716,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 715,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 719,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 715,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 720,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 715,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 721,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 715,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 717,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 716,
     MP_CMOF_Comment_Annotated_Element,
     Base + 715,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 717,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 715,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 717,
     MP_CMOF_Constraint_Specification,
     Base + 718,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 719,
     MP_CMOF_Typed_Element_Type,
     Base + 192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 720,
     MP_CMOF_Typed_Element_Type,
     Base + 16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 721,
     MP_CMOF_Typed_Element_Type,
     Base + 17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 722,
     MP_CMOF_Operation_Body_Condition,
     Base + 724,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 722,
     MP_CMOF_Element_Owned_Comment,
     Base + 723,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 722,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 726,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 722,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 724,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 723,
     MP_CMOF_Comment_Annotated_Element,
     Base + 722,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 724,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 722,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 724,
     MP_CMOF_Constraint_Specification,
     Base + 725,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 726,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 727,
     MP_CMOF_Operation_Body_Condition,
     Base + 729,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 727,
     MP_CMOF_Element_Owned_Comment,
     Base + 728,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 727,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 731,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 727,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 729,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 728,
     MP_CMOF_Comment_Annotated_Element,
     Base + 727,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 729,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 727,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 729,
     MP_CMOF_Constraint_Specification,
     Base + 730,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 731,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 13,
     MP_CMOF_Class_Owned_Attribute,
     Base + 56,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 13,
     MP_CMOF_Element_Owned_Comment,
     Base + 732,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 13,
     MP_CMOF_Class_Super_Class,
     Base + 33,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 732,
     MP_CMOF_Comment_Annotated_Element,
     Base + 13,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 56,
     MP_CMOF_Element_Owned_Comment,
     Base + 733,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 56,
     MP_CMOF_Property_Subsetted_Property,
     Base + 54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 56,
     MP_CMOF_Typed_Element_Type,
     Base + 33,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 733,
     MP_CMOF_Comment_Annotated_Element,
     Base + 56,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 5,
     MP_CMOF_Class_Owned_Attribute,
     Base + 82,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 5,
     MP_CMOF_Class_Owned_Attribute,
     Base + 47,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 5,
     MP_CMOF_Element_Owned_Comment,
     Base + 734,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 5,
     MP_CMOF_Class_Super_Class,
     Base + 9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 734,
     MP_CMOF_Comment_Annotated_Element,
     Base + 5,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 82,
     MP_CMOF_Element_Owned_Comment,
     Base + 735,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 82,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 735,
     MP_CMOF_Comment_Annotated_Element,
     Base + 82,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 47,
     MP_CMOF_Element_Owned_Comment,
     Base + 736,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 47,
     MP_CMOF_Typed_Element_Type,
     Base + 9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 736,
     MP_CMOF_Comment_Annotated_Element,
     Base + 47,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 737,
     MP_CMOF_Element_Owned_Comment,
     Base + 738,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     Base + 737,
     MP_CMOF_Enumeration_Owned_Literal,
     Base + 739,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     Base + 737,
     MP_CMOF_Enumeration_Owned_Literal,
     Base + 741,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     Base + 737,
     MP_CMOF_Enumeration_Owned_Literal,
     Base + 743,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     Base + 737,
     MP_CMOF_Enumeration_Owned_Literal,
     Base + 745,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 738,
     MP_CMOF_Comment_Annotated_Element,
     Base + 737,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 739,
     MP_CMOF_Element_Owned_Comment,
     Base + 740,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 740,
     MP_CMOF_Comment_Annotated_Element,
     Base + 739,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 741,
     MP_CMOF_Element_Owned_Comment,
     Base + 742,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 742,
     MP_CMOF_Comment_Annotated_Element,
     Base + 741,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 743,
     MP_CMOF_Element_Owned_Comment,
     Base + 744,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 744,
     MP_CMOF_Comment_Annotated_Element,
     Base + 743,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 745,
     MP_CMOF_Element_Owned_Comment,
     Base + 746,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 746,
     MP_CMOF_Comment_Annotated_Element,
     Base + 745,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 747,
     MP_CMOF_Element_Owned_Comment,
     Base + 748,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     Base + 747,
     MP_CMOF_Enumeration_Owned_Literal,
     Base + 755,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     Base + 747,
     MP_CMOF_Enumeration_Owned_Literal,
     Base + 757,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     Base + 747,
     MP_CMOF_Enumeration_Owned_Literal,
     Base + 759,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     Base + 747,
     MP_CMOF_Enumeration_Owned_Literal,
     Base + 761,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Datatype,
     Base + 747,
     MP_CMOF_Data_Type_Owned_Operation,
     Base + 749,
     MP_CMOF_Operation_Datatype);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 748,
     MP_CMOF_Comment_Annotated_Element,
     Base + 747,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     Base + 749,
     MP_CMOF_Operation_Body_Condition,
     Base + 751,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 749,
     MP_CMOF_Element_Owned_Comment,
     Base + 750,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 749,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 753,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     Base + 749,
     MP_CMOF_Operation_Owned_Parameter,
     Base + 754,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     Base + 749,
     MP_CMOF_Namespace_Owned_Rule,
     Base + 751,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 750,
     MP_CMOF_Comment_Annotated_Element,
     Base + 749,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     Base + 751,
     MP_CMOF_Constraint_Constrained_Element,
     Base + 749,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     Base + 751,
     MP_CMOF_Constraint_Specification,
     Base + 752,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 753,
     MP_CMOF_Typed_Element_Type,
     Base + 747,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 754,
     MP_CMOF_Typed_Element_Type,
     Base + 747,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 755,
     MP_CMOF_Element_Owned_Comment,
     Base + 756,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 756,
     MP_CMOF_Comment_Annotated_Element,
     Base + 755,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 757,
     MP_CMOF_Element_Owned_Comment,
     Base + 758,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 758,
     MP_CMOF_Comment_Annotated_Element,
     Base + 757,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 759,
     MP_CMOF_Element_Owned_Comment,
     Base + 760,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 760,
     MP_CMOF_Comment_Annotated_Element,
     Base + 759,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     Base + 761,
     MP_CMOF_Element_Owned_Comment,
     Base + 762,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     Base + 762,
     MP_CMOF_Comment_Annotated_Element,
     Base + 761,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 153,
     MP_CMOF_Association_Member_End,
     Base + 135,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 153,
     MP_CMOF_Association_Member_End,
     Base + 763,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 153,
     MP_CMOF_Association_Owned_End,
     Base + 763,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 763,
     MP_CMOF_Typed_Element_Type,
     Base + 32,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 155,
     MP_CMOF_Association_Member_End,
     Base + 40,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 155,
     MP_CMOF_Association_Member_End,
     Base + 121,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 156,
     MP_CMOF_Association_Member_End,
     Base + 41,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 156,
     MP_CMOF_Association_Member_End,
     Base + 102,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 158,
     MP_CMOF_Association_Member_End,
     Base + 37,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 158,
     MP_CMOF_Association_Member_End,
     Base + 129,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 159,
     MP_CMOF_Association_Member_End,
     Base + 43,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 159,
     MP_CMOF_Association_Member_End,
     Base + 764,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 159,
     MP_CMOF_Association_Owned_End,
     Base + 764,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 764,
     MP_CMOF_Property_Subsetted_Property,
     Base + 76,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 764,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 162,
     MP_CMOF_Association_Member_End,
     Base + 73,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 162,
     MP_CMOF_Association_Member_End,
     Base + 765,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 162,
     MP_CMOF_Association_Owned_End,
     Base + 765,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 765,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 164,
     MP_CMOF_Association_Member_End,
     Base + 74,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 164,
     MP_CMOF_Association_Member_End,
     Base + 766,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 164,
     MP_CMOF_Association_Owned_End,
     Base + 766,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 766,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 166,
     MP_CMOF_Association_Member_End,
     Base + 128,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 166,
     MP_CMOF_Association_Member_End,
     Base + 767,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 166,
     MP_CMOF_Association_Owned_End,
     Base + 767,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 767,
     MP_CMOF_Typed_Element_Type,
     Base + 26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 168,
     MP_CMOF_Association_Member_End,
     Base + 42,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 168,
     MP_CMOF_Association_Member_End,
     Base + 768,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 168,
     MP_CMOF_Association_Owned_End,
     Base + 768,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 768,
     MP_CMOF_Typed_Element_Type,
     Base + 3,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 170,
     MP_CMOF_Association_Member_End,
     Base + 34,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 170,
     MP_CMOF_Association_Member_End,
     Base + 769,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 170,
     MP_CMOF_Association_Owned_End,
     Base + 769,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 769,
     MP_CMOF_Typed_Element_Type,
     Base + 1,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 172,
     MP_CMOF_Association_Member_End,
     Base + 55,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 172,
     MP_CMOF_Association_Member_End,
     Base + 90,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 174,
     MP_CMOF_Association_Member_End,
     Base + 49,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 174,
     MP_CMOF_Association_Member_End,
     Base + 122,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 175,
     MP_CMOF_Association_Member_End,
     Base + 50,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 175,
     MP_CMOF_Association_Member_End,
     Base + 103,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 177,
     MP_CMOF_Association_Member_End,
     Base + 67,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 177,
     MP_CMOF_Association_Member_End,
     Base + 770,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 177,
     MP_CMOF_Association_Owned_End,
     Base + 770,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 770,
     MP_CMOF_Typed_Element_Type,
     Base + 19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 179,
     MP_CMOF_Association_Member_End,
     Base + 68,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 179,
     MP_CMOF_Association_Member_End,
     Base + 771,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 179,
     MP_CMOF_Association_Owned_End,
     Base + 771,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 771,
     MP_CMOF_Typed_Element_Type,
     Base + 19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 181,
     MP_CMOF_Association_Member_End,
     Base + 38,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 181,
     MP_CMOF_Association_Member_End,
     Base + 772,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 181,
     MP_CMOF_Association_Owned_End,
     Base + 772,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 772,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 772,
     MP_CMOF_Typed_Element_Type,
     Base + 2,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 183,
     MP_CMOF_Association_Member_End,
     Base + 39,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 183,
     MP_CMOF_Association_Member_End,
     Base + 773,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 183,
     MP_CMOF_Association_Owned_End,
     Base + 773,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 773,
     MP_CMOF_Typed_Element_Type,
     Base + 2,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 185,
     MP_CMOF_Association_Member_End,
     Base + 59,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 185,
     MP_CMOF_Association_Member_End,
     Base + 774,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 185,
     MP_CMOF_Association_Owned_End,
     Base + 774,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 774,
     MP_CMOF_Typed_Element_Type,
     Base + 17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 187,
     MP_CMOF_Association_Member_End,
     Base + 112,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 187,
     MP_CMOF_Association_Member_End,
     Base + 775,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 187,
     MP_CMOF_Association_Owned_End,
     Base + 775,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 775,
     MP_CMOF_Typed_Element_Type,
     Base + 21,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 136,
     MP_CMOF_Association_Member_End,
     Base + 87,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 136,
     MP_CMOF_Association_Member_End,
     Base + 776,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 136,
     MP_CMOF_Association_Owned_End,
     Base + 776,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 776,
     MP_CMOF_Typed_Element_Type,
     Base + 10,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 137,
     MP_CMOF_Association_Member_End,
     Base + 58,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 137,
     MP_CMOF_Association_Member_End,
     Base + 88,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 138,
     MP_CMOF_Association_Member_End,
     Base + 63,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 138,
     MP_CMOF_Association_Member_End,
     Base + 113,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 139,
     MP_CMOF_Association_Member_End,
     Base + 72,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 139,
     MP_CMOF_Association_Member_End,
     Base + 777,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 139,
     MP_CMOF_Association_Owned_End,
     Base + 777,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 777,
     MP_CMOF_Property_Subsetted_Property,
     Base + 96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 777,
     MP_CMOF_Typed_Element_Type,
     Base + 20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 141,
     MP_CMOF_Association_Member_End,
     Base + 70,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 141,
     MP_CMOF_Association_Member_End,
     Base + 134,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 143,
     MP_CMOF_Association_Member_End,
     Base + 35,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 143,
     MP_CMOF_Association_Member_End,
     Base + 120,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 144,
     MP_CMOF_Association_Member_End,
     Base + 69,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 144,
     MP_CMOF_Association_Member_End,
     Base + 110,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 145,
     MP_CMOF_Association_Member_End,
     Base + 108,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 145,
     MP_CMOF_Association_Member_End,
     Base + 778,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 145,
     MP_CMOF_Association_Owned_End,
     Base + 778,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 778,
     MP_CMOF_Typed_Element_Type,
     Base + 19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 146,
     MP_CMOF_Association_Member_End,
     Base + 71,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 146,
     MP_CMOF_Association_Member_End,
     Base + 116,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 147,
     MP_CMOF_Association_Member_End,
     Base + 115,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 147,
     MP_CMOF_Association_Member_End,
     Base + 779,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 147,
     MP_CMOF_Association_Owned_End,
     Base + 779,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 779,
     MP_CMOF_Typed_Element_Type,
     Base + 22,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 148,
     MP_CMOF_Association_Member_End,
     Base + 54,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 148,
     MP_CMOF_Association_Member_End,
     Base + 85,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 149,
     MP_CMOF_Association_Member_End,
     Base + 47,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 149,
     MP_CMOF_Association_Member_End,
     Base + 780,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 149,
     MP_CMOF_Association_Owned_End,
     Base + 780,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 780,
     MP_CMOF_Typed_Element_Type,
     Base + 5,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 150,
     MP_CMOF_Association_Member_End,
     Base + 77,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 150,
     MP_CMOF_Association_Member_End,
     Base + 781,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 150,
     MP_CMOF_Association_Owned_End,
     Base + 781,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 781,
     MP_CMOF_Typed_Element_Type,
     Base + 28,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 151,
     MP_CMOF_Association_Member_End,
     Base + 51,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 151,
     MP_CMOF_Association_Member_End,
     Base + 782,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 151,
     MP_CMOF_Association_Owned_End,
     Base + 782,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 782,
     MP_CMOF_Typed_Element_Type,
     Base + 8,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 152,
     MP_CMOF_Association_Member_End,
     Base + 52,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 152,
     MP_CMOF_Association_Member_End,
     Base + 783,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 152,
     MP_CMOF_Association_Owned_End,
     Base + 783,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 783,
     MP_CMOF_Typed_Element_Type,
     Base + 8,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 154,
     MP_CMOF_Association_Member_End,
     Base + 76,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 154,
     MP_CMOF_Association_Member_End,
     Base + 784,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 154,
     MP_CMOF_Association_Owned_End,
     Base + 784,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 784,
     MP_CMOF_Typed_Element_Type,
     Base + 27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 157,
     MP_CMOF_Association_Member_End,
     Base + 75,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 157,
     MP_CMOF_Association_Member_End,
     Base + 785,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 157,
     MP_CMOF_Association_Owned_End,
     Base + 785,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 785,
     MP_CMOF_Typed_Element_Type,
     Base + 27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 160,
     MP_CMOF_Association_Member_End,
     Base + 44,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 160,
     MP_CMOF_Association_Member_End,
     Base + 57,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 161,
     MP_CMOF_Association_Member_End,
     Base + 48,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 161,
     MP_CMOF_Association_Member_End,
     Base + 786,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 161,
     MP_CMOF_Association_Owned_End,
     Base + 786,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 786,
     MP_CMOF_Typed_Element_Type,
     Base + 6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 163,
     MP_CMOF_Association_Member_End,
     Base + 84,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 163,
     MP_CMOF_Association_Member_End,
     Base + 787,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 163,
     MP_CMOF_Association_Owned_End,
     Base + 787,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 787,
     MP_CMOF_Property_Subsetted_Property,
     Base + 85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 787,
     MP_CMOF_Typed_Element_Type,
     Base + 6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 165,
     MP_CMOF_Association_Member_End,
     Base + 45,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 165,
     MP_CMOF_Association_Member_End,
     Base + 788,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 165,
     MP_CMOF_Association_Owned_End,
     Base + 788,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 788,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 167,
     MP_CMOF_Association_Member_End,
     Base + 61,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 167,
     MP_CMOF_Association_Member_End,
     Base + 96,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 169,
     MP_CMOF_Association_Member_End,
     Base + 60,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 169,
     MP_CMOF_Association_Member_End,
     Base + 789,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 169,
     MP_CMOF_Association_Owned_End,
     Base + 789,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 789,
     MP_CMOF_Typed_Element_Type,
     Base + 17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 171,
     MP_CMOF_Association_Member_End,
     Base + 56,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 171,
     MP_CMOF_Association_Member_End,
     Base + 790,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 171,
     MP_CMOF_Association_Owned_End,
     Base + 790,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 790,
     MP_CMOF_Property_Subsetted_Property,
     Base + 85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 790,
     MP_CMOF_Typed_Element_Type,
     Base + 13,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 173,
     MP_CMOF_Association_Member_End,
     Base + 36,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 173,
     MP_CMOF_Association_Member_End,
     Base + 791,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 173,
     MP_CMOF_Association_Owned_End,
     Base + 791,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 791,
     MP_CMOF_Typed_Element_Type,
     Base + 1,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 176,
     MP_CMOF_Association_Member_End,
     Base + 64,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 176,
     MP_CMOF_Association_Member_End,
     Base + 119,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 178,
     MP_CMOF_Association_Member_End,
     Base + 53,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 178,
     MP_CMOF_Association_Member_End,
     Base + 792,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 178,
     MP_CMOF_Association_Owned_End,
     Base + 792,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 792,
     MP_CMOF_Property_Subsetted_Property,
     Base + 85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 792,
     MP_CMOF_Typed_Element_Type,
     Base + 9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 180,
     MP_CMOF_Association_Member_End,
     Base + 46,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 180,
     MP_CMOF_Association_Member_End,
     Base + 793,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 180,
     MP_CMOF_Association_Owned_End,
     Base + 793,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 793,
     MP_CMOF_Typed_Element_Type,
     Base + 4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 182,
     MP_CMOF_Association_Member_End,
     Base + 66,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 182,
     MP_CMOF_Association_Member_End,
     Base + 794,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 182,
     MP_CMOF_Association_Owned_End,
     Base + 794,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 794,
     MP_CMOF_Property_Subsetted_Property,
     Base + 83,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 794,
     MP_CMOF_Typed_Element_Type,
     Base + 19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 184,
     MP_CMOF_Association_Member_End,
     Base + 65,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 184,
     MP_CMOF_Association_Member_End,
     Base + 795,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 184,
     MP_CMOF_Association_Owned_End,
     Base + 795,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 795,
     MP_CMOF_Property_Subsetted_Property,
     Base + 83,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 795,
     MP_CMOF_Typed_Element_Type,
     Base + 19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 186,
     MP_CMOF_Association_Member_End,
     Base + 101,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 186,
     MP_CMOF_Association_Member_End,
     Base + 796,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 186,
     MP_CMOF_Association_Owned_End,
     Base + 796,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 796,
     MP_CMOF_Property_Subsetted_Property,
     Base + 83,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 796,
     MP_CMOF_Typed_Element_Type,
     Base + 19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 188,
     MP_CMOF_Association_Member_End,
     Base + 62,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 188,
     MP_CMOF_Association_Member_End,
     Base + 83,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 30,
     MP_CMOF_Class_Owned_Attribute,
     Base + 131,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 30,
     MP_CMOF_Class_Owned_Attribute,
     Base + 133,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 30,
     MP_CMOF_Class_Owned_Attribute,
     Base + 78,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     Base + 30,
     MP_CMOF_Class_Owned_Attribute,
     Base + 132,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     Base + 30,
     MP_CMOF_Class_Super_Class,
     Base + 9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 131,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 133,
     MP_CMOF_Typed_Element_Type,
     Base + 194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 78,
     MP_CMOF_Typed_Element_Type,
     Base + 9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 132,
     MP_CMOF_Property_Subsetted_Property,
     Base + 85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 132,
     MP_CMOF_Typed_Element_Type,
     Base + 9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 140,
     MP_CMOF_Association_Member_End,
     Base + 78,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 140,
     MP_CMOF_Association_Member_End,
     Base + 797,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 140,
     MP_CMOF_Association_Owned_End,
     Base + 797,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 797,
     MP_CMOF_Typed_Element_Type,
     Base + 30,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 142,
     MP_CMOF_Association_Member_End,
     Base + 132,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     Base + 142,
     MP_CMOF_Association_Member_End,
     Base + 798,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     Base + 142,
     MP_CMOF_Association_Owned_End,
     Base + 798,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     Base + 798,
     MP_CMOF_Property_Subsetted_Property,
     Base + 54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     Base + 798,
     MP_CMOF_Typed_Element_Type,
     Base + 30,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Element_Tag,
     Base + 799,
     MP_CMOF_Tag_Element,
     Base + 189,
     MP_CMOF_Element_Tag);
   Internal_Create_Link
    (MA_CMOF_Element_Tag,
     Base + 800,
     MP_CMOF_Tag_Element,
     Base + 189,
     MP_CMOF_Element_Tag);

end AMF.Internals.Tables.CMOF_Setup;
