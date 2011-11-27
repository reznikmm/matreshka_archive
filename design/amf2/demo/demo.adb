
with AMF.Facility;
with AMF.URI_Stores;
with League.Application;
with XMI.Reader;

with AMF.Internals.Factories.UML_Factory;
--  This package should be included into partition closure to be able to
--  process UML models.

with Generators;

procedure Demo is
   Store     : AMF.URI_Stores.URI_Store_Access;
   Generator : Generators.Generator;

begin
   AMF.Facility.Initialize;

   --  Loading specified model

   Store := XMI.Reader.Read_File (League.Application.Arguments.Element (1));

   --  Generate code

   Generator.Visit (Store);
end Demo;
