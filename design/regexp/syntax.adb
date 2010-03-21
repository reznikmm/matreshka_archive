
package body Syntax is

   ---------
   -- Add --
   ---------

   procedure Add (Class : Positive; Member : Positive) is
   begin
      if AST (Class).Members = 0 then
         AST (Class).Members := Member;

      else
         Attach (AST (Class).Members, Member);
      end if;
   end Add;

   ------------
   -- Attach --
   ------------

   procedure Attach (Head : Positive; Node : Positive) is
      J : Positive := Head;

   begin
      while AST (J).Next /= 0 loop
         J := AST (J).Next;
      end loop;

      AST (J).Next := Node;
   end Attach;

end Syntax;
