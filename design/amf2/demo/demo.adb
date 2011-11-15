
with Ada.Wide_Wide_Text_IO;

--  with AMF.Elements.Collections;
with AMF.CMOF.Packages.Collections;
with AMF.Extents.Collections;
with AMF.Facility;
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
   AMF.Facility.Initialize;

   --  Loading specified model

   Store := XMI.Reader.Read_File (League.Application.Arguments.Element (1));

   --  Output list of all loaded models.

   declare
      Extents : AMF.Extents.Collections.Set_Of_Extent
        := AMF.Facility.Extent;

      procedure Process (Position : AMF.Extents.Collections.Extent_Sets.Cursor);

      -------------
      -- Process --
      -------------

      procedure Process (Position : AMF.Extents.Collections.Extent_Sets.Cursor) is
         Extent : AMF.URI_Stores.URI_Store_Access
           := AMF.URI_Stores.URI_Store_Access
               (AMF.Extents.Collections.Extent_Sets.Element (Position));

      begin
         Put_Line (Extent.Context_URI.To_Wide_Wide_String);
      end Process;

   begin
      Extents.Iterate (Process'Access);
   end;

   --  Output list of all known metamodels.

   declare
      Packages : constant AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package
        := Store.Get_Package;

   begin
      for J in 1 .. Packages.Length loop
         Put_Line
          (Packages.Element (J).Get_Name.Value.To_Wide_Wide_String
             & ' '
             & Packages.Element (J).Get_Uri.Value.To_Wide_Wide_String);
      end loop;
   end;

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
