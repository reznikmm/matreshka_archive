with Matreshka.Internals.Regexps.Compiler;
with Matreshka.Internals.Strings;
with Matreshka.Internals.Code_Point_Sets;
with Matreshka.Internals.Graphs;
with League.Strings;
with League.Strings.Internals;
with Matreshka.Internals.Finite_Automatons;

with League.Character_Sets.Internals;
with Ada.Text_IO;
with Ada.Containers.Ordered_Maps;
with Ada.Containers.Vectors;
with Matreshka.Internals.Graphs;

procedure Create_Set_Test is
   package Regexp_Compiler renames Matreshka.Internals.Regexps.Compiler;

   Input : constant League.Strings.Universal_String :=
     League.Strings.To_Universal_String
       ("(a|b)*abb");

   Shared_String : constant Matreshka.Internals.Strings.Shared_String_Access :=
     League.Strings.Internals.Internal (Input);

   AST : constant Matreshka.Internals.Regexps.Shared_Pattern_Access :=
     Regexp_Compiler.Compile (Shared_String);
   
   DFA : Matreshka.Internals.Finite_Automatons.DFA :=
     Matreshka.Internals.Finite_Automatons.Compile (AST);

begin
   Matreshka.Internals.Finite_Automatons.Minimize (DFA);
   Ada.Text_IO.Put_Line
     (Matreshka.Internals.Finite_Automatons.State'Image (DFA.Start));
end Create_Set_Test;
