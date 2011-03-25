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
with League.Strings.Internals;
with Matreshka.Internals.SQL_Drivers.OCI.Queries;
with Matreshka.Internals.Strings.C;

package body Matreshka.Internals.SQL_Drivers.OCI.Databases is

   use type Interfaces.Unsigned_32;
   use type Matreshka.Internals.Strings.Shared_String_Access;

   procedure Create_Environment (Self : not null access OCI_Database);

   procedure Set_Error
    (Self : not null access OCI_Database;
     Text : Wide_Wide_String);

   protected Env_Lock is

      procedure Set_Env (Value : Environment; Success : out Boolean);

   end Env_Lock;

   -----------------
   -- Check_Error --
   -----------------

   function Check_Error
    (Self : not null access OCI_Database;
     Code : Error_Code) return Boolean is
   begin
      case Code is
         when OCI_SUCCESS =>
            null;

         when OCI_NEED_DATA =>
            null;

         when OCI_NO_DATA =>
            null;

         when OCI_SUCCESS_WITH_INFO | OCI_ERROR =>
            declare
               use Matreshka.Internals.Strings;
               use type Utf16.Utf16_String_Index;

               Ok    : Boolean;
               Size  : Utf16.Utf16_String_Index := 512;
               Next  : Error_Code;
               Error : aliased Ub4;

            begin
               for J in 1 .. 10 loop
                  if Self.Error_Text = null then
                     Self.Error_Text := Allocate (Size);

                  elsif not Can_Be_Reused (Self.Error_Text, Size) then
                     Dereference (Self.Error_Text);
                     Self.Error_Text := Allocate (Size);
                  end if;

                  Next :=
                    OCIErrorGet
                     (Self.Error, 1,
                      Ora_Code    => Error'Access,
                      Buffer      => Self.Error_Text.Value,
                      Buffer_Size => Self.Error_Text.Value'Length * 2,
                      H_Type      => OCI_HTYPE_ERROR);

                  if Next = OCI_SUCCESS then
                     Matreshka.Internals.Strings.C.Validate_And_Fixup
                      (Self.Error_Text, Ok);

                     return True;

                  else
                     Size := 2 * Size;
                  end if;
               end loop;

               Dereference (Self.Error_Text);
               Self.Error_Text := Shared_Empty'Access;

               return True;
            end;

         when OCI_INVALID_HANDLE =>
            Set_Error (Self, "Invalid Handle");

            return True;

         when OCI_STILL_EXECUTING =>
            null;

         when OCI_CONTINUE =>
            null;

         when others =>
            Set_Error
             (Self, "Unexpected code" & Error_Code'Wide_Wide_Image (Code));

            return True;
      end case;

      return False;
   end Check_Error;

   -----------
   -- Close --
   -----------

   overriding procedure Close (Self : not null access OCI_Database) is
      Code : Error_Code;

   begin
      if Self.Service /= null then
         Self.Invalidate_Queries;

         Code := OCILogoff (Self.Service, Self.Error);

         if Check_Error (Self, Code) then
            null;  --  How to report errors?
         end if;

         Self.Service := null;
      end if;
   end Close;

   ------------
   -- Commit --
   ------------

   overriding procedure Commit (Self : not null access OCI_Database) is
      Code : Error_Code;

   begin
      if Self.Service /= null then
         Code := OCITransCommit (Self.Service, Self.Error);

         if Check_Error (Self, Code) then
            null;  --  How to report errors?
         end if;
      end if;
   end Commit;

   ------------------------
   -- Create_Environment --
   ------------------------

   procedure Create_Environment (Self : not null access OCI_Database) is
      Created : aliased Environment;
      Code    : Error_Code := OCIEnvNlsCreate (Created'Access, OCI_THREADED);
      Success : Boolean;

   begin
      if Code = OCI_SUCCESS then
         Env_Lock.Set_Env (Created, Success);

         if not Success then
            Code := OCIHandleFree (Handle (Created), OCI_HTYPE_ENV);
         end if;

      else
         Set_Error (Self, "OCIEnvNlsCreate fails");
      end if;
   end Create_Environment;

   --------------
   -- Env_Lock --
   --------------

   protected body Env_Lock is

      -------------
      -- Set_Env --
      -------------

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

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access OCI_Database)
       return League.Strings.Universal_String is
   begin
      if Self.Error_Text = null then
         return League.Strings.Empty_Universal_String;

      else
         return League.Strings.Internals.Create (Self.Error_Text);
      end if;
   end Error_Message;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : not null access OCI_Database) is
   begin
      if Self.Service /= null then
         Self.Close;
      end if;

      if Self.Error_Text /= null then
         Matreshka.Internals.Strings.Dereference (Self.Error_Text);
         Self.Error_Text := null;
      end if;
   end Finalize;

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

      ------------------
      -- Get_Database --
      ------------------

      function Get_Database return League.Strings.Universal_String is
      begin
         if DB /= 0 then
            return Options.Slice (DB + 1, Options.Length);
         else
            return League.Strings.Empty_Universal_String;
         end if;
      end Get_Database;

      ------------------
      -- Get_Password --
      ------------------

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

      --------------
      -- Get_User --
      --------------

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

      Code : Error_Code;

   begin
      if Self.Service /= null then
         Self.Close;
      end if;

      if Env = null then
         Create_Environment (Self);

         if Env = null then
            return False;
         end if;
      end if;

      if Self.Error = null then
         Code := OCIHandleAlloc (Env, Self.Error'Access, OCI_HTYPE_ERROR);

         if Code /= OCI_SUCCESS then
            Set_Error (Self, "OCIHandleAlloc fails");

            return False;
         end if;
      end if;

      declare
         User : constant League.Strings.Universal_String := Get_User;
         Pwd  : constant League.Strings.Universal_String := Get_Password;
         DB   : constant League.Strings.Universal_String := Get_Database;

      begin
         Code :=
           OCILogon
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

   ---------------
   -- Set_Error --
   ---------------

   procedure Set_Error
    (Self : not null access OCI_Database;
     Text : Wide_Wide_String)
   is
      String : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String (Text);

   begin
      if Self.Error_Text /= null then
         Matreshka.Internals.Strings.Dereference (Self.Error_Text);
      end if;

      Self.Error_Text := League.Strings.Internals.Internal (String);
      Matreshka.Internals.Strings.Reference (Self.Error_Text);
   end Set_Error;

end Matreshka.Internals.SQL_Drivers.OCI.Databases;
