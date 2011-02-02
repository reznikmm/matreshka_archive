with Ada.Containers.Ordered_Sets;
with Ada.Streams;

with League.Stream_Element_Vectors;
with League.Strings;
with League.Text_Codecs;

package body Demo.Callbacks is

   function Less
    (Left  : League.Strings.Universal_String;
     Right : League.Strings.Universal_String) return Boolean;

   package Sets is
     new Ada.Containers.Ordered_Sets
          (League.Strings.Universal_String,
           Less,
           League.Strings."=");

   Page_Top : constant String
     := "<?xml version='1.1' encoding='utf-8'?>"
          & "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'>"
          & "<html xmlns='http://www.w3.org/1999/xhtml'>"
          & "<head>"
          & "<title>Matreshka's FastCGI and Unicode Collation demo</title>"
          & "</head>"
          & "<body>"
          & "<p>This simple FastCGI application sorts set of strings with Unicode Collation Algoriphm. You can enter own strings using text box and submit button.</p>"
          & "<table>"
          & "<tbody>";

   Page_Middle : constant String
     := "</tbody>"
          & "</table>"
          & "<form action='";

   Page_Bottom : constant String
     := "' method='POST' accept-charset='utf-8'>"
          & "<input type='text' name='string'/>"
          & "<input type='submit' name='submit'/>"
          & "</form>";
