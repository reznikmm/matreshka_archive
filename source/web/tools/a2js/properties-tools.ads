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
-- Copyright © 2015-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
with Asis;
with League.Strings;

package Properties.Tools is

   function Get_Aspect
     (Element : Asis.Declaration;
      Name    : Wide_String) return Wide_String;

   function Library_Level_Header
     (Unit : Asis.Compilation_Unit) return League.Strings.Universal_String;

   function Corresponding_Type_Subprograms
     (Definition : Asis.Definition) return Asis.Declaration_List;
   --  For given type definition return list of primitive subprograms

   function Corresponding_Type_Components
     (Definition : Asis.Definition) return Asis.Declaration_List;
   --  For given (non-array complex) type definition return list of component

   function Corresponding_Type_Discriminants
     (Definition : Asis.Definition) return Asis.Declaration_List;
   --  For given (non-array complex) type definition return list of discr-s.

   function Is_Primitive_Subprogram
     (Definition : Asis.Definition;
      Subprogram : Asis.Declaration) return Boolean;
   --  Check if given Subprogram is primitive subprograms for given type

   function Parameter_Profile
     (Prefix : Asis.Expression) return Asis.Parameter_Specification_List;
   --  For given prefix of procedure call return corresponding parameter
   --  declaration list

   function Corresponding_Type
     (Declaration : Asis.Declaration) return Asis.Declaration;
   --  Return type declaration for given primitive subprogram

   function Corresponding_Declaration
     (Name : Asis.Expression) return Asis.Declaration;
   --  Like Asis.Expressions.Corresponding_Name_Declaration, but takes
   --  selector of selected_component

   function Type_Declaration_View
     (Declaration : Asis.Declaration) return Asis.Definition;
   --  Like Asis.Declarations.Type_Declaration_View but expand derived types

   function Array_Component_Definition
     (Type_Definition : Asis.Type_Definition)
      return Asis.Component_Definition;
   --  Like Asis.Definitions.Array_Component_Definition, but takes into account
   --  implicit dereference.

   function Is_Equal_Type
     (Left  : Asis.Declaration;
      Right : Asis.Declaration) return Boolean;

   function Is_Array (Exp : Asis.Expression) return Boolean;

   function Enclosing_Declaration (X : Asis.Element) return Asis.Declaration;

   function Has_Controlling_Result (Func : Asis.Declaration) return Boolean;
   --  Check if function Func is like 'function F return T' where T is tagged

   function Is_Array_Buffer (Element : Asis.Declaration) return Boolean;
   --  Check if given type declaration has corresponding pragma
   --  JavaScript_Array_Buffer

   function Join
     (Left, Right : League.Strings.Universal_String)
      return League.Strings.Universal_String;
   --  Return Left & Right

   function Comma
     (Left, Right : League.Strings.Universal_String)
      return League.Strings.Universal_String;
   --  Return Left & "," & Right

   function "or" (Left, Right : Boolean)
     return Boolean is (Standard."or" (Left, Right));

   function Get_Dimension (Exp : Asis.Expression) return Natural;
   --  Return dimention of an array aggregate Exp. Return 0 if subaggregate

   function Attribute_Definition
     (Decl : Asis.Declaration;
      Attr : Wide_String) return Asis.Expression;
   --  find corresponding attribute declaration

end Properties.Tools;
