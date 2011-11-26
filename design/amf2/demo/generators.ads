with AMF.UML.Visitors;

private with AMF.UML.Classes;
private with AMF.UML.Models;
private with AMF.UML.Packages;
private with AMF.UML.Profiles;

package Generators is

   type Generator is new AMF.UML.Visitors.UML_Visitor with private;

private

   type Generator is new AMF.UML.Visitors.UML_Visitor with record
      In_Model : Boolean := False;
   end record;

   overriding procedure Enter_Class
    (Self    : in out Generator;
     Element : not null AMF.UML.Classes.UML_Class_Access);

   overriding procedure Enter_Model
    (Self    : in out Generator;
     Element : not null AMF.UML.Models.UML_Model_Access);

   overriding procedure Leave_Model
    (Self    : in out Generator;
     Element : not null AMF.UML.Models.UML_Model_Access);

   overriding procedure Enter_Package
    (Self    : in out Generator;
     Element : not null AMF.UML.Packages.UML_Package_Access);

   overriding procedure Enter_Profile
    (Self    : in out Generator;
     Element : not null AMF.UML.Profiles.UML_Profile_Access);

end Generators;
