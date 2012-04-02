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
with League.String_Vectors;

with AMF.Elements;
with AMF.Internals.OCL_Environments;

with AMF.UML.Namespaces;

with AMF.OCL.Boolean_Literal_Exps;
with AMF.OCL.Enum_Literal_Exps;
with AMF.OCL.Literal_Exps;
with AMF.OCL.Ocl_Expressions;
with AMF.OCL.Primitive_Literal_Exps;
with AMF.OCL.String_Literal_Exps;

package body AMF.Internals.OCL_Parser is

   use AMF.Internals.OCL_Environments;
   use AMF.Internals.OCL_Scanners;
   use AMF.OCL.Boolean_Literal_Exps;
   use AMF.OCL.Enum_Literal_Exps;
   use AMF.OCL.Literal_Exps;
   use AMF.OCL.Ocl_Expressions;
   use AMF.OCL.Primitive_Literal_Exps;
   use AMF.OCL.String_Literal_Exps;

   Bag_Name               : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Bag");
   Boolean_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Boolean");
   Collection_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Collection");
   Integer_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Integer");
   Ocl_Any_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("OclAny ");
   Ocl_Invalid_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("OclInvalid");
   Ocl_Message_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("OclMessage");
   Ocl_Void_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("OclVoid");
   Ordered_Set_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("OrderedSet");
   Real_Name              : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Real");
   Self_Name              : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("self");
   Sequence_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Sequence");
   Set_Name               : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Set");
   String_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("String");
   Tuple_Name             : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Tuple");
   Unlimited_Natural_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("UnlimitedNatural");

   function Create_Boolean_Literal_Exp
     return not null OCL_Boolean_Literal_Exp_Access;

   function Create_String_Literal_Exp
     return not null OCL_String_Literal_Exp_Access;

   function Get_Environment_With_Parents
    (Namespace : not null AMF.UML.Namespaces.UML_Namespace_Access)
       return OCL_Environment;
   --  [OCL 2.3.1] 9.5.3 Namespace
   --
   --  This operation returns an Environment that contains a reference to its
   --  parent environment, which is itself created by this operation by means
   --  of a recursive call, and therefore contains a parent environment too.

   procedure Parse_Ocl_Expression_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Env     : OCL_Environment;
     Ast     : out OCL_Ocl_Expression_Access);
   --  [OCL 2.3.1] 9.4.2 OclExpressionCS

   procedure Parse_Simple_Name_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out League.Strings.Universal_String);
   --  [OCL 2.3.1] 9.4.4 simpleNameCS

   procedure Parse_Restricted_Keyword_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out League.Strings.Universal_String);
   --  [OCL 2.3.1] 9.4.5 restrictedKeywordCS

   procedure Parse_Unreserved_Simple_Name_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out League.Strings.Universal_String);
   --  [OCL 2.3.1] 9.4.6 unreservedSimpleNameCS

   procedure Parse_Path_Name_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out League.String_Vectors.Universal_String_Vector);
   --  [OCL 2.3.1] 9.4.7 pathNameCS

   procedure Parse_Literal_Exp_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Env     : OCL_Environment;
     Ast     : out OCL_Literal_Exp_Access);
   --  [OCL 2.3.1] 9.4.8 LiteralExpCS

   procedure Parse_Enum_Literal_Exp_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Env     : OCL_Environment;
     Ast     : out OCL_Enum_Literal_Exp_Access);
   --  [OCL 2.3.1] 9.4.9 EnumLiteralExpCS

   procedure Parse_Primitive_Literal_Exp_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Env     : OCL_Environment;
     Ast     : out OCL_Primitive_Literal_Exp_Access);
   --  [OCL 2.3.1] 9.4.15 PrimitiveLiteralExpCS

   procedure Parse_String_Literal_Exp_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out OCL_String_Literal_Exp_Access);
   --  [OCL 2.3.1] 9.4.20 StringLiteralExpCS

   procedure Parse_Boolean_Literal_Exp_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out OCL_Boolean_Literal_Exp_Access);
   --  [OCL 2.3.1] 9.4.21 BooleanLiteralExpCS

   --------------------------------
   -- Create_Boolean_Literal_Exp --
   --------------------------------

   function Create_Boolean_Literal_Exp
     return not null OCL_Boolean_Literal_Exp_Access is
   begin
      return null;
   end Create_Boolean_Literal_Exp;

   -------------------------------
   -- Create_String_Literal_Exp --
   -------------------------------

   function Create_String_Literal_Exp
     return not null OCL_String_Literal_Exp_Access is
   begin
      return null;
   end Create_String_Literal_Exp;

   ----------------------------------
   -- Get_Environment_With_Parents --
   ----------------------------------

   function Get_Environment_With_Parents
    (Namespace : not null AMF.UML.Namespaces.UML_Namespace_Access)
       return OCL_Environment is
   begin
      return X : OCL_Environment;
   end Get_Environment_With_Parents;

   ----------------------------------
   -- Parse_Boolean_Literal_Exp_CS --
   ----------------------------------

   procedure Parse_Boolean_Literal_Exp_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out OCL_Boolean_Literal_Exp_Access) is
   begin
      case Scanner.Token is
         --  [94] [A] BooleanLiteralExpCS ::= ‘true’

         when T_True =>
            --  Synthesized attributes
            --
            --  [A] BooleanLiteralExpCS.ast.booleanSymbol = true

            Ast := Create_Boolean_Literal_Exp;
            Ast.Set_Boolean_Symbol (True);
            Scanner.Forward;

            return;

         --  [95] [B] BooleanLiteralExpCS ::= ‘false’

         when T_False =>
            --  Synthesized attributes
            --
            --  [B] BooleanLiteralExpCS.ast.booleanSymbol = false

            Ast := Create_Boolean_Literal_Exp;
            Ast.Set_Boolean_Symbol (False);
            Scanner.Forward;

            return;

         when others =>
            null;
      end case;
   end Parse_Boolean_Literal_Exp_CS;

   -------------------------------
   -- Parse_Enum_Literal_Exp_CS --
   -------------------------------

   procedure Parse_Enum_Literal_Exp_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Env     : OCL_Environment;
     Ast     : out OCL_Enum_Literal_Exp_Access)
   is
      State : OCL_Scanner_State;
      Path  : League.String_Vectors.Universal_String_Vector;

   begin
      --  EnumLiteralExpCS ::= pathNameCS ‘::’ simpleNameCS
      --
      --  Note: pathNameCS parses complete path, including simpleNameCS from
      --  this production.

      State := Scanner.Save;
      Parse_Path_Name_CS (Scanner, Path);

      if Path.Length < 2 then
         Scanner.Restore (State);

         return;
      end if;

      --  Synthesized attributes
      --
      --  EnumLiteralExpCS.ast.type =
      --    env.lookupPathName (pathNameCS.ast)
      --      .referredElement.oclAsType (Classifier)
      --  EnumLiteralExpCS.ast.referredEnumLiteral =
      --    EnumLiteralExpCS.ast.type.oclAsType (Enumeration).literal->
      --      select (l | l.name = simpleNameCS.ast )->any(true)
      --
      --  Disambiguating rules
      --
      --  [92] [1] The specified name must indeed reference an enumeration:
      --  not EnumLiteralExpCS.ast.type.oclIsUndefined() and
      --  EnumLiteralExpCS.ast.type.oclIsKindOf (Enumeration)

      raise Program_Error;
   end Parse_Enum_Literal_Exp_CS;

   --------------------------------
   -- Parse_Expression_In_Ocl_CS --
   --------------------------------

   function Parse_Expression_In_Ocl_CS
    (Scanner               : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Contextual_Classifier :
       not null AMF.UML.Classifiers.UML_Classifier_Access)
       return not null AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access
   is
      Env   : OCL_Environment;
      Ast_A : AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access;
      Ast   : AMF.OCL.Expression_In_Ocls.OCL_Expression_In_Ocl_Access;

   begin
      --  Prepare initial environment.
      --
      --  OclExpressionCS.env =
      --    ExpressionInOclCS.contextualClassifier.namespace
      --      .getEnvironmentWithParents()
      --        .addElement
      --          (‘self,’ ExpressionInOclCS.contextualClassifier, true)
      --

      Env :=
        Get_Environment_With_Parents (Contextual_Classifier.Get_Namespace);
      Env.Add_Element
       (Self_Name, AMF.Elements.Element_Access (Contextual_Classifier), True);

      Parse_Ocl_Expression_CS (Scanner, Env, Ast_A);
      Ast.Set_Body_Expression (Ast_A);

      return Ast;
   end Parse_Expression_In_Ocl_CS;

   --------------------------
   -- Parse_Literal_Exp_CS --
   --------------------------

   procedure Parse_Literal_Exp_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Env     : OCL_Environment;
     Ast     : out OCL_Literal_Exp_Access)
   is
      Ast_A : OCL_Enum_Literal_Exp_Access;
      Ast_D : OCL_Primitive_Literal_Exp_Access;

   begin
      --  [A] LiteralExpCS ::= EnumLiteralExpCS

      Parse_Enum_Literal_Exp_CS (Scanner, Env, Ast_A);

      if Ast_A /= null then
         Ast := OCL_Literal_Exp_Access (Ast_A);

         return;
      end if;

      --  [B] LiteralExpCS ::= CollectionLiteralExpCS
      --  [C] LiteralExpCS ::= TupleLiteralExpCS
      --  [D] LiteralExpCS ::= PrimitiveLiteralExpCS

      Parse_Primitive_Literal_Exp_CS (Scanner, Env, Ast_D);

      if Ast_D /= null then
         Ast := OCL_Literal_Exp_Access (Ast_D);

         return;
      end if;

      --  [E] LiteralExpCS ::= TypeLiteralExpCS

      raise Program_Error;
   end Parse_Literal_Exp_CS;

   -----------------------------
   -- Parse_Ocl_Expression_CS --
   -----------------------------

   procedure Parse_Ocl_Expression_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Env     : OCL_Environment;
     Ast     : out OCL_Ocl_Expression_Access)
   is
      Ast_C : OCL_Literal_Exp_Access;

   begin
      --  [A] OclExpressionCS ::= CallExpCS
      --  [B] OclExpressionCS ::= VariableExpCS
      --  [C] OclExpressionCS ::= LiteralExpCS

      Parse_Literal_Exp_CS (Scanner, Env, Ast_C);

      if Ast_C /= null then
         Ast := OCL_Ocl_Expression_Access (Ast_C);

         return;
      end if;

      --  [D] OclExpressionCS ::= LetExpCS
      --  [E] OclExpressionCS ::= OclMessageExpCS
      --  [F] OclExpressionCS ::= IfExpCS

      raise Program_Error;
   end Parse_Ocl_Expression_CS;

   ------------------------
   -- Parse_Path_Name_CS --
   ------------------------

   procedure Parse_Path_Name_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out League.String_Vectors.Universal_String_Vector)
   is
      State : OCL_Scanner_State;
      Name  : League.Strings.Universal_String;

   begin
      --  [A] pathNameCS ::= simpleNameCS

      Parse_Simple_Name_CS (Scanner, Name);

      if not Name.Is_Empty then
         --  Synthesized attributes
         --
         --  [A] pathNameCS.ast = Sequence{simpleNameCS.ast}

         Ast.Append (Name);

         --  [B] pathNameCS ::= pathNameCS ‘::’ unreservedSimpleNameCS

         while Scanner.Token = T_Double_Colon loop
            State := Scanner.Save;
            Scanner.Forward;

            Parse_Unreserved_Simple_Name_CS (Scanner, Name);

            if Name.Is_Empty then
               Scanner.Restore (State);

               return;
            end if;

            --  Synthesized attributes
            --
            --  [B] pathNameCS.ast =
            --        pathNameCS.ast->append(unreservedSimpleNameCS.ast)

            Ast.Append (Name);
         end loop;
      end if;
   end Parse_Path_Name_CS;

   ------------------------------------
   -- Parse_Primitive_Literal_Exp_CS --
   ------------------------------------

   procedure Parse_Primitive_Literal_Exp_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Env     : OCL_Environment;
     Ast     : out OCL_Primitive_Literal_Exp_Access)
   is
      Ast_C : OCL_String_Literal_Exp_Access;
      Ast_D : OCL_Boolean_Literal_Exp_Access;

   begin
      --  [A] PrimitiveLiteralExpCS ::= IntegerLiteralExpCS
      --  [B] PrimitiveLiteralExpCS ::= RealLiteralExpCS
      --  [C] PrimitiveLiteralExpCS ::= StringLiteralExpCS

      Parse_String_Literal_Exp_CS (Scanner, Ast_C);

      if Ast_C /= null then
         Ast := OCL_Primitive_Literal_Exp_Access (Ast_C);

         return;
      end if;

      --  [D] PrimitiveLiteralExpCS ::= BooleanLiteralExpCS

      Parse_Boolean_Literal_Exp_CS (Scanner, Ast_D);

      if Ast_D /= null then
         Ast := OCL_Primitive_Literal_Exp_Access (Ast_D);

         return;
      end if;

      --  [E] PrimitiveLiteralExpCS ::= UnlimitedNaturalLiteralExpCS
      --  [F] PrimitiveLiteralExpCS ::= NullLiteralExpCS
      --  [G] PrimitiveLiteralExpCS ::= InvalidLiteralExpCS

      raise Program_Error;
   end Parse_Primitive_Literal_Exp_CS;

   ---------------------------------
   -- Parse_Restricted_Keyword_CS --
   ---------------------------------

   procedure Parse_Restricted_Keyword_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out League.Strings.Universal_String) is
   begin
      case Scanner.Token is
         --  [A] restrictedKeywordCS ::= CollectionTypeIdentifierCS

         when T_Set =>
            Ast := Set_Name;
            Scanner.Forward;

            return;

         when T_Bag =>
            Ast := Bag_Name;
            Scanner.Forward;

            return;

         when T_Sequence =>
            Ast := Sequence_Name;
            Scanner.Forward;

            return;

         when T_Collection =>
            Ast := Collection_Name;
            Scanner.Forward;

            return;

         when T_Ordered_Set =>
            Ast := Ordered_Set_Name;
            Scanner.Forward;

            return;

         --  [B] restrictedKeywordCS ::= primitiveTypeCS

         when T_Boolean =>
            Ast := Boolean_Name;
            Scanner.Forward;

            return;

         when T_Integer =>
            Ast := Integer_Name;
            Scanner.Forward;

            return;

         when T_Real =>
            Ast := Real_Name;
            Scanner.Forward;

            return;

         when T_String =>
            Ast := String_Name;
            Scanner.Forward;

            return;

         when T_Unlimited_Natural =>
            Ast := Unlimited_Natural_Name;
            Scanner.Forward;

            return;

         --  [C] restrictedKeywordCS ::= oclTypeCS

         when T_Ocl_Any =>
            Ast := Ocl_Any_Name;
            Scanner.Forward;

            return;

         when T_Ocl_Invalid =>
            Ast := Ocl_Invalid_Name;
            Scanner.Forward;

            return;

         when T_Ocl_Message =>
            Ast := Ocl_Message_Name;
            Scanner.Forward;

            return;

         when T_Ocl_Void =>
            Ast := Ocl_Void_Name;
            Scanner.Forward;

            return;

         --  [D] restrictedKeywordCS ::= 'Tuple'

         when T_Tuple =>
            Ast := Tuple_Name;
            Scanner.Forward;

            return;

         when others =>
            null;
      end case;
   end Parse_Restricted_Keyword_CS;

   --------------------------
   -- Parse_Simple_Name_CS --
   --------------------------

   procedure Parse_Simple_Name_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out League.Strings.Universal_String) is
   begin
      --  [A] simpleNameCS ::= NameStartChar NameChar*

      if Scanner.Token = T_Simple_Name_A then
         --  Synthesized attributes
         --
         --  [A] simpleNameCS.ast = <CodePoints of NameStartChar NameChar*>

         Ast := Scanner.Get_String_Char;
         Scanner.Forward;

         return;

      --  [B] simpleNameCS ::= '_' #x27 StringChar* #x27
      --  [C] simpleNameCS[1] ::=
      --        simpleNameCS[2] WhiteSpaceChar* #x27 StringChar* #x27

      elsif Scanner.Token = T_Simple_Name_B then
         --  Disambiguating rules
         --
         --  [4] [C] simpleNameCS[2] is a simpleNameCS [B] or [C].

         --  Synthesized attributes
         --
         --  [B] simpleNameCS.ast = <CodePoints of StringChar*>

         Ast := Scanner.Get_String_Char;
         Scanner.Forward;

         while Scanner.Token = T_Simple_Name_B loop
            --  Synthesized attributes
            --
            --  [C] simpleNameCS[1].ast =
            --        simpleNameCS[2] + <CodePoints of StringChar*>

            Ast.Append (Scanner.Get_String_Char);
            Scanner.Forward;
         end loop;

         return;
      end if;
   end Parse_Simple_Name_CS;

   ---------------------------------
   -- Parse_String_Literal_Exp_CS --
   ---------------------------------

   procedure Parse_String_Literal_Exp_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out OCL_String_Literal_Exp_Access)
   is
      Symbol : League.Strings.Universal_String;

   begin
      --  [A] StringLiteralExpCS ::= #x27 StringChar* #x27
      --  [B] StringLiteralExpCS[1] ::=
      --        StringLiteralExpCS[2] WhiteSpaceChar* #x27 StringChar* #x27

      if Scanner.Token = T_String_Char then
         --  Synthesized attributes
         --
         --  [A] StringLiteralExpCS.ast.symbol = <CodePoints of StringChar*>
         --  [B] StringLiteralExpCS.ast.symbol
         --     = StringLiteralExpCS[2] + <CodePoints of StringChar*>

         Symbol := Scanner.Get_String_Char;
         Scanner.Forward;

         while Scanner.Token = T_String_Char loop
            Symbol.Append (Scanner.Get_String_Char);
            Scanner.Forward;
         end loop;

         Ast := Create_String_Literal_Exp;
         Ast.Set_String_Symbol (Symbol);
      end if;
   end Parse_String_Literal_Exp_CS;

   -------------------------------------
   -- Parse_Unreserved_Simple_Name_CS --
   -------------------------------------

   procedure Parse_Unreserved_Simple_Name_CS
    (Scanner : in out AMF.Internals.OCL_Scanners.OCL_Scanner;
     Ast     : out League.Strings.Universal_String) is
   begin
      --  [A] unreservedSimpleNameCS ::= simpleNameCS

      Parse_Simple_Name_CS (Scanner, Ast);

      if not Ast.Is_Empty then
         return;
      end if;

      --  [B] unreservedSimpleNameCS ::= restrictedKeywordCS

      Parse_Restricted_Keyword_CS (Scanner, Ast);
   end Parse_Unreserved_Simple_Name_CS;

end AMF.Internals.OCL_Parser;
