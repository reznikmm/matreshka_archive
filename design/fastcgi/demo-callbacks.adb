
package body Demo.Callbacks is

   -------------
   -- Handler --
   -------------

   procedure Handler
    (Request : FastCGI.Requests.Request;
     Reply   : out FastCGI.Replies.Reply;
     Status  : out Integer) is
   begin
      null;
   end Handler;

end Demo.Callbacks;
