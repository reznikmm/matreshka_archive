------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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

package Engines is

   type Text_Property is
     (Code,
      Condition,
      Lower, Upper,    --  Code for range return X'First X'Last
      Intrinsic_Name,
      Associations, --  names of record assotiation a,b,c
      Tag_Name,  --  external tag name image
      Method_Name,  --  name of subrogram in virtual table
      Address,  --  Access or address of an object
      Initialize,
      --  Code to initialize an object of given type
      Typed_Array_Initialize,  --  Iniitalize component of Typed_Array aggr
      Typed_Array_Item_Type,  --  Elementary type of Typed_Array item
      Assign,  --  Code to copy component, discriminant or variant
      Bounds,  --  "First,Last" bounds for nested named array aggregate
      Size);   --  value of S'Size or X'Size

   type Boolean_Property is
     (Export,
      Has_Simple_Output,  --  Has parameters of Is_Simple_Type and
                          --  has [in] out mode
      Is_Simple_Type,   --  Is non-object type (Number, Boolean, etc)
      Is_Simple_Ref,    --  Wrapper for non-object type (Number, Boolean, etc)
      Is_Array_Of_Simple,  --  Is array elements Is_Simple_Type
      Inside_Package,   --  Enclosing Element is a package
      Is_Dispatching);  --  Declaration/call is a dispatching subprogram

   type Integer_Property is
     (Alignment);  --  value of S'Alignment or X'Alignment

   type Convention_Property is
     (Call_Convention);

   type Convention_Kind is
     (Intrinsic,
      JavaScript_Property_Getter,  --  obj.prop
      JavaScript_Property_Setter,  --  obj.prop = val
      JavaScript_Function,         --  funct (args)
      JavaScript_Method,           --  obj.funct (args)
      JavaScript_Getter,           --  collection.getter (index - 1)
      Unspecified);

end Engines;
