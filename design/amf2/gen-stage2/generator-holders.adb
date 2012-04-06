------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Generator.Names;
with Generator.Type_Mapping;
with Generator.Units;

package body Generator.Holders is

   procedure Generate_Holders_Package_Specification
    (Metamodel_Info : Metamodel_Information;
     Enumerations   : CMOF_Enumeration_Ordered_Sets.Set);

   procedure Generate_Holders_Package_Implementation
    (Metamodel_Info : Metamodel_Information;
     Enumerations   : CMOF_Enumeration_Ordered_Sets.Set);

   procedure Generate_Holder_Instantiation
    (Metamodel_Info  : Metamodel_Information;
     The_Enumeration : not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access);

   procedure Generate_Holders_Package (Metamodel_Info : Metamodel_Information);

   -----------------------------------
   -- Generate_Holder_Instantiation --
   -----------------------------------

   procedure Generate_Holder_Instantiation
    (Metamodel_Info  : Metamodel_Information;
     The_Enumeration : not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access)
   is
      Package_Name    : constant League.Strings.Universal_String
        := "AMF." & Metamodel_Info.Ada_Name & ".Holders";
      Holders_Package : constant League.Strings.Universal_String
        := Package_Name
             & '.'
             & Generator.Names.Plural
                (Generator.Names.To_Ada_Identifier
                  (The_Enumeration.Get_Name.Value));
      Unit            : Generator.Units.Unit;

   begin
      Unit.Add_Unit_Header (2011, 2012);

      Unit.Add_Line;
      Unit.Context.Add (+"League.Holders.Generic_Enumerations");
      Unit.Add_Line ("package " & Holders_Package & " is");
      Unit.Add_Line (+"  new League.Holders.Generic_Enumerations");
      Unit.Add_Line
       ("       ("
          & Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
             (The_Enumeration, Value)
          & ");");
      Unit.Add_Line ("pragma Preelaborate (" & Holders_Package & ");");

      Unit.Context.Instantiate (Holders_Package);
      Unit.Put;
   end Generate_Holder_Instantiation;

   ------------------------------
   -- Generate_Holders_Package --
   ------------------------------

   procedure Generate_Holders_Package
    (Metamodel_Info : Metamodel_Information)
   is
      Enumerations : CMOF_Enumeration_Ordered_Sets.Set;

   begin
      --  Create ordered set of enumerations.

      declare
         The_Data_Type : AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
         Position      : CMOF_Element_Sets.Cursor
           := Metamodel_Info.Data_Types.First;

      begin
         while CMOF_Element_Sets.Has_Element (Position) loop
            The_Data_Type :=
              AMF.CMOF.Data_Types.CMOF_Data_Type_Access
               (CMOF_Element_Sets.Element (Position));

            if The_Data_Type.all
                 in AMF.CMOF.Enumerations.CMOF_Enumeration'Class
            then
               Enumerations.Insert
                (AMF.CMOF.Enumerations.CMOF_Enumeration_Access
                  (The_Data_Type));
            end if;

            CMOF_Element_Sets.Next (Position);
         end loop;
      end;

      if Enumerations.Is_Empty then
         return;
      end if;

      Generate_Holders_Package_Specification (Metamodel_Info, Enumerations);
      Generate_Holders_Package_Implementation (Metamodel_Info, Enumerations);

      declare
         Position : CMOF_Enumeration_Ordered_Sets.Cursor := Enumerations.First;

      begin
         while CMOF_Enumeration_Ordered_Sets.Has_Element (Position) loop
            Generate_Holder_Instantiation
             (Metamodel_Info,
              CMOF_Enumeration_Ordered_Sets.Element (Position));
            CMOF_Enumeration_Ordered_Sets.Next (Position);
         end loop;
      end;
   end Generate_Holders_Package;

   ---------------------------------------------
   -- Generate_Holders_Package_Implementation --
   ---------------------------------------------

   procedure Generate_Holders_Package_Implementation
    (Metamodel_Info : Metamodel_Information;
     Enumerations   : CMOF_Enumeration_Ordered_Sets.Set)
   is
      Package_Name : constant League.Strings.Universal_String
        := "AMF." & Metamodel_Info.Ada_Name & ".Holders";
      Unit         : Generator.Units.Unit;

   begin
      --  Generate package specification.

      Unit.Add_Unit_Header (2011, 2012);

      Unit.Add_Line;
      Unit.Add_Line ("package body " & Package_Name & " is");

      --  Generate Element function for each enumeration.

      declare
         Position : CMOF_Enumeration_Ordered_Sets.Cursor
           := Enumerations.First;

      begin
         while CMOF_Enumeration_Ordered_Sets.Has_Element (Position) loop
            declare
               The_Enumeration : AMF.CMOF.Enumerations.CMOF_Enumeration_Access
                 := CMOF_Enumeration_Ordered_Sets.Element (Position);
               Holders_Package : constant League.Strings.Universal_String
                 := Package_Name
                      & '.'
                      & Generator.Names.Plural
                         (Generator.Names.To_Ada_Identifier
                           (The_Enumeration.Get_Name.Value));

            begin
               Unit.Add_Header (+"Element", 3);
               Unit.Context.Add (Holders_Package);
               Unit.Add_Line;
               Unit.Add_Line (+"   function Element");
               Unit.Add_Line (+"    (Holder : League.Holders.Holder)");
               Unit.Add_Line
                ("       return "
                   & Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                      (The_Enumeration, Holder)
                   & " is");
               Unit.Add_Line (+"   begin");
               Unit.Add_Line (+"      if not League.Holders.Has_Tag");
               Unit.Add_Line
                (+"              (Holder, " & Holders_Package & ".Value_Tag)");
               Unit.Add_Line (+"      then");
               Unit.Add_Line (+"         raise Constraint_Error;");
               Unit.Add_Line (+"      end if;");
               Unit.Add_Line;
               Unit.Add_Line
                (+"      if League.Holders.Is_Empty (Holder) then");
               Unit.Add_Line (+"         return (Is_Empty => True);");
               Unit.Add_Line;
               Unit.Add_Line (+"      else");
               Unit.Add_Line
                (+"         return (False, "
                    & Holders_Package
                    & ".Element (Holder));");
               Unit.Add_Line (+"      end if;");
               Unit.Add_Line (+"   end Element;");
            end;

            CMOF_Enumeration_Ordered_Sets.Next (Position);
         end loop;
      end;

      --  Generate To_Holder function for each enumeration.

      declare
         Position : CMOF_Enumeration_Ordered_Sets.Cursor
           := Enumerations.First;

      begin
         while CMOF_Enumeration_Ordered_Sets.Has_Element (Position) loop
            declare
               The_Enumeration : AMF.CMOF.Enumerations.CMOF_Enumeration_Access
                 := CMOF_Enumeration_Ordered_Sets.Element (Position);
               Holders_Package : constant League.Strings.Universal_String
                 := Package_Name
                      & '.'
                      & Generator.Names.Plural
                         (Generator.Names.To_Ada_Identifier
                           (The_Enumeration.Get_Name.Value));

            begin
               Unit.Add_Header (+"To_Holder", 3);
               Unit.Add_Line;
               Unit.Add_Line (+"   function To_Holder");
               Unit.Add_Line
                (+"    (Element : "
                   & Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                      (The_Enumeration, Holder)
                   & ")");
               Unit.Add_Line (+"       return League.Holders.Holder is");
               Unit.Add_Line (+"   begin");
               Unit.Add_Line
                (+"      return Result : League.Holders.Holder do");
               Unit.Add_Line (+"         League.Holders.Set_Tag");
               Unit.Add_Line
                (+"          (Result, " & Holders_Package & ".Value_Tag);");
               Unit.Add_Line;
               Unit.Add_Line (+"         if not Element.Is_Empty then");
               Unit.Add_Line
                (+"            " & Holders_Package & ".Replace_Element");
               Unit.Add_Line (+"             (Result, Element.Value);");
               Unit.Add_Line (+"         end if;");
               Unit.Add_Line (+"      end return;");
               Unit.Add_Line (+"   end To_Holder;");
            end;

            CMOF_Enumeration_Ordered_Sets.Next (Position);
         end loop;
      end;

      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ';');

      Unit.Context.Instantiate (Package_Name);
      Unit.Put;
   end Generate_Holders_Package_Implementation;

   --------------------------------------------
   -- Generate_Holders_Package_Specification --
   --------------------------------------------

   procedure Generate_Holders_Package_Specification
    (Metamodel_Info : Metamodel_Information;
     Enumerations   : CMOF_Enumeration_Ordered_Sets.Set)
   is
      Package_Name : constant League.Strings.Universal_String
        := "AMF." & Metamodel_Info.Ada_Name & ".Holders";
      Unit         : Generator.Units.Unit;

   begin
      --  Generate package specification.

      Unit.Add_Unit_Header (2011, 2012);

      Unit.Add_Line;
      Unit.Add_Line ("package " & Package_Name & " is");
      Unit.Add_Line;
      Unit.Add_Line (+"   pragma Preelaborate;");

      declare
         The_Enumeration : AMF.CMOF.Enumerations.CMOF_Enumeration_Access;
         Position        : CMOF_Enumeration_Ordered_Sets.Cursor
           := Enumerations.First;

      begin
         while CMOF_Enumeration_Ordered_Sets.Has_Element (Position) loop
            The_Enumeration := CMOF_Enumeration_Ordered_Sets.Element (Position);

            Unit.Add_Line;
            Unit.Add_Line
             ("   --  " & The_Enumeration.Get_Name.Value & " [0..1]");
            Unit.Context.Add (+"League.Holders");
            Unit.Context.Add
             (Generator.Type_Mapping.Public_Ada_Package_Name
               (The_Enumeration, Holder));
            Unit.Add_Line;
            Unit.Add_Line (+"   function Element");
            Unit.Add_Line (+"    (Holder : League.Holders.Holder)");
            Unit.Add_Line
             ("       return "
                & Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                   (The_Enumeration, Holder)
                & ';');
            Unit.Add_Line (+"   function To_Holder");
            Unit.Add_Line
             (+"    (Element : "
                & Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                   (The_Enumeration, Holder)
                & ")");
            Unit.Add_Line (+"       return League.Holders.Holder;");

            CMOF_Enumeration_Ordered_Sets.Next (Position);
         end loop;
      end;

      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ';');

      Unit.Context.Instantiate (Package_Name);
      Unit.Put;
   end Generate_Holders_Package_Specification;

   ----------------------
   -- Generate_Holders --
   ----------------------

   procedure Generate_Holders is
   begin
      for J in 1 .. Natural (Module_Info.Extents.Length) loop
         Generate_Holders_Package
          (Metamodel_Infos.Element (Module_Info.Extents.Element (J)).all);
      end loop;
   end Generate_Holders;

end Generator.Holders;
