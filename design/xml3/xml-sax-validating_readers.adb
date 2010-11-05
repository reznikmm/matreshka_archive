with Ada.Unchecked_Deallocation;

with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.Unicode.Characters.General_Punctuation;
with Matreshka.Internals.Unicode.Characters.Latin;
with XML.SAX.Readers;

package body XML.SAX.Validating_Readers is

   use type Sources.Read_Status;
   use Matreshka.Internals.Unicode.Characters.General_Punctuation;
   use Matreshka.Internals.Unicode.Characters.Latin;

   ---------------------
   -- Content_Handler --
   ---------------------

   overriding function Content_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Content_Handler_Access is
   begin
      return Self.Content_Handler;
   end Content_Handler;

   -------------------------
   -- Declaration_Handler --
   -------------------------

   overriding function Declaration_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Declaration_Handler_Access is
   begin
      return Self.Declaration_Handler;
   end Declaration_Handler;

   -----------------
   -- DTD_Handler --
   -----------------

   overriding function DTD_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_DTD_Handler_Access is
   begin
      return Self.DTD_Handler;
   end DTD_Handler;

   ---------------------
   -- Entity_Resolver --
   ---------------------

   overriding function Entity_Resolver
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Entity_Resolver_Access is
   begin
      return Self.Entity_Resolver;
   end Entity_Resolver;

   -------------------
   -- Error_Handler --
   -------------------

   overriding function Error_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Error_Handler_Access is
   begin
      return Self.Error_Handler;
   end Error_Handler;

   ---------------------
   -- Lexical_Handler --
   ---------------------

   overriding function Lexical_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Lexical_Handler_Access is
   begin
      return Self.Lexical_Handler;
   end Lexical_Handler;

   ----------
   -- Next --
   ----------

   procedure Next
    (Self   : in out SAX_Validating_Reader'Class;
     Code   : out Matreshka.Internals.Unicode.Code_Point;
     Status : out Sources.Read_Status)
   is
      use type Sources.Source_Access;
      use type Matreshka.Internals.Unicode.Code_Point;
      use type Matreshka.Internals.Utf16.Utf16_String_Index;

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Sources.Source'Class, Sources.Source_Access);

   begin
      if Self.Current_Entity_Reference.Source /= null then
         loop
            Self.Current_Entity_Reference.Source.Next (Code, Status);

            exit when Status /= Sources.Successful;

            if Code = Carriage_Return then
               Self.Current_Entity_Reference.Skip_LF := True;
               Self.Current_Entity_Reference.Line :=
                 Self.Current_Entity_Reference.Line + 1;
               Self.Current_Entity_Reference.Column := 1;
               Code := Line_Feed;

               return;

            elsif Code = Line_Feed or Code = Next_Line then
               if not Self.Current_Entity_Reference.Skip_LF then
                  Self.Current_Entity_Reference.Line :=
                    Self.Current_Entity_Reference.Line + 1;
                  Self.Current_Entity_Reference.Column := 1;
                  Code := Line_Feed;

                  return;
               end if;

               Self.Current_Entity_Reference.Skip_LF := False;

            elsif Code = Line_Separator then
               Self.Current_Entity_Reference.Skip_LF := False;
               Self.Current_Entity_Reference.Line :=
                 Self.Current_Entity_Reference.Line + 1;
               Self.Current_Entity_Reference.Column := 1;
               Code         := Line_Feed;

               return;

            else
               Self.Current_Entity_Reference.Column :=
                 Self.Current_Entity_Reference.Column + 1;
               Self.Current_Entity_Reference.Skip_LF := False;

               return;
            end if;
         end loop;

         case Status is
            when Sources.Successful =>
               if not Self.Current_Entity_Reference.Is_Document then
