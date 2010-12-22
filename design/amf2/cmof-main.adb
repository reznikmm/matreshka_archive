with CMOF.Extents;
with Cmof.Internals.Constructors;

procedure Cmof.Main is
   use Cmof;
   use CMOF.Extents;
   use Cmof.Internals.Constructors;

   E : CMOF_Extent := Create_Extent;
   X : Cmof_Class  := Create_Class (E);
   Y : Cmof_Class  := Create_Association (E);

begin
   null;
end Cmof.Main;
