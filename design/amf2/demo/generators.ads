private with AMF.UML.Classes;
with AMF.Visitors.UML_Containment;

package Generators is

   type Generator is
     new AMF.Visitors.UML_Containment.UML_Containment_Visitor with private;

private

   type Generator is
     new AMF.Visitors.UML_Containment.UML_Containment_Visitor with record
      In_Model : Boolean := False;
   end record;

   overriding procedure Enter_Class
    (Self    : in out Generator;
     Element : not null AMF.UML.Classes.UML_Class_Access);

end Generators;
