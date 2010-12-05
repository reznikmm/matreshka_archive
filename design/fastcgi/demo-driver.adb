with FastCGI.Application;
with Demo.Callbacks;

procedure Demo.Driver is
begin
   FastCGI.Application.Initialize;
   FastCGI.Application.Execute (Demo.Callbacks.Handler'Access);
   FastCGI.Application.Finalize;
end Demo.Driver;
