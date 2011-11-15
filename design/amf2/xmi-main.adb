with Ada.Wide_Wide_Text_IO;

with AMF.Facility;
with AMF.Extents.Collections;
with AMF.Internals.Factories.UML_Factory;
with AMF.URI_Stores;
with League.Application;
with XMI.Reader;

procedure XMI.Main is
   X : AMF.URI_Stores.URI_Store_Access;

   procedure Output_URI
    (Position : AMF.Extents.Collections.Extent_Sets.Cursor);

   ----------------
   -- Output_URI --
   ----------------

   procedure Output_URI
    (Position : AMF.Extents.Collections.Extent_Sets.Cursor) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       ("  "
          & AMF.URI_Stores.URI_Store'Class
             (AMF.Extents.Collections.Extent_Sets.Element
               (Position).all).Context_URI.To_Wide_Wide_String);
   end Output_URI;

begin
   AMF.Facility.Initialize;

   X := XMI.Reader.Read_File (League.Application.Arguments.Element (1));

   Ada.Wide_Wide_Text_IO.Put_Line ("Loaded models:");
   AMF.Facility.Extent.Iterate (Output_URI'Access);
end XMI.Main;
