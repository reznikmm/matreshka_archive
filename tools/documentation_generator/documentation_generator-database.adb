with Ada.Containers.Hashed_Maps;
with Ada.Containers.Ordered_Sets;
with Ada.Strings.Wide_Fixed;
with Ada.Strings.Wide_Hash;
with Ada.Unchecked_Conversion;

with Asis.Compilation_Units;
with Asis.Declarations;
with Asis.Elements;
with Asis.Text;

with League.Characters.Latin;
with League.Strings.Hash;

package body Documentation_Generator.Database is

   function Hash
    (Item : Asis.Compilation_Unit) return Ada.Containers.Hash_Type;

   function Hash (Item : Asis.Element) return Ada.Containers.Hash_Type;

   function Is_Less
    (Left : not null Type_Access; Right : not null Type_Access) return Boolean;

   function Is_Less
    (Left  : not null Module_Access;
     Right : not null Module_Access) return Boolean;

   package Module_Sets is
     new Ada.Containers.Ordered_Sets (Module_Access, Is_Less);

   package Compilation_Unit_Maps is
     new Ada.Containers.Hashed_Maps
          (Asis.Compilation_Unit,
           Compilation_Unit_Access,
           Hash,
           Asis.Compilation_Units.Is_Equal);
--           League.Strings.Hash,
--           League.Strings."=");

   package Type_Declaration_Maps is
     new Ada.Containers.Hashed_Maps
          (Asis.Element, Type_Access, Hash, Asis.Elements.Is_Equal);

   package Type_Declaration_Sets is
     new Ada.Containers.Ordered_Sets (Type_Access, Is_Less);

   Compilation_Units     : Compilation_Unit_Maps.Map;
   All_Modules           : Module_Sets.Set;
   Type_Declarations     : Type_Declaration_Maps.Map;
   All_Type_Declarations : Type_Declaration_Sets.Set;

   ----------------------
   -- Compilation_Unit --
   ----------------------

   function Compilation_Unit
    (Self : Type_Information'Class) return Compilation_Unit_Access is
   begin
      return Lookup (Asis.Elements.Enclosing_Compilation_Unit (Self.Element));
   end Compilation_Unit;

   ------------
   -- Create --
   ------------

   function Create
    (Unit   : Asis.Compilation_Unit;
     Module : not null Module_Access) return Compilation_Unit_Access
   is
      Aux : constant Compilation_Unit_Access := Lookup (Unit);

   begin
      Aux.Module := Module;

      return Aux;
   end Create;

   ------------
   -- Create --
   ------------

   function Create
    (Name              : League.Strings.Universal_String;
     Short_Description : League.Strings.Universal_String) return Module_Access
   is
      Aux : constant Module_Access
        := new Module_Information'
                (Name              => Name,
                 Short_Description => Short_Description);

   begin
      All_Modules.Insert (Aux);

      return Aux;
   end Create;

   -----------------
   -- Description --
   -----------------

   function Description
    (Self : Type_Information'Class) return League.Strings.Universal_String
   is
      Lines : constant Asis.Text.Line_List
        := Asis.Text.Lines
            (Self.Element,
             Asis.Text.Last_Line_Number (Self.Element) + 1,
             Asis.Text.Compilation_Unit_Span (Self.Element).Last_Line);
      Aux   : League.Strings.Universal_String;

   begin
      --  Extract text description from the comment starting immidiately after
      --  last line of type declaration.

      for J in Lines'Range loop
         declare
            Line      : constant Asis.Program_Text
              := Asis.Text.Line_Image (Lines (J));
            Comment   : constant Asis.Program_Text
              := Asis.Text.Comment_Image (Lines (J));
            Delimiter : constant Natural
              := Ada.Strings.Wide_Fixed.Index (Comment, "-");

         begin
            exit when Line'Length = 0;

            if Delimiter /= 0 then
               if Delimiter + 4 > Comment'Last then
                  Aux.Append (League.Characters.Latin.Line_Feed);
                  Aux.Append (League.Characters.Latin.Line_Feed);

               elsif not Aux.Is_Empty then
                  Aux.Append (' ');
               end if;

               Aux.Append
                (League.Strings.From_UTF_16_Wide_String
                  (Comment (Delimiter + 4 .. Comment'Last)));
            end if;
         end;
      end loop;

      return Aux;
   end Description;

   ----------
   -- Hash --
   ----------

   function Hash
    (Item : Asis.Compilation_Unit) return Ada.Containers.Hash_Type is
   begin
      return
        Ada.Strings.Wide_Hash (Asis.Compilation_Units.Unit_Full_Name (Item));
   end Hash;

   ----------
   -- Hash --
   ----------

   function Hash (Item : Asis.Element) return Ada.Containers.Hash_Type is

      function To_Hash_Type is
        new Ada.Unchecked_Conversion
             (Asis.ASIS_Integer, Ada.Containers.Hash_Type);

   begin
      return To_Hash_Type (Asis.Elements.Hash (Item));
   end Hash;

   -------------
   -- Is_Less --
   -------------

   function Is_Less
    (Left  : not null Module_Access;
     Right : not null Module_Access) return Boolean
   is
      use type League.Strings.Universal_String;

   begin
      return Left.Name < Right.Name;
   end Is_Less;

   -------------
   -- Is_Less --
   -------------

   function Is_Less
    (Left : not null Type_Access; Right : not null Type_Access) return Boolean
   is
      use type League.Strings.Sort_Key;

      L : constant League.Strings.Sort_Key := Left.Name.To_Lowercase.Collation;
      R : constant League.Strings.Sort_Key := Right.Name.To_Lowercase.Collation;

   begin
      return L < R;
   end Is_Less;

   -------------
   -- Iterate --
   -------------

   procedure Iterate
    (Process : not null access procedure (Module : not null Module_Access))
   is
      Position : Module_Sets.Cursor := All_Modules.First;

   begin
      while Module_Sets.Has_Element (Position) loop
         Process (Module_Sets.Element (Position));
         Module_Sets.Next (Position);
      end loop;
   end Iterate;

   -------------
   -- Iterate --
   -------------

   procedure Iterate
    (Process : not null access procedure (The_Type : not null Type_Access))
   is
      Position : Type_Declaration_Sets.Cursor := All_Type_Declarations.First;

   begin
      while Type_Declaration_Sets.Has_Element (Position) loop
         Process (Type_Declaration_Sets.Element (Position));
         Type_Declaration_Sets.Next (Position);
      end loop;
   end Iterate;

   ------------
   -- Lookup --
   ------------

   function Lookup
    (Unit : Asis.Compilation_Unit) return Compilation_Unit_Access is
   begin
      if not Compilation_Units.Contains (Unit) then
         Compilation_Units.Insert
          (Unit,
           new Compilation_Unit_Information'
                (Unit   => Unit,
                 Module => null));
      end if;

      return Compilation_Units.Element (Unit);
   end Lookup;

   ------------
   -- Lookup --
   ------------

   function Lookup (Declaration : Asis.Element) return Type_Access is
      Aux : Type_Access;

   begin
      if not Type_Declarations.Contains (Declaration) then
         Aux := new Type_Information'(Element => Declaration);

         Type_Declarations.Insert (Declaration, Aux);
         All_Type_Declarations.Insert (Aux);
      end if;

      return Type_Declarations.Element (Declaration);
   end Lookup;

   ------------
   -- Module --
   ------------

   function Module (Self : Type_Information'Class) return Module_Access is
   begin
      return Self.Compilation_Unit.Module;
   end Module;

   ----------
   -- Name --
   ----------

   function Name
    (Self : Compilation_Unit_Information'Class)
       return League.Strings.Universal_String is
   begin
      return
        League.Strings.From_UTF_16_Wide_String
         (Asis.Compilation_Units.Unit_Full_Name (Self.Unit));
   end Name;

   ----------
   -- Name --
   ----------

   function Name
    (Self : Module_Information'Class) return League.Strings.Universal_String is
   begin
      return Self.Name;
   end Name;

   ----------
   -- Name --
   ----------

   function Name
    (Self : Type_Information'Class) return League.Strings.Universal_String
   is
      Names : constant Asis.Defining_Name_List
        := Asis.Declarations.Names (Self.Element);

   begin
      return
        League.Strings.From_UTF_16_Wide_String
         (Asis.Declarations.Defining_Name_Image (Names (Names'First)));
   end Name;

   -----------------------
   -- Short_Description --
   -----------------------

   function Short_Description
    (Self : Module_Information'Class) return League.Strings.Universal_String is
   begin
      return Self.Short_Description;
   end Short_Description;

end Documentation_Generator.Database;
