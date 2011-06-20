with AMF.Generic_Collections;

package AMF.Elements.Collections is

   pragma Preelaborate;

   package Collections_Of_Element is
     new AMF.Generic_Collections
          (AMF.Elements.Abstract_Element'Class, AMF.Elements.Element_Access);

   type Reflective_Collection is
     new Collections_Of_Element.Set with null record;

end AMF.Elements.Collections;
