with Ada.Command_Line;

with Qt_Ada.Application;
with Qt4.Tree_Views.Constructors;

with CMOF;
with XMI.Reader;

with CMOF_Tree_Models;

procedure Main is
   Model : CMOF_Tree_Models.CMOF_Tree_Model_Access;
   View  : Qt4.Tree_Views.Q_Tree_View_Access;
   Root  : CMOF.CMOF_Element := XMI.Reader (Ada.Command_Line.Argument (1));

begin
   Qt_Ada.Application.Initialize;

   View := Qt4.Tree_Views.Constructors.Create;
   Model := CMOF_Tree_Models.Constructors.Create;
   Model.Set_Root (Root);
   View.Set_Model (Model);

   View.Show;

   Qt_Ada.Application.Execute;
   Qt_Ada.Application.Finalize;
end Main;
