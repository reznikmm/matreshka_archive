with Visitors;

private with AMF.UML.Classes;

package Generators is

   type Generator is new Visitors.Visitor with private;

private

   type Generator is new Visitors.Visitor with null record;

   overriding procedure Visit_Class
     (Self    : in out Generator;
      Element : not null AMF.UML.Classes.UML_Class_Access);

end Generators;
