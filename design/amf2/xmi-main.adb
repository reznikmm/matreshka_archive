with Ada.Command_Line;

with AMF.URI_Stores;
with XMI.Reader;

procedure XMI.Main is
   X : AMF.URI_Stores.URI_Store_Access;

begin
   X := XMI.Reader (Ada.Command_Line.Argument (1));
end XMI.Main;
