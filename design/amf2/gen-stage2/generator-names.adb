------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Characters.Conversions;
with Ada.Characters.Handling;

with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;

package body Generator.Names is

   -------------------------------
   -- Association_Constant_Name --
   -------------------------------

   function Association_Constant_Name
    (Association : not null AMF.CMOF.Associations.CMOF_Association_Access)
       return Wide_Wide_String
   is
      Member_End  : constant
        AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
          := Association.Get_Member_End;
      First_End   : constant AMF.CMOF.Properties.CMOF_Property_Access
        := Member_End.Element (1);
      Second_End  : constant AMF.CMOF.Properties.CMOF_Property_Access
        := Member_End.Element (2);
      First_Name  : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String
            (To_Ada_Identifier (First_End.Get_Name.Value));
      Second_Name : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String
            (To_Ada_Identifier (Second_End.Get_Name.Value));
      First_Type  : constant AMF.CMOF.Types.CMOF_Type_Access
        := First_End.Get_Type;
      Second_Type : constant AMF.CMOF.Types.CMOF_Type_Access
        := Second_End.Get_Type;
      Ada_Name    : League.Strings.Universal_String;

   begin
      if First_Name.Is_Empty then
         Ada_Name :=
           League.Strings.To_Universal_String
            (To_Ada_Identifier (First_Type.Get_Name.Value));

      else
         Ada_Name := First_Name;
      end if;

      Ada_Name.Append ('_');

      if Second_Name.Is_Empty then
         Ada_Name.Append
          (League.Strings.To_Universal_String
            (To_Ada_Identifier (Second_Type.Get_Name.Value)));

      else
         Ada_Name.Append (Second_Name);
      end if;

      return
        "MA_"
          & Metamodel_Name.To_Wide_Wide_String
          & "_"
          & Ada_Name.To_Wide_Wide_String;
   end Association_Constant_Name;

   -------------------------
   -- Class_Constant_Name --
   -------------------------

   function Class_Constant_Name
    (Class : AMF.CMOF.Classes.CMOF_Class_Access)
       return League.Strings.Universal_String is
   begin
      return
        League.Strings.To_Universal_String
         ("MC_"
            & Metamodel_Name.To_Wide_Wide_String
            & "_"
            & To_Ada_Identifier (Class.Get_Name.Value));
   end Class_Constant_Name;

   ------------
   -- Plural --
   ------------

   function Plural (Name : Wide_Wide_String) return Wide_Wide_String is
   begin
      if Name (Name'Last) = 'y' then
         return Name (Name'First .. Name'Last - 1) & "ies";

      elsif Name (Name'Last) = 's' then
         return Name & "es";

      else
         return Name & "s";
      end if;
   end Plural;

   ----------------------------
   -- Property_Constant_Name --
   ----------------------------

   function Property_Constant_Name
    (Property : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Wide_Wide_String
   is
      use type AMF.CMOF.Associations.CMOF_Association_Access;

      Association : constant AMF.CMOF.Associations.CMOF_Association_Access
        := Property.Get_Owning_Association;
      Ada_Name    : League.Strings.Universal_String;

   begin
      if Association /= null then
         declare
            Member_End  : constant
              AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
                := Association.Get_Member_End;
            First_End   : constant
              not null AMF.CMOF.Properties.CMOF_Property_Access
                := Member_End.Element (1);
            Second_End  : constant
              not null AMF.CMOF.Properties.CMOF_Property_Access
                := Member_End.Element (2);
            First_Name  : constant League.Strings.Universal_String
              := League.Strings.To_Universal_String
                  (To_Ada_Identifier (First_End.Get_Name.Value));
            Second_Name : constant League.Strings.Universal_String
              := League.Strings.To_Universal_String
                  (To_Ada_Identifier (Second_End.Get_Name.Value));
            First_Type  : constant not null AMF.CMOF.Types.CMOF_Type_Access
              := First_End.Get_Type;
            Second_Type : constant not null AMF.CMOF.Types.CMOF_Type_Access
              := Second_End.Get_Type;

         begin
            if First_Name.Is_Empty then
               Ada_Name :=
                 League.Strings.To_Universal_String
                  (To_Ada_Identifier (First_Type.Get_Name.Value));

            else
               Ada_Name := First_Name;
            end if;

            Ada_Name.Append ('_');

            if Second_Name.Is_Empty then
               Ada_Name.Append
                (League.Strings.To_Universal_String
                  (To_Ada_Identifier (Second_Type.Get_Name.Value)));

            else
               Ada_Name.Append (Second_Name);
            end if;
         end;

      else
         declare
            Class : constant not null AMF.CMOF.Classes.CMOF_Class_Access
              := Property.Get_Class;

         begin
            Ada_Name :=
              League.Strings.To_Universal_String
               (To_Ada_Identifier (Class.Get_Name.Value)
                  & '_'
                  & To_Ada_Identifier (Property.Get_Name.Value));
         end;
      end if;

      return
        "MP_"
          & Metamodel_Name.To_Wide_Wide_String
          & "_"
          & Ada_Name.To_Wide_Wide_String;
   end Property_Constant_Name;

   -----------------------
   -- To_Ada_Identifier --
   -----------------------

   function To_Ada_Identifier
    (Name : Wide_Wide_String) return Wide_Wide_String
   is
      use Ada.Characters.Conversions;
      use Ada.Characters.Handling;

      Aux  : Wide_Wide_String (1 .. Name'Length * 2);
      Last : Natural := 0;

   begin
      for J in Name'Range loop
         if J = Name'First then
            Last := Last + 1;
            Aux (Last) :=
              To_Wide_Wide_Character (To_Upper (To_Character (Name (J))));

         else
            if Is_Upper (To_Character (Name (J))) then
               Last := Last + 1;
               Aux (Last) := '_';
            end if;

            Last := Last + 1;
            Aux (Last) := Name (J);
         end if;
      end loop;

      return Aux (Aux'First .. Last);
   end To_Ada_Identifier;

   -----------------------
   -- To_Ada_Identifier --
   -----------------------

   function To_Ada_Identifier
    (Name : League.Strings.Universal_String) return Wide_Wide_String is
   begin
      return To_Ada_Identifier (Name.To_Wide_Wide_String);
   end To_Ada_Identifier;

end Generator.Names;
