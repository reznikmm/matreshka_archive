with Ada.Command_Line;

with CMOF;
with XMI.Reader;

procedure XMI.Main is
   X : CMOF.CMOF_Extent;

begin
   X := XMI.Reader (Ada.Command_Line.Argument (1));
end XMI.Main;
