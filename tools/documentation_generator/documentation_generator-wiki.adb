with Ada.Wide_Wide_Text_IO;

with League.Strings;

with Documentation_Generator.Database;

package body Documentation_Generator.Wiki is

   use Documentation_Generator.Database;
   use type League.Strings.Universal_String;

   procedure Generate_Main_Page;

   procedure Generate_Type_Page (The_Type : not null Type_Access);

   function Wiki_Link
    (The_Module : not null Module_Access;
     Text       : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Returns wiki format reference to the corresponding wiki page.

   function Wiki_Link
    (The_Type : not null Type_Access;
     Text     : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Returns wiki format reference to the corresponding wiki page.

   function Wiki_Resource
    (The_Type : not null Type_Access) return League.Strings.Universal_String;
   --  Returns wiki resource name for the specified type.

   --------------
   -- Generate --
   --------------

   procedure Generate is
   begin
      Generate_Main_Page;
      Iterate (Generate_Type_Page'Access);
   end Generate;

   ------------------------
   -- Generate_Type_Page --
   ------------------------

   procedure Generate_Type_Page (The_Type : not null Type_Access) is
      File : Ada.Wide_Wide_Text_IO.File_Type;

   begin
      Ada.Wide_Wide_Text_IO.Create
       (File,
        Ada.Wide_Wide_Text_IO.Out_File,
        "wiki/"
          & Wiki_Resource (The_Type).To_UTF_8_String
          & ".wiki");

      Ada.Wide_Wide_Text_IO.Put_Line (File, "[[PageOutline]]");
      Ada.Wide_Wide_Text_IO.New_Line (File);

      Ada.Wide_Wide_Text_IO.Put_Line
       (File,
        "= "
          & The_Type.Name.To_Wide_Wide_String
          & " Type (declared in "
          & The_Type.Compilation_Unit.Name.To_Wide_Wide_String
          & " package) =");
      Ada.Wide_Wide_Text_IO.New_Line (File);

      Ada.Wide_Wide_Text_IO.Put_Line
       (File, The_Type.Description.To_Wide_Wide_String);
      Ada.Wide_Wide_Text_IO.New_Line (File);

      Ada.Wide_Wide_Text_IO.Close (File);
   end Generate_Type_Page;

   ------------------------
   -- Generate_Main_Page --
   ------------------------

   procedure Generate_Main_Page is

      procedure Process_Module (The_Module : not null Module_Access);

      procedure Process_Type (The_Type : not null Type_Access);

      File : Ada.Wide_Wide_Text_IO.File_Type;

      --------------------
      -- Process_Module --
      --------------------

      procedure Process_Module (The_Module : not null Module_Access) is
      begin
         Ada.Wide_Wide_Text_IO.Put_Line
          (File,
           "|| "
             & Wiki_Link (The_Module, The_Module.Name).To_Wide_Wide_String
             & " || "
             & The_Module.Short_Description.To_Wide_Wide_String
             & " ||");
      end Process_Module;

      ------------------
      -- Process_Type --
      ------------------

      procedure Process_Type (The_Type : not null Type_Access) is
      begin
         Ada.Wide_Wide_Text_IO.Put_Line
          (File,
           "|| "
             & Wiki_Link
                (The_Type,
                 The_Type.Name).To_Wide_Wide_String
             & " || "
             & The_Type.Compilation_Unit.Name.To_Wide_Wide_String
             & " ||");
      end Process_Type;

   begin
      Ada.Wide_Wide_Text_IO.Create
       (File, Ada.Wide_Wide_Text_IO.Out_File, "wiki/Reference.wiki");

      Ada.Wide_Wide_Text_IO.Put_Line (File, "= User's Guide =");
      Ada.Wide_Wide_Text_IO.New_Line (File);

      Ada.Wide_Wide_Text_IO.Put_Line (File, "== Modules ==");
      Ada.Wide_Wide_Text_IO.New_Line (File);

      Ada.Wide_Wide_Text_IO.Put_Line (File, "||= Name =||= Description =||");
      Iterate (Process_Module'Access);
      Ada.Wide_Wide_Text_IO.New_Line (File);

      Ada.Wide_Wide_Text_IO.Put_Line (File, "== Types ==");
      Ada.Wide_Wide_Text_IO.New_Line (File);

      Ada.Wide_Wide_Text_IO.Put_Line (File, "||= Name =||= Package =||");
      Iterate (Process_Type'Access);
      Ada.Wide_Wide_Text_IO.New_Line (File);

      Ada.Wide_Wide_Text_IO.Close (File);
   end Generate_Main_Page;

   ---------------
   -- Wiki_Link --
   ---------------

   function Wiki_Link
    (The_Type : not null Type_Access;
     Text     : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      return
        "[wiki:"
          & Wiki_Resource (The_Type)
          & " "
          & Text
          & ']';
   end Wiki_Link;

   ---------------
   -- Wiki_Link --
   ---------------

   function Wiki_Link
    (The_Module : not null Module_Access;
     Text       : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      return
        "[wiki:Reference/"
          & The_Module.Name
          & " "
          & Text
          & ']';
   end Wiki_Link;

   -------------------
   -- Wiki_Resource --
   -------------------

   function Wiki_Resource
    (The_Type : not null Type_Access) return League.Strings.Universal_String is
   begin
      return
        "Reference/"
          & The_Type.Module.Name
          & "/_types/"
          & The_Type.Name;
   end Wiki_Resource;

end Documentation_Generator.Wiki;
