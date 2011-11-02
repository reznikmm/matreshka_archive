
with Ada.Wide_Wide_Text_IO;

--  with AMF.Elements.Collections;
with AMF.URI_Stores;
with League.Application;
with XMI.Reader;

with AMF.Internals.Factories.UML_Factory;
--  This package should be included into partition closure to be able to
--  process UML models.

with Generators;

procedure Demo is
   use Ada.Wide_Wide_Text_IO;

--   function Meta_Class_Name (Element : AMF.Elements.Collections
   Store     : AMF.URI_Stores.URI_Store_Access;
--     Elements  : AMF.Elements.Collections.Reflective_Collection;
   Generator : Generators.Generator;

begin
   --  Loading specified model

   Store := XMI.Reader (League.Application.Arguments.Element (1));

   --  Generate code

   Generator.Visit (Store);

--     Elements := Store.Elements;
--
--     for J in 1 .. Elements.Length loop
--        Put_Line
--          (Elements.Element
--             (J).Get_Meta_Class.Get_Name.Value.To_Wide_Wide_String);
--  --          (AMF.Elements.Abstract_Element'Class
--  --             (Elements.Element (J).all).Get_Meta_Class.Get_Name.Value.To_Wide_Wide_String);
--     end loop;
end Demo;
