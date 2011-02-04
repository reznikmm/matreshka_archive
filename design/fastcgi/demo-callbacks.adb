with Ada.Containers.Ordered_Sets;
with Ada.Streams;

with League.Stream_Element_Vectors;
with League.Strings;
with League.Text_Codecs;

package body Demo.Callbacks is

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   function Less
    (Left  : League.Strings.Universal_String;
     Right : League.Strings.Universal_String) return Boolean;

   package Sets is
     new Ada.Containers.Ordered_Sets
          (League.Strings.Universal_String,
           Less,
           League.Strings."=");

   Page_Top : constant League.Strings.Universal_String
     := +("<?xml version='1.1' encoding='utf-8'?>"
            & "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'>"
            & "<html xmlns='http://www.w3.org/1999/xhtml'>"
            & "<head>"
            & "<title>Matreshka's FastCGI and Unicode Collation demo</title>"
            & "</head>"
            & "<body>"
            & "<p>This simple FastCGI application sorts set of strings with Unicode Collation Algoriphm. You can enter own strings using text box and submit button.</p>"
            & "<table>"
            & "<tbody>");

   Page_Middle : constant League.Strings.Universal_String
     := +("</tbody>"
            & "</table>"
            & "<form action='");

   Page_Bottom : constant League.Strings.Universal_String
     := +("' method='POST' accept-charset='utf-8'>"
            & "<input type='text' name='string'/>"
            & "<input type='submit' name='submit'/>"
            & "</form>");

   Page_Done : constant League.Strings.Universal_String
     := +("</body>"
            & "</html>");

   Codec              : League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("utf-8"));
   String_Parameter   :
     constant League.Stream_Element_Vectors.Stream_Element_Vector
       := Codec.Encode (+"string");
   Script_Name_Header :
     constant League.Stream_Element_Vectors.Stream_Element_Vector
       := Codec.Encode (+"SCRIPT_NAME");

   Strings          : Sets.Set;

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

      procedure Put (Item : League.Strings.Universal_String);

      ------------
      -- Output --
      ------------

      procedure Output (Position : Sets.Cursor) is
         Element : constant League.Strings.Universal_String
           := Sets.Element (Position);

      begin
         Put (+"<tr><td>");
         Put (Element);
         Put (+"<td></tr>");
      end Output;

      ---------
      -- Put --
      ---------

      procedure Put (Item : League.Strings.Universal_String) is
      begin
         Ada.Streams.Stream_Element_Array'Write
          (Reply.Stream,
           Codec.Encode (Item).To_Stream_Element_Array);
      end Put;

   begin
      if Request.Has_Raw_Query_Item (String_Parameter) then
         Strings.Include
          (Codec.Decode
            (Request.Raw_Query_Item
              (String_Parameter).To_Stream_Element_Array));
      end if;

      Reply.Set_Content_Type
       (League.Strings.To_Universal_String ("text/html"));
      Put (Page_Top);
      Strings.Iterate (Output'Access);
      Put (Page_Middle);
      Put
       (Codec.Decode
         (Request.Raw_Header (Script_Name_Header).To_Stream_Element_Array));
      Put (Page_Bottom);
      Put (Page_Done);
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
