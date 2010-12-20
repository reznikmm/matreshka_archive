with Ada.Command_Line;

with CMOF;
with XMI.Reader;

procedure XMI.Main is
   X : CMOF.CMOF_Element;

begin
   X := XMI.Reader (Ada.Command_Line.Argument (1));
end XMI.Main;
