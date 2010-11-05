with Ada.Streams.Stream_IO;

with Matreshka.Internals.Unicode;

package Sources is

   type Source is tagged limited private;

   type Source_Access is access all Source'Class;

   type Read_Status is (Successful, Mailformed, End_Of_Data, End_Of_Input);

   procedure Next
    (Self   : in out Source;
     Code   : out Matreshka.Internals.Unicode.Code_Point;
     Status : out Read_Status);

   procedure Open (Self : in out Source; File_Name : String);

private

   type UTF8_Meta_Class is mod 2 ** 8;
   type UTF8_DFA_State is mod 2 ** 8;

   type Source is tagged limited record
      --  Source stream

      File     : Ada.Streams.Stream_IO.File_Type;

      --  Internal buffer

      Buffer   : Ada.Streams.Stream_Element_Array (1 .. 1024);
      Last     : Ada.Streams.Stream_Element_Offset;
      Position : Ada.Streams.Stream_Element_Offset;

      --  Decoder state

      State    : UTF8_DFA_State;
      Code     : Matreshka.Internals.Unicode.Code_Unit_32;
   end record;

end Sources;
