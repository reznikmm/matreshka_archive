with League.Strings;
with League.Text_Codecs;

package body Demo.Callbacks is

   Codec : League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec (League.Strings.To_Universal_String ("utf-8"));

   -------------
   -- Handler --
   -------------

   procedure Handler
    (Request : FastCGI.Requests.Request;
     Reply   : out FastCGI.Replies.Reply;
     Status  : out Integer) is
   begin
      Reply.Set_Raw_Header
       (Codec.Encode (League.Strings.To_Universal_String ("Content-type")),
        Codec.Encode (League.Strings.To_Universal_String ("text/plain")));
      Status := 0;
   end Handler;

end Demo.Callbacks;
