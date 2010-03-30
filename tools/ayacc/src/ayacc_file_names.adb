
with Ada.Characters.Handling;
with Ada.Directories;
with Ada.Strings.Unbounded;

with String_Pkg;

package body Ayacc_File_Names is

   use Ada.Characters.Handling;
   use Ada.Strings.Unbounded;

   function "+" (Item : String) return Unbounded_String
     renames To_Unbounded_String;

   function "+" (Item : Unbounded_String) return String
     renames To_String;

   Source_File_Name       : Unbounded_String;
   Out_File_Name          : Unbounded_String;
   Verbose_File_Name      : Unbounded_String;
   Template_File_Name     : Unbounded_String;
   Actions_File_Name      : Unbounded_String;
   Shift_Reduce_File_Name : Unbounded_String;
   Goto_File_Name         : Unbounded_String;
   Tokens_File_Name       : Unbounded_String;
-- UMASS CODES :
   Error_Report_File_Name : Unbounded_String;
   Listing_File_Name      : Unbounded_String;
-- END OF UMASS CODES.
   C_Lex_File_Name        : Unbounded_String;
   Include_File_Name      : Unbounded_String;


--RJS ==========================================

  function End_of_Unit_Name (Name : in String) return Natural is
    Dot_Position : Natural := Name'Last;
  begin
    while Dot_Position >= Name'First and then
          Name (Dot_Position) /= '.'
    loop
      Dot_Position := Dot_Position - 1;
    end loop;
    return Dot_Position - 1;
  end End_of_Unit_Name;


  function Get_Unit_Name (Filename : in String) return String is

  -- modified to check for valid Ada identifiers. 11/28/88 kn

    Filename_Without_Extension : String :=
      Filename (Filename'First .. End_of_Unit_Name (Filename));

    End_of_Directory : Natural := Filename_Without_Extension'Last + 1;


    function Is_Alphabetic (Ch : in Character) return Boolean is
    begin
      return Ch in 'A' .. 'Z' or else
             Ch in 'a' .. 'z';
    end Is_Alphabetic;

    function Is_AlphaNum_or_Underscore (Ch : in Character) return Boolean is
    begin
      return Is_Alphabetic(Ch) or else
             Ch in '0' .. '9'  or else
             Ch = '_' or else Ch = '-';
    end Is_AlphaNum_or_Underscore;

  use String_Pkg;

  begin
    -- find end of directory
    for Pos in reverse Filename_Without_Extension'FIRST..
		       Filename_Without_Extension'LAST loop
      exit when Filename_Without_Extension(Pos) = '/';
      End_Of_Directory := Pos;
    end loop;

    if End_Of_Directory <= Filename_Without_Extension'LAST and then
       Is_Alphabetic (Filename_Without_Extension (End_of_Directory)) then

       Check_Remaining_Characters :
       for i in End_Of_Directory + 1 .. Filename_Without_Extension'LAST
       loop
	 if not Is_AlphaNum_or_Underscore (Filename_Without_Extension(i)) then
	   return "";
         elsif Filename_Without_Extension(i) = '-' then
           Filename_Without_Extension(i) := '.';
	 end if;
       end loop Check_Remaining_Characters;

       return Value (Mixed (Filename_Without_Extension (End_of_Directory ..
                            Filename_Without_Extension'Last)));
    else
      return "";
    end if;

  end Get_Unit_Name;

   ---------------------
   -- C_Lex_Unit_Name --
   ---------------------

   function C_Lex_Unit_Name return String is
      Filename : constant String := To_Upper (+C_Lex_File_Name);

   begin
      return Get_Unit_Name (Filename);
   end C_Lex_Unit_Name;

   ---------------------------
   -- Goto_Tables_Unit_Name --
   ---------------------------

   function Goto_Tables_Unit_Name return String is
      Filename : constant String := To_Upper (+Goto_File_Name);

   begin
      return Get_Unit_Name (Filename);
   end Goto_Tables_Unit_Name;

   -----------------------------------
   -- Shift_Reduce_Tables_Unit_Name --
   -----------------------------------

   function Shift_Reduce_Tables_Unit_Name return String is
      Filename : constant String := To_Upper (+Shift_Reduce_File_Name);

   begin
      return Get_Unit_Name (Filename);
   end Shift_Reduce_Tables_Unit_Name;

   ----------------------
   -- Tokens_Unit_Name --
   ----------------------

   function Tokens_Unit_Name return String is
      Filename : constant String := To_Upper (+Tokens_File_Name);

   begin
      return Get_Unit_Name (Filename);
   end Tokens_Unit_Name;

   --------------------
   -- Main_Unit_Name --
   --------------------

   function Main_Unit_Name return String is
      Filename : constant String := To_Upper (+Out_File_Name);

   begin
      return Get_Unit_Name (Filename);
   end Main_Unit_Name;

-- UMASS CODES :

   ----------------------------
   -- Error_Report_Unit_Name --
   ----------------------------

   function Error_Report_Unit_Name return String is
      Filename : constant String := To_Upper (+Error_Report_File_Name);

   begin
      return Get_Unit_Name (Filename);
   end Error_Report_Unit_Name;

-- END OF UMASS CODES.

--RJS ==========================================

   --------------------------
   -- Get_Source_File_Name --
   --------------------------

   function  Get_Source_File_Name return String is
   begin
      return +Source_File_Name;
   end;

   -----------------------
   -- Get_Out_File_Name --
   -----------------------

   function  Get_Out_File_Name return String is
   begin
      return +Out_File_Name;
   end;

   ---------------------------
   -- Get_Verbose_File_Name --
   ---------------------------

   function  Get_Verbose_File_Name return String is
   begin
      return +Verbose_File_Name;
   end;

   ----------------------------
   -- Get_Template_File_Name --
   ----------------------------

   function  Get_Template_File_Name return String is
   begin
      return +Template_File_Name;
   end;

   ---------------------------
   -- Get_Actions_File_Name --
   ---------------------------

   function  Get_Actions_File_Name return String is
   begin
      return +Actions_File_Name;
   end;

   --------------------------------
   -- Get_Shift_Reduce_File_Name --
   --------------------------------

   function  Get_Shift_Reduce_File_Name return String is
   begin
      return +Shift_Reduce_File_Name;
   end;

   ------------------------
   -- Get_Goto_File_Name --
   ------------------------

   function  Get_Goto_File_Name return String is
   begin
      return +Goto_File_Name;
   end;

   --------------------------
   -- Get_Tokens_File_Name --
   --------------------------

   function Get_Tokens_File_Name return String is
   begin
      return +Tokens_File_Name;
   end;

-- UMASS CODES :

   --------------------------------
   -- Get_Error_Report_File_Name --
   --------------------------------

   function Get_Error_Report_File_Name return String is
   begin
      return +Error_Report_File_Name;
   end Get_Error_Report_File_Name;

   ---------------------------
   -- Get_Listing_File_Name --
   ---------------------------

   function Get_Listing_File_Name return String is
   begin
      return +Listing_File_Name;
   end;

-- END OF UMASS CODES.

   -------------------------
   -- Get_C_Lex_File_Name --
   -------------------------

   function Get_C_Lex_File_Name return String is
   begin
      return +C_Lex_File_Name;
   end;

   ---------------------------
   -- Get_Include_File_Name --
   ---------------------------

   function Get_Include_File_Name return String is
   begin
      return +Include_File_Name;
   end;

   --------------------
   -- Set_File_Names --
   --------------------

   procedure Set_File_Names(Input_File, Extension: in String) is
      Base_Name : constant String := Ada.Directories.Base_Name (Input_File);

   begin
      if Input_File'Length < 3
        or else (Input_File(Input_File'Last) /= 'y'
                 and then Input_File(Input_File'Last) /= 'Y')
        or else Input_File(Input_File'Last - 1) /= '.' then
         raise Illegal_File_Name;
      end if;

      Source_File_Name := +Input_File;

      Out_File_Name := +Base_Name;
      Append (Out_File_Name, Extension);

      Verbose_File_Name := +Base_Name;
      Append (Verbose_File_Name, ".verbose");

      Tokens_File_Name := +Base_Name;
      Append (Tokens_File_Name, "_tokens" & Extension & "ds");

-- UMASS CODES :
      Error_Report_File_Name := +Base_Name;
      Append (Error_Report_File_Name, "-error_report" & Extension);

      Listing_File_Name := +Base_Name;
      Append (Listing_File_Name, ".lis");
-- END OF UMASS CODES.

      Template_File_Name := +"yyparse.template";

      Actions_File_Name := +Base_Name;
      Append (Actions_File_Name, ".accs");

      Shift_Reduce_File_Name := +Base_Name;
      Append (Shift_Reduce_File_Name, "-shift_reduce" & Extension & "ds");

      Goto_File_Name := +Base_Name;
      Append (Goto_File_Name, "-goto_table" & Extension & "ds");

      C_Lex_File_Name := +Base_Name;
      Append (C_Lex_File_Name, "-c_lex" & Extension);

      Include_File_Name := +Base_Name;
      Append (Include_File_Name, ".h");
   end Set_File_Names;

end Ayacc_File_Names;
