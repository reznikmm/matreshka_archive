
with AMF.Internals.Factories.UML_Factory;
with AMF.URI_Stores;
with League.Application;
with XMI.Reader;

procedure XMI.Main is
   X : AMF.URI_Stores.URI_Store_Access;

begin
   X := XMI.Reader.Read_File (League.Application.Arguments.Element (1));
end XMI.Main;
