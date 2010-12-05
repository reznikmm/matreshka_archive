with FastCGI.Requests;
with FastCGI.Replies;

package Demo.Callbacks is

   procedure Handler
    (Request : FastCGI.Requests.Request;
     Reply   : out FastCGI.Replies.Reply;
     Status  : out Integer);

end Demo.Callbacks;
