with Ada.Wide_Wide_Text_IO;

with AMF.Facility;
with AMF.Elements.Collections;
with AMF.Extents.Collections;
with AMF.Internals.Modules.MOF_Module;
with AMF.Internals.Modules.OCL_Module;
with AMF.Internals.Modules.UML_Module;
with AMF.Internals.Modules.UTP_Module;
with AMF.URI_Stores;
with League.Application;
with XMI.Reader;
with XMI.Writer;

procedure XMI.Main is
   Store : AMF.URI_Stores.URI_Store_Access;

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
   --  Initialize facility

   AMF.Facility.Initialize;

   --  Load model

   Store := XMI.Reader.Read_URI (League.Application.Arguments.Element (1));

   --  Output list of actually loaded models

   Ada.Wide_Wide_Text_IO.Put_Line ("Loaded models:");
   AMF.Facility.Extent.Iterate (Output_URI'Access);

   declare
      Elements : AMF.Elements.Collections.Set_Of_Element
        := Store.Elements;

   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       (Store.URI (Elements.Element (1)).To_Wide_Wide_String);
   end;

   Ada.Wide_Wide_Text_IO.Put_Line (XMI.Writer (Store).To_Wide_Wide_String);
end XMI.Main;
