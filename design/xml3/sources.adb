with Matreshka.Internals.Unicode.Characters.General_Punctuation;
with Matreshka.Internals.Unicode.Characters.Latin;

package body Sources is

   use type Ada.Streams.Stream_Element_Offset;
   use Matreshka.Internals.Unicode.Characters.General_Punctuation;
   use Matreshka.Internals.Unicode.Characters.Latin;

   Meta_Class : constant
     array (Ada.Streams.Stream_Element) of UTF8_Meta_Class
       := ( 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,

            1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,
            9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,
            7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,
            7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,
            8,  8,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,
            2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,
           10,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3,  4,  3,  3,
           11,  6,  6,  6,  5,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8);

   Transition : constant
     array (UTF8_DFA_State range 0 .. 143) of UTF8_DFA_State
       := ( 0,  1,  2,  3,  5,  8,  7,  1,  1,  1,  4,  6,  1,  1,  1,  1,
            1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,
            1,  0,  1,  1,  1,  1,  1,  0,  1,  0,  1,  1,  1,  1,  1,  1,
            1,  2,  1,  1,  1,  1,  1,  2,  1,  2,  1,  1,  1,  1,  1,  1,
            1,  1,  1,  1,  1,  1,  1,  2,  1,  1,  1,  1,  1,  1,  1,  1,
            1,  2,  1,  1,  1,  1,  1,  1,  1,  2,  1,  1,  1,  1,  1,  1,
            1,  1,  1,  1,  1,  1,  1,  3,  1,  3,  1,  1,  1,  1,  1,  1,
            1,  3,  1,  1,  1,  1,  1,  3,  1,  3,  1,  1,  1,  1,  1,  1,
            1,  3,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1);

   Accept_State : constant UTF8_DFA_State := 0;
   Reject_State : constant UTF8_DFA_State := 1;

   ----------
   -- Next --
   ----------

   procedure Next
    (Self   : in out Source;
     Code   : out Matreshka.Internals.Unicode.Code_Point;
     Status : out Read_Status)
   is
      use type Matreshka.Internals.Unicode.Code_Point;

   begin
      loop
         if Self.Position > Self.Last then
            Ada.Streams.Stream_IO.Read (Self.File, Self.Buffer, Self.Last);
            Self.Position := Self.Buffer'First;

            if Self.Last < Self.Buffer'First then
               Code   := 0;
               Status := End_Of_Input;

               return;
            end if;
         end if;

         declare
            M : constant UTF8_Meta_Class
              := Meta_Class (Self.Buffer (Self.Position));

         begin
            if Self.State = 0 then
               Self.Code :=
                (16#FF# / (2 ** Natural (M)))
                   and Matreshka.Internals.Unicode.Code_Point
                        (Self.Buffer (Self.Position));

            else
               Self.Code :=
                (Matreshka.Internals.Unicode.Code_Point
                  (Self.Buffer (Self.Position))
                   and 16#3F#) or (Self.Code * (2 ** 6));
            end if;

            Self.Position := Self.Position + 1;

            Self.State := Transition (Self.State * 16 + UTF8_DFA_State (M));

            if Self.State = Accept_State then
               Status := Successful;

               if Self.Code = Carriage_Return then
                  Self.Skip_LF := True;
                  Code         := Line_Feed;

                  return;

               elsif Code = Line_Feed or Code = Next_Line then
                  if not Self.Skip_LF then
                     Code := Line_Feed;

                     return;
                  end if;

                  Self.Skip_LF := False;

               elsif Code = Line_Separator then
                  Self.Skip_LF := False;
                  Code         := Line_Feed;

                  return;

               else
                  Self.Skip_LF := False;
                  Code         := Self.Code;

                  return;
               end if;
            end if;
         end;
      end loop;
   end Next;

   ----------
   -- Open --
   ----------

   procedure Open (Self : in out Source; File_Name : String) is
   begin
      Ada.Streams.Stream_IO.Open
       (Self.File, Ada.Streams.Stream_IO.In_File, File_Name);
      Self.Last     := Self.Buffer'First - 1;
      Self.Position := Self.Buffer'First;
      Self.State    := Accept_State;
      Self.Code     := 0;
      Self.Skip_LF  := False;
   end Open;

end Sources;