--                  Matreshka.Internals.Utf16.Unchecked_Store
--                   (Self.Current_Entity_Reference.Text.Value,
--                    Self.Current_Entity_Reference.Text.Unused,
--                    Code);
--                  Self.Current_Entity_Reference.Text.Length :=
--                    Self.Current_Entity_Reference.Text.Length + 1;
                  Matreshka.Internals.Strings.Operations.Unterminated_Append
                   (Self.Current_Entity_Reference.Text, Code);
                  --  It is slow operation, would be nice to use the fact that
                  --  filled shared string is not used anywhere, so several
                  --  checks can be avoided. Look to Detached_* API of string
                  --  (if it is implemented).
               end if;

            when Sources.Mailformed =>
               null;

            when Sources.End_Of_Data =>
               null;

            when Sources.End_Of_Input =>
               --  End of current entity, update entities table and pop entity
               --  reference stack.

               if not Self.Current_Entity_Reference.Is_Document then
                  --  Save entity's replacement text and position/index of
                  --  first character after text declaration for future use.

                  --  XXX Not implemented.

                  null;

                  --  Deallocate input source.

                  Free (Self.Current_Entity_Reference.Source);

                  --  Pop entity reference stack.

                  Self.Current_Entity_Reference :=
                    Self.Entity_Reference_Stack.Last_Element;
                  Self.Entity_Reference_Stack.Delete_Last;

                  Self.Next (Code, Status);
               end if;
         end case;

      else
         if Self.Current_Entity_Reference.Position
              < Self.Current_Entity_Reference.Text.Unused
         then
            Matreshka.Internals.Utf16.Unchecked_Next
             (Self.Current_Entity_Reference.Text.Value,
              Self.Current_Entity_Reference.Position,
              Code);
            Status := Sources.Successful;

            --  Update location

            if Code = Line_Feed then
               Self.Current_Entity_Reference.Line :=
                 Self.Current_Entity_Reference.Line + 1;
               Self.Current_Entity_Reference.Column := 1;

            else
               Self.Current_Entity_Reference.Column :=
                 Self.Current_Entity_Reference.Column + 1;
            end if;

         else
            --  Pop entity reference stack.

            Self.Current_Entity_Reference :=
              Self.Entity_Reference_Stack.Last_Element;
            Self.Entity_Reference_Stack.Delete_Last;

            Self.Next (Code, Status);
         end if;
      end if;
   end Next;

   -----------
   -- Parse --
   -----------

   procedure Parse
    (Self   : in out SAX_Validating_Reader'Class;
     Source : not null Sources.Source_Access)
   is
      Code   : Matreshka.Internals.Unicode.Code_Point;
      Status : Sources.Read_Status;

   begin
      Self.Current_Entity_Reference :=
       (Entity      => 0,
        Is_Document => True,
        Source      => Source,
        Text        => null,
        Position    => 0,
        Line        => 1,
        Column      => 0,
        Skip_LF     => False);

      loop
         Self.Next (Code, Status);

         exit when Status = Sources.End_Of_Input;
      end loop;
   end Parse;

   -----------------------
   -- Parse_Incremental --
   -----------------------

   procedure Parse_Incremental
    (Self   : in out SAX_Validating_Reader'Class;
     Source : not null Sources.Source_Access) is
   begin
      null;
   end Parse_Incremental;

   ----------------
   -- Parse_Next --
   ----------------

   procedure Parse_Next (Self : in out SAX_Validating_Reader'Class) is
   begin
      null;
   end Parse_Next;

   -------------------------
   -- Set_Content_Handler --
   -------------------------

   overriding procedure Set_Content_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Content_Handler_Access) is
   begin
     Self.Content_Handler := Handler;
   end Set_Content_Handler;

   -----------------------------
   -- Set_Declaration_Handler --
   -----------------------------

   overriding procedure Set_Declaration_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Declaration_Handler_Access) is
   begin
      Self.Declaration_Handler := Handler;
   end Set_Declaration_Handler;

   ---------------------
   -- Set_DTD_Handler --
   ---------------------

   overriding procedure Set_DTD_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_DTD_Handler_Access) is
   begin
      Self.DTD_Handler := Handler;
   end Set_DTD_Handler;

   -------------------------
   -- Set_Entity_Resolver --
   -------------------------

   overriding procedure Set_Entity_Resolver
    (Self     : not null access SAX_Validating_Reader;
     Resolver : XML.SAX.Readers.SAX_Entity_Resolver_Access) is
   begin
      Self.Entity_Resolver := Resolver;
   end Set_Entity_Resolver;

   -----------------------
   -- Set_Error_Handler --
   -----------------------

   overriding procedure Set_Error_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Error_Handler_Access) is
   begin
      Self.Error_Handler := Handler;
   end Set_Error_Handler;

   -------------------------
   -- Set_Lexical_Handler --
   -------------------------

   overriding procedure Set_Lexical_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Lexical_Handler_Access) is
   begin
      Self.Lexical_Handler := Handler;
   end Set_Lexical_Handler;

end XML.SAX.Validating_Readers;
