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

      String_Parameter :
        constant League.Stream_Element_Vectors.Stream_Element_Vector
          := To_Raw ("string");
      Script_Name_Header :
        constant League.Stream_Element_Vectors.Stream_Element_Vector
          := To_Raw ("SCRIPT_NAME");

   begin
      if Request.Has_Raw_Parameter (String_Parameter) then
         Strings.Include
          (Codec.Decode
            (Request.Raw_Parameter
              (String_Parameter).To_Stream_Element_Array));
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
