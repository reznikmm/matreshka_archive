------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with GNAT.Expect;

package body Configure.Pkg_Config is

   use GNAT.Expect;

   -----------------
   -- Has_Package --
   -----------------

   function Has_Package (Package_Name : String) return Boolean is
   begin
      declare
         Status : aliased Integer;
         Output : constant String :=
           Get_Command_Output
            ("pkg-config",
             (1 => new String'("--exists"),
              2 => new String'(Package_Name)),
             "",
             Status'Access,
             True);

      begin
         return Status = 0;
      end;

   exception
      when GNAT.Expect.Invalid_Process =>
         return False;
   end Has_Package;

   --------------------
   -- Has_Pkg_Config --
   --------------------

   function Has_Pkg_Config return Boolean is
   begin
      declare
         Status : aliased Integer;
         Output : constant String :=
           Get_Command_Output
            ("pkg-config",
             (1 => new String'("--version")),
             "",
             Status'Access,
             True);

      begin
         return Status = 0;
      end;

   exception
      when GNAT.Expect.Invalid_Process =>
         return False;
   end Has_Pkg_Config;

   ------------------
   -- Package_Libs --
   ------------------

   function Package_Libs
    (Package_Name : String) return String_Vectors.Vector
   is
      Status : aliased Integer;
      Output : constant String :=
        Get_Trimmed_Command_Output
         ("pkg-config",
          (1 => new String'("--libs"),
           2 => new String'(Package_Name)),
          "",
          Status'Access,
          True);
      Aux    : String_Vectors.Vector;
      First  : Positive;
      Last   : Natural;


   begin
      if Status = 0 then
         First := Output'First;
         Last  := Output'First;

         while Last <= Output'Last loop
            if Output (Last) = ' ' then
               --  Parameter separator found, add detected parameter to result.

               Aux.Append (Output (First .. Last - 1));

               First := Last;

               --  Skip spaces.

               while First <= Output'Last loop
                  exit when Output (First) /= ' ';

                  First := First + 1;
               end loop;

               Last := First;
            end if;

            Last := Last + 1;
         end loop;

         if First < Output'Last and First < Last then
            Aux.Append (Output (First .. Last - 1));
         end if;
      end if;

      return Aux;
   end Package_Libs;

   ---------------------
   -- Package_Version --
   ---------------------

   function Package_Version (Package_Name : String) return String is
   begin
      declare
         Status : aliased Integer;
         Output : constant String :=
           Get_Trimmed_Command_Output
            ("pkg-config",
             (1 => new String'("--modversion"),
              2 => new String'(Package_Name)),
             "",
             Status'Access,
             True);

      begin
         if Status = 0 then
            return Output;

         else
            return "";
         end if;
      end;

   exception
      when GNAT.Expect.Invalid_Process =>
         return "";
   end Package_Version;

   ------------------------------
   -- Package_Version_At_Least --
   ------------------------------

   function Package_Version_At_Least
    (Package_Name : String;
     Expected     : String;
     Actual       : access Unbounded_String) return Boolean is
   begin
      declare
         Status : aliased Integer;
         Output : constant String :=
           Get_Trimmed_Command_Output
            ("pkg-config",
             (1 => new String'("--modversion"),
              2 => new String'("--atleast-version=" & Expected),
              3 => new String'(Package_Name)),
             "",
             Status'Access,
             True);

      begin
         Actual.all := +Output;

         return Status = 0;
      end;

   exception
      when GNAT.Expect.Invalid_Process =>
         Actual.all := Null_Unbounded_String;

         return False;
   end Package_Version_At_Least;

end Configure.Pkg_Config;
