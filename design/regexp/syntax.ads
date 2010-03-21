
package Syntax is

   type Node_Kinds is (None, Code_Point, Code_Point_Range, Character_Class, Multiplicity, Alternation);

   type Node (Kind : Node_Kinds := None) is record
      case Kind is
         when None =>
            null;

         when others =>
            Next : Natural;
            --  Next node in the chain

            case Kind is
               when None =>
                  null;

               when Code_Point =>
                  Code : Wide_Wide_Character;
                  --  Code point to match

               when Code_Point_Range =>
                  Low  : Wide_Wide_Character;
                  High : Wide_Wide_Character;

               when Character_Class =>
                  Negated : Boolean;
                  Members : Natural;

               when Multiplicity =>
                  Item   : Natural;
                  --  Link to expression

                  Greedy : Boolean;
                  Lower  : Natural;
                  Upper  : Natural;

               when Alternation =>
                  First  : Natural;
                  Second : Natural;
            end case;
      end case;
   end record;

   AST       : array (Positive range 1 .. 100) of Node;
   AST_Start : Positive;
   AST_Last  : Natural := 0;

   procedure Attach (Head : Positive; Node : Positive);
   --  Attach Node to the list of nodes, started by Head.

   procedure Add (Class : Positive; Member : Positive);

end Syntax;
