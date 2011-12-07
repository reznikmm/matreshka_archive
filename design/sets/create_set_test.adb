with Matreshka.Internals.Regexps.Compiler;
with Matreshka.Internals.Strings;
with Matreshka.Internals.Code_Point_Sets;
with Matreshka.Internals.Code_Point_Set_Constructors;
with League.Strings;
with League.Strings.Internals;

with League.Character_Sets.Internals;
with Ada.Text_IO;

procedure Create_Set_Test is
   Input : constant League.Strings.Universal_String :=
     League.Strings.To_Universal_String
       ("[\p{Lowercase_Letter}\p{Uppercase_Letter}1-3]");
   
   Shared_String : constant Matreshka.Internals.Strings.Shared_String_Access :=
     League.Strings.Internals.Internal (Input);
   
   AST : constant Matreshka.Internals.Regexps.Shared_Pattern_Access :=
     Matreshka.Internals.Regexps.Compiler.Compile (Shared_String);
   
   Head : Matreshka.Internals.Regexps.Node renames
     AST.AST (AST.List (Ast.Start).Head);
   
   function Compile
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Node : Positive) return League.Character_Sets.Universal_Character_Set;
   
   -------------
   -- Compile --
   -------------
   
   function Compile
     (AST  : Matreshka.Internals.Regexps.Shared_Pattern_Access;
      Node : Positive) return League.Character_Sets.Universal_Character_Set
   is
      use Matreshka.Internals.Code_Point_Sets;
   begin
      case AST.AST (Node).Kind is
         when Matreshka.Internals.Regexps.N_None =>
            return League.Character_Sets.Empty_Universal_Character_Set;

         when Matreshka.Internals.Regexps.N_Member_Code =>
            return League.Character_Sets.To_Set
              ((1 => Wide_Wide_Character'Val (AST.AST (Node).Code)));
               
         when Matreshka.Internals.Regexps.N_Member_Property =>
            declare
               use Matreshka.Internals.Code_Point_Set_Constructors;
               Result : Core_Shared_Code_Point_Set;
            begin
               case AST.AST (Node).Value.Kind is
                  when Matreshka.Internals.Regexps.None =>
                     raise Constraint_Error;

                  when Matreshka.Internals.Regexps.General_Category =>
                     To_Set
                       ((Kind     => General_Category,
                         GC_Flags => AST.AST (Node).Value.GC_Flags),
                        Result);

                  when Matreshka.Internals.Regexps.Binary =>
                     To_Set
                       ((Kind     => Binary,
                         Property => AST.AST (Node).Value.Property),
                        Result);
               end case;
               
               if AST.AST (Node).Negative then
                  return League.Character_Sets.Internals.Wrap
                    (new Shared_Code_Point_Set'(not Result));
               else
                  return League.Character_Sets.Internals.Wrap
                    (new Shared_Code_Point_Set'(+Result));
               end if;
            end;

         when Matreshka.Internals.Regexps.N_Member_Range =>
            return League.Character_Sets.Internals.Wrap
              (new Shared_Code_Point_Set'(To_Set (AST.AST (Node).Low,
                                                  AST.AST (Node).High)));
            --  Low  : Matreshka.Internals.Unicode.Code_Point;
            --  High : Matreshka.Internals.Unicode.Code_Point;
            --  Range of code points as member of character class
            
         when Matreshka.Internals.Regexps.N_Character_Class =>
            declare
               use type League.Character_Sets.Universal_Character_Set;

               Index  : Natural :=
                 AST.List (AST.AST (Node).Members).Head;
               Tail   : Positive :=
                 AST.List (AST.AST (Node).Members).Tail;
               Result : League.Character_Sets.Universal_Character_Set;
            begin
               while Index > 0 loop
                  Result := Result or Compile (AST, Index);
                  Index := AST.AST (Index).Next;
               end loop;
               
               if AST.AST (Node).Negated then
                  return not Result;
               else
                  return Result;
               end if;
            end;
            
         when others =>
            raise Constraint_Error;
      end case;
   end Compile;
   
   use type League.Character_Sets.Universal_Character_Set;
   
   Set : League.Character_Sets.Universal_Character_Set :=
     Compile (AST, AST.List (Ast.Start).Head);
   Set2 : League.Character_Sets.Universal_Character_Set :=
     League.Character_Sets.To_Set ("ZzФф1");
   Set3 : League.Character_Sets.Universal_Character_Set := Set and Set2;
begin
   --  case Head.Kind is
   if Set3 = League.Character_Sets.To_Set ("ZzФф1") then
      Ada.Text_IO.Put_Line ("aaa");
   end if;
end Create_Set_Test;
