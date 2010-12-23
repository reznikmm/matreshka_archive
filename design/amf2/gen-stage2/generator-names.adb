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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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

with CMOF.Associations;
with CMOF.Collections;
with CMOF.Named_Elements;
with CMOF.Properties;
with CMOF.Typed_Elements;

package body Generator.Names is

   use CMOF.Associations;
   use CMOF.Collections;
   use CMOF.Named_Elements;
   use CMOF.Properties;
   use CMOF.Typed_Elements;

   -------------------------------
   -- Association_Constant_Name --
   -------------------------------

   function Association_Constant_Name
    (Association : CMOF_Association) return Wide_Wide_String
   is
      Member_End  : constant Set_Of_CMOF_Property
        := Get_Member_End (Association);
      First_End   : constant CMOF_Property := Element (Member_End, 1);
      Second_End  : constant CMOF_Property := Element (Member_End, 2);
      First_Name  : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String
            (To_Ada_Identifier (Get_Name (First_End)));
      Second_Name : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String
            (To_Ada_Identifier (Get_Name (Second_End)));
      Ada_Name    : League.Strings.Universal_String;

   begin
      if First_Name.Is_Empty then
         Ada_Name :=
           League.Strings.To_Universal_String
            (To_Ada_Identifier (Get_Name (Get_Type (First_End))));

      else
         Ada_Name := First_Name;
      end if;

      Ada_Name.Append ('_');

      if Second_Name.Is_Empty then
         Ada_Name.Append
          (League.Strings.To_Universal_String
            (To_Ada_Identifier (Get_Name (Get_Type (Second_End)))));

      else
         Ada_Name.Append (Second_Name);
      end if;

      return "MA_CMOF_" & Ada_Name.To_Wide_Wide_String;
   end Association_Constant_Name;

   ----------------------------
   -- Property_Constant_Name --
   ----------------------------

   function Property_Constant_Name
    (Property : CMOF_Property) return Wide_Wide_String
   is
      Ada_Name : League.Strings.Universal_String;

   begin
      if Get_Owning_Association (Property) /= Null_CMOF_Element then
         declare
            Member_End  : constant Set_Of_CMOF_Property
              := Get_Member_End (Get_Owning_Association (Property));
            First_End   : constant CMOF_Property := Element (Member_End, 1);
            Second_End  : constant CMOF_Property := Element (Member_End, 2);
            First_Name  : constant League.Strings.Universal_String
              := League.Strings.To_Universal_String
                  (To_Ada_Identifier (Get_Name (First_End)));
            Second_Name : constant League.Strings.Universal_String
              := League.Strings.To_Universal_String
                  (To_Ada_Identifier (Get_Name (Second_End)));

         begin
            if First_Name.Is_Empty then
               Ada_Name :=
                 League.Strings.To_Universal_String
                  (To_Ada_Identifier (Get_Name (Get_Type (First_End))));

            else
               Ada_Name := First_Name;
            end if;

            Ada_Name.Append ('_');

            if Second_Name.Is_Empty then
               Ada_Name.Append
                (League.Strings.To_Universal_String
                  (To_Ada_Identifier (Get_Name (Get_Type (Second_End)))));

            else
               Ada_Name.Append (Second_Name);
            end if;
         end;

      else
         Ada_Name :=
           League.Strings.To_Universal_String
            (To_Ada_Identifier (Get_Name (Get_Class (Property)))
               & '_'
               & To_Ada_Identifier (Get_Name (Property)));
      end if;

      return "MP_CMOF_" & Ada_Name.To_Wide_Wide_String;
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
