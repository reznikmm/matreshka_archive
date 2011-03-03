------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Maxim Reznik <reznikmm@gmail.com>                      --
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

with League.Strings.Internals;
with Matreshka.Internals.SQL_Drivers.SQLite3.String_Utilities;
with Matreshka.Internals.SQL_Drivers.OCI.Queries;

with Ada.Wide_Wide_Text_IO;

package body Matreshka.Internals.SQL_Drivers.OCI.Databases is

   procedure Create_Environment (Error : out League.Strings.Universal_String);

   protected Env_Lock is
      procedure Set_Env
        (Value   : Environment;
         Success : out Boolean);
   end Env_Lock;

   --------------
   -- Env_Lock --
   --------------

   protected body Env_Lock is
      procedure Set_Env
        (Value   : Environment;
         Success : out Boolean) is
      begin
         Success := Env = null;

         if Success then
            Env := Value;
         end if;
      end Set_Env;
   end Env_Lock;

   -----------------
   -- Check_Error --
   -----------------

   function Check_Error
     (Self : not null access OCI_Database;
      Code : Error_Code) return Boolean is
   begin
      case Code is
         when Call_Success =>
            null;
         when Call_Need_Data =>
            null;
         when Call_No_Data =>
            null;
         when Call_Success_With_Info | Call_Error =>
            declare
               Next   : Error_Code;
               Buffer : Matreshka.Internals.Utf16.Unaligned_Utf16_String
                 (0 .. 512) := (others => <>);
               Result : aliased Ub4;
            begin
               Next := Error_Get (Self.Error, 1,
                                  Ora_Code    => Result'Access,
                                  Buffer      => Buffer,
                                  Buffer_Size => Buffer'Length * 2,
                                  H_Type      => HT_Error);

               Self.Error_Text :=
                 Matreshka.Internals.SQL_Drivers.SQLite3.String_Utilities.
                   To_Universal_String (Buffer (0)'Unchecked_Access);
Ada.Wide_Wide_Text_IO.Put_Line (Self.Error_Text.To_Wide_Wide_String);

               return True;
            end;
         when Call_Invalid_Handle =>
            Self.Error_Text :=
              League.Strings.To_Universal_String ("Invalid Handle");
            return True;
         when Call_Still_Executing =>
            null;
         when Call_Continue =>
            null;
         when others =>
            Self.Error_Text := League.Strings.To_Universal_String
              ("Unexpected code" & Error_Code'Wide_Wide_Image (Code));
            return True;
      end case;

      return False;
   end Check_Error;

   ------------------------
   -- Create_Environment --
   ------------------------

   procedure Create_Environment
     (Error : out League.Strings.Universal_String)
   is
      Created : aliased Environment;
      Code    : Error_Code := Env_NLS_Create (Created'Access, Threaded);
      Success : Boolean;
   begin
      if Code = Call_Success then
         Env_Lock.Set_Env (Created, Success);

         if not Success then
            Code := Handle_Free (Handle (Created), HT_Environment);
         end if;
      else
         Error := League.Strings.To_Universal_String ("OCIEnvNlsCreate fails");
      end if;
   end Create_Environment;

   -----------
   -- Close --
   -----------

   overriding procedure Close (Self : not null access OCI_Database) is
     Code : Error_Code;
   begin
      Self.Invalidate_Queries;

      if Self.Service /= null then

         Code := Logoff (Self.Service, Self.Error);

         if Check_Error (Self, Code) then
            null;
         end if;

         Self.Service := null;
      end if;
   end Close;

   ------------
   -- Commit --
   ------------

   overriding procedure Commit (Self : not null access OCI_Database) is
      Code : constant Error_Code := OCI.Commit (Self.Service, Self.Error);
   begin
      if Check_Error (Self, Code) then
         null;
      end if;
   end Commit;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access OCI_Database)
    return League.Strings.Universal_String is
   begin
      return Self.Error_Text;
   end Error_Message;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : not null access OCI_Database) is
   begin
      if Self.Service /= null then
         Self.Close;
      end if;
   end Finalize;

   -----------
   -- Query --
   -----------

   overriding function Query
     (Self : not null access OCI_Database) return not null Query_Access is
   begin
      return Aux : constant not null Query_Access
        := new Queries.OCI_Query (Self)
      do
         Aux.Initialize (Database_Access (Self));
      end return;
   end Query;

   ----------
   -- Open --
   ----------

   overriding function Open
    (Self    : not null access OCI_Database;
     Options : League.Strings.Universal_String) return Boolean
   is

     function Get_User return League.Strings.Universal_String;
     function Get_Password return League.Strings.Universal_String;
     function Get_Database return League.Strings.Universal_String;

     Pwd : constant Natural := Options.Index ('/');
     DB  : constant Natural := Options.Index ('@');

     function Get_User return League.Strings.Universal_String is
     begin
        if Pwd /= 0 then
           return Options.Slice (1, Pwd - 1);
        elsif DB /= 0 then
           return Options.Slice (1, DB - 1);
        else
           return Options;
        end if;
     end Get_User;

     function Get_Password return League.Strings.Universal_String is
     begin
        if Pwd /= 0 then
           if DB /= 0 then
              return Options.Slice (Pwd + 1, DB - 1);
           else
              return Options.Slice (Pwd + 1, Options.Length);
           end if;
        else
           return League.Strings.Empty_Universal_String;
        end if;
     end Get_Password;

     function Get_Database return League.Strings.Universal_String is
     begin
        if DB /= 0 then
           return Options.Slice (DB + 1, Options.Length);
        else
           return League.Strings.Empty_Universal_String;
        end if;
     end Get_Database;

     Code : Error_Code;
   begin
      if Env = null then
         Create_Environment (Self.Error_Text);

         if Env = null then
            return False;
         end if;
      end if;

      Code := Handle_Alloc (Env, Self.Error'Access, HT_Error);

      if Code /= Call_Success then
         Self.Error_Text := League.Strings.To_Universal_String
           ("OCIHandleAlloc fails");

         return False;
      end if;

      declare
         User : constant League.Strings.Universal_String := Get_User;
         Pwd  : constant League.Strings.Universal_String := Get_Password;
         DB   : constant League.Strings.Universal_String := Get_Database;
      begin
         Code := Logon
           (Env, Self.Error, Self.Service'Access,
            League.Strings.Internals.Internal (User).Value,
            Ub4 (League.Strings.Internals.Internal (User).Unused) * 2,
            League.Strings.Internals.Internal (Pwd).Value,
            Ub4 (League.Strings.Internals.Internal (Pwd).Unused) * 2,
            League.Strings.Internals.Internal (DB).Value,
            Ub4 (League.Strings.Internals.Internal (DB).Unused) * 2);

         if Check_Error (Self, Code) then
            return False;
         end if;
      end;

      return True;
   end Open;

end Matreshka.Internals.SQL_Drivers.OCI.Databases;
