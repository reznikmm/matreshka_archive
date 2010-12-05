with League.Strings;

package body Demo.Callbacks is

   -------------
   -- Handler --
   -------------

   procedure Handler
    (Request : FastCGI.Requests.Request;
     Reply   : out FastCGI.Replies.Reply;
     Status  : out Integer) is
   begin
      Reply.Set_Content_Type
       (League.Strings.To_Universal_String ("text/plain"));
      String'Write (Reply.Stream, "Hello, world!");
      Status := 0;
   end Handler;

end Demo.Callbacks;
