with Asis;

with League.Strings;

package Documentation_Generator.Database is

   type Module_Information is tagged limited private;

   type Module_Access is access all Module_Information;

   type Compilation_Unit_Information is tagged limited private;

   type Compilation_Unit_Access is access all Compilation_Unit_Information;

   type Type_Information is tagged limited private;

   type Type_Access is access all Type_Information;

   ------------------------
   -- Module_Information --
   ------------------------

   function Name
    (Self : Module_Information'Class) return League.Strings.Universal_String;
   --  Returns name of the module.

   function Short_Description
    (Self : Module_Information'Class) return League.Strings.Universal_String;
   --  Returns short description of the module.

   ----------------------------------
   -- Compilation_Unit_Information --
   ----------------------------------

   function Name
    (Self : Compilation_Unit_Information'Class)
       return League.Strings.Universal_String;
   --  Returns full name of the compilation unit.

   ----------------------
   -- Type_Information --
   ----------------------

   function Name
    (Self : Type_Information'Class) return League.Strings.Universal_String;
   --  Returns name of the type.

   function Compilation_Unit
    (Self : Type_Information'Class) return Compilation_Unit_Access;
   --  Returns compilation unit in which type is declared.

   function Module (Self : Type_Information'Class) return Module_Access;
   --  Returns module to which specified type belongs.

   function Description
    (Self : Type_Information'Class) return League.Strings.Universal_String;
   --  Returns description of the type.

   ------------------------
   -- Global Supbrograms --
   ------------------------

   function Create
    (Name              : League.Strings.Universal_String;
     Short_Description : League.Strings.Universal_String) return Module_Access;
   --  Creates new module.

   function Create
    (Unit   : Asis.Compilation_Unit;
     Module : not null Module_Access) return Compilation_Unit_Access;
   --  Creates compilation unit and associate it with the specified module.

   function Lookup
    (Unit : Asis.Compilation_Unit) return Compilation_Unit_Access;
   --  Lookup for compilation unit with the specified name. Creates new one if
   --  not present.

   function Lookup (Declaration : Asis.Element) return Type_Access;
   --  Lookup for type declaration. Creates new one if not present.

   procedure Iterate
    (Process : not null access procedure (Module : not null Module_Access));
   --  Iterate over all modules.

   procedure Iterate
    (Process : not null access procedure (The_Type : not null Type_Access));
   --  Iterate over all type declarations.

private

   type Module_Information is tagged limited record
      Name              : League.Strings.Universal_String;
      Short_Description : League.Strings.Universal_String;
   end record;

   type Compilation_Unit_Information is tagged limited record
      Module : Module_Access;
      Unit   : Asis.Compilation_Unit;
   end record;

   type Type_Information is tagged limited record
      Element : Asis.Element;
   end record;

end Documentation_Generator.Database;