--          & "</body>"
--          & "</html>";

   Page_Done : constant String
     := "</body>"
          & "</html>";

   Codec   : League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("utf-8"));
   Strings : Sets.Set;

   -------------
   -- Handler --
   -------------

   procedure Handler
    (Request : FastCGI.Requests.Request;
     Reply   : out FastCGI.Replies.Reply;
     Status  : out Integer)
   is
      use type League.Stream_Element_Vectors.Stream_Element_Vector;

      procedure Output (Position : Sets.Cursor);

      function To_Raw
       (Item : String)
          return League.Stream_Element_Vectors.Stream_Element_Vector;

      function Extract_String
       (Query : Ada.Streams.Stream_Element_Array)
          return League.Strings.Universal_String;

      --------------------
      -- Extract_String --
      --------------------

      function Extract_String
       (Query : Ada.Streams.Stream_Element_Array)
          return League.Strings.Universal_String
      is
         use type Ada.Streams.Stream_Element;
         use type Ada.Streams.Stream_Element_Offset;

         function From_Percent_Encoding
          (Item : Ada.Streams.Stream_Element_Array)
             return Ada.Streams.Stream_Element_Array;

         ---------------------------
         -- From_Percent_Encoding --
         ---------------------------

         function From_Percent_Encoding
          (Item : Ada.Streams.Stream_Element_Array)
             return Ada.Streams.Stream_Element_Array
         is
            Percent : constant Ada.Streams.Stream_Element
              := Ada.Streams.Stream_Element'Val (Character'Pos ('%'));
            Plus    : constant Ada.Streams.Stream_Element
              := Ada.Streams.Stream_Element'Val (Character'Pos ('+'));
            Space   : constant Ada.Streams.Stream_Element
              := Ada.Streams.Stream_Element'Val (Character'Pos (' '));
            Current : Ada.Streams.Stream_Element_Offset := Item'First;
            Result  : Ada.Streams.Stream_Element_Array (1 .. Item'Length);
            Last    : Ada.Streams.Stream_Element_Offset := Result'First - 1;
            Aux     : Ada.Streams.Stream_Element;

         begin
            while Current <= Item'Last loop
               if Item (Current) = Percent then
                  if Item (Current + 1)
                       in Character'Pos ('0') .. Character'Pos ('9')
                  then
                     Aux := Item (Current + 1) - Character'Pos ('0');

                  elsif Item (Current + 1)
                       in Character'Pos ('A') .. Character'Pos ('F')
                  then
                     Aux := Item (Current + 1) - Character'Pos ('A') + 10;

                  elsif Item (Current + 1)
                       in Character'Pos ('a') .. Character'Pos ('f')
                  then
                     Aux := Item (Current + 1) - Character'Pos ('a') + 10;
                  end if;

                  Aux := Aux * 16;

                  if Item (Current + 2)
                       in Character'Pos ('0') .. Character'Pos ('9')
                  then
                     Aux := Aux + Item (Current + 2) - Character'Pos ('0');

                  elsif Item (Current + 2)
                       in Character'Pos ('A') .. Character'Pos ('F')
                  then
                     Aux :=
                       Aux + Item (Current + 2) - Character'Pos ('A') + 10;

                  elsif Item (Current + 2)
                       in Character'Pos ('a') .. Character'Pos ('f')
                  then
                     Aux :=
                       Aux + Item (Current + 2) - Character'Pos ('a') + 10;
                  end if;

                  Last := Last + 1;
                  Result (Last) := Aux;
                  Current := Current + 3;

               elsif Item (Current) = Plus then
                  Last := Last + 1;
                  Result (Last) := Space;
                  Current := Current + 1;

               else
                  Last := Last + 1;
                  Result (Last) := Item (Current);
                  Current := Current + 1;
               end if;
            end loop;

            return Result (1 .. Last);
         end From_Percent_Encoding;

         Equal     : constant Ada.Streams.Stream_Element
           := Ada.Streams.Stream_Element'Val (Character'Pos ('='));
         Ampersand : constant Ada.Streams.Stream_Element
           := Ada.Streams.Stream_Element'Val (Character'Pos ('&'));
         First     : Ada.Streams.Stream_Element_Offset := Query'First;
         Last      : Ada.Streams.Stream_Element_Offset := Query'First;

      begin
         --  Looking for '&' separator.

         while Last <= Query'Last loop
            if Query (Last) = Ampersand then
               exit;
            end if;

            Last := Last + 1;
         end loop;

         Last := Last - 1;

         --  Looking for '=' separator.

         while First <= Last loop
            if Query (First) = Equal then
               exit;
            end if;

            First := First + 1;
         end loop;

         First := First + 1;

         return Codec.Decode (From_Percent_Encoding (Query (First .. Last)));
      end Extract_String;

      ------------
      -- Output --
      ------------

      procedure Output (Position : Sets.Cursor) is
         Element : constant League.Strings.Universal_String
           := Sets.Element (Position);

      begin
         String'Write (Reply.Stream, "<tr><td>");
         Ada.Streams.Stream_Element_Array'Write
          (Reply.Stream, Codec.Encode (Element).To_Stream_Element_Array);
         String'Write (Reply.Stream, "<td></tr>");
      end Output;

      ------------
      -- To_Raw --
      ------------

      function To_Raw
       (Item : String)
          return League.Stream_Element_Vectors.Stream_Element_Vector
      is
         Aux : Ada.Streams.Stream_Element_Array (1 .. Item'Length);
         for Aux'Address use Item'Address;

      begin
         return League.Stream_Element_Vectors.To_Stream_Element_Vector (Aux);
      end To_Raw;

      Content_Type_Header :
        constant League.Stream_Element_Vectors.Stream_Element_Vector
          := To_Raw ("CONTENT_TYPE");
      Content_Length_Header :
        constant League.Stream_Element_Vectors.Stream_Element_Vector
          := To_Raw ("CONTENT_LENGTH");
      Request_Method_Header :
        constant League.Stream_Element_Vectors.Stream_Element_Vector
          := To_Raw ("REQUEST_METHOD");
      Script_Name_Header :
        constant League.Stream_Element_Vectors.Stream_Element_Vector
          := To_Raw ("SCRIPT_NAME");

   begin
      if Request.Raw_Header (Request_Method_Header) = To_Raw ("POST")
        and then Request.Raw_Header (Content_Type_Header)
                   = To_Raw ("application/x-www-form-urlencoded")
      then
         declare
            Buffer : Ada.Streams.Stream_Element_Array (1 .. 1024);
            Last   : Ada.Streams.Stream_Element_Offset;

         begin
            Request.Stream.Read (Buffer, Last);
            Strings.Include (Extract_String (Buffer (1 .. Last)));
         end;
      end if;

      Reply.Set_Content_Type
       (League.Strings.To_Universal_String ("text/html"));
--      Reply.Set_Status (200);
      String'Write (Reply.Stream, Page_Top);
      Strings.Iterate (Output'Access);
      String'Write (Reply.Stream, Page_Middle);
      Ada.Streams.Stream_Element_Array'Write
       (Reply.Stream,
        Request.Raw_Header (Script_Name_Header).To_Stream_Element_Array);
      String'Write (Reply.Stream, Page_Bottom);
      String'Write (Reply.Stream, Page_Done);
      Status := 0;
   end Handler;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : League.Strings.Universal_String;
     Right : League.Strings.Universal_String) return Boolean
   is
      use type League.Strings.Sort_Key;

   begin
      return Left.Collation < Right.Collation;
   end Less;

begin
   --  Turkish
   Strings.Include (League.Strings.To_Universal_String ("merhaba dünya"));
   --  Thai
   Strings.Include (League.Strings.To_Universal_String ("สวัสดีชาวโลก"));
   --  Korean
   Strings.Include (League.Strings.To_Universal_String ("안녕하세요"));
   --  Japanse
   Strings.Include (League.Strings.To_Universal_String ("こんにちは世界"));
   --  Hebrew
   Strings.Include (League.Strings.To_Universal_String ("שלום העולם"));
   --  Arabic
   Strings.Include (League.Strings.To_Universal_String ("مرحبا العالم"));
   --  Chinese
   Strings.Include (League.Strings.To_Universal_String ("你好世界"));
   --  German
   Strings.Include (League.Strings.To_Universal_String ("Hallo Welt"));
   --  Greek
   Strings.Include (League.Strings.To_Universal_String ("Γεια σας κόσμο"));
   --  English
   Strings.Include (League.Strings.To_Universal_String ("Hello, world!"));
   --  French
   Strings.Include
    (League.Strings.To_Universal_String ("Bonjour tout le monde"));
   --  Russian
   Strings.Include (League.Strings.To_Universal_String ("Здравствуй, мир!"));
end Demo.Callbacks;
