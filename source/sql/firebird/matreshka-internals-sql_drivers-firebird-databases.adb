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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  $Revision: $ $Date: $
------------------------------------------------------------------------------
with Ada.Unchecked_Deallocation;
with Ada.Streams;
with Matreshka.Internals.SQL_Drivers.Firebird.Queries;

package body Matreshka.Internals.SQL_Drivers.Firebird.Databases is

   ASCII_Codec : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("ISO-8859-1"));

   procedure Free is
     new Ada.Unchecked_Deallocation
          (League.Text_Codecs.Text_Codec, Text_Codec_Access);

   ------------------
   -- Check_Result --
   ------------------

   procedure Check_Result
    (Self   : not null access Firebird_Database;
     Result : Isc_Result_Code) is
   begin
      Self.Error.Clear;

      if Result > 0 then
         Self.Error := Get_Error (Self.Status'Access);
      end if;
   end Check_Result;

   -----------
   -- Close --
   -----------

   overriding procedure Close (Self : not null access Firebird_Database) is
   begin
      Self.Rollback_Transaction;

      if Self.DB_Handle = Null_Isc_Database_Handle then
         return;
      end if;

      Self.Check_Result
       (Isc_Detach_Database (Self.Status'Access, Self.DB_Handle'Access));

      Self.DB_Handle := Null_Isc_Database_Handle;
   end Close;

   ------------
   -- Commit --
   ------------

   overriding procedure Commit (Self : not null access Firebird_Database) is
   begin
      if Self.TR_Handle = Null_Isc_Transaction_Handle then
         Self.Set_Error ("No active transaction");

         return;
      end if;

      Self.Check_Result
       (Isc_Commit_Retaining (Self.Status'Access, Self.TR_Handle'Access));

      Self.TR_Handle := Null_Isc_Transaction_Handle;
   end Commit;

   ---------------------
   -- Database_Handle --
   ---------------------

   function Database_Handle
    (Self : Firebird_Database) return Isc_Database_Handle_Access is
   begin
      return Self.DB_Handle'Unchecked_Access;
   end Database_Handle;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access Firebird_Database)
       return League.Strings.Universal_String is
   begin
      return Self.Error;
   end Error_Message;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : not null access Firebird_Database) is
   begin
      Self.Close;
      Free (Self.Codec);
   end Finalize;

   ------------------------------
   -- Generate_DB_Params_Block --
   ------------------------------

   procedure Generate_DB_Params_Block
    (Self : not null access Firebird_Database)
   is
      use Params_List;
      use League.Stream_Element_Vectors;
      use type Ada.Streams.Stream_Element;
      use Interfaces.C;

      Last    : constant Natural := Natural (Self.Params.Length);
      Current : Db_Param;

   begin
      Append (Self.DB_Params_Block, char'Pos (Isc_Dpb_Version1));

      for I in 1 .. Last loop
         Current := Self.Params.Element (I);

         Append (Self.DB_Params_Block, char'Pos (Current.Param));

         case Current.Param is
            when Isc_Dpb_User_Name     | Isc_Dpb_Password
               | Isc_Dpb_Password_Enc  | Isc_Dpb_Sys_User_Name
               | Isc_Dpb_License       | Isc_Dpb_Encrypt_Key
               | Isc_Dpb_Lc_Messages   | Isc_Dpb_Lc_Ctype
               | Isc_Dpb_Sql_Role_Name =>

               Append
                 (Self.DB_Params_Block,
                  Ada.Streams.Stream_Element (Current.Value.Length));

               Append
                 (Self.DB_Params_Block,
                  ASCII_Codec.Encode (Current.Value).To_Stream_Element_Array);

--              when Isc_Dpb_Sql_Dialect =>
--                 Append
--                   (Self.DB_Params_Block,
--                    UTF8_Codec.Encode
--                      (Current.Value.Slice
--                         (1, 1)).To_Stream_Element_Array (1) - 48);
--
--              when Isc_Dpb_Num_Buffers           | Isc_Dpb_Dbkey_Scope
--                 | Isc_Dpb_Force_Write           | Isc_Dpb_No_Reserve
--                 | Isc_Dpb_Damaged               | Isc_Dpb_Verify
--                 | Isc_Dpb_Dummy_Packet_Interval | Isc_Dpb_Connect_Timeout =>
--
--                 Append
--                   (Self.DB_Params_Block, 1 & Integer'Value (Current.Value)));
--
--              when Isc_Dpb_Sweep =>
--                 Append (Self.DB_Params_Block, 1);
--                 Append (Self.DB_Params_Block, char'Pos (Isc_Dpb_Records));
--
--              when Isc_Dpb_Activate_Shadow    | Isc_Dpb_Delete_Shadow
--                 | Isc_Dpb_Begin_Log          | Isc_Dpb_Quit_Log
--                 | Isc_Dpb_No_Garbage_Collect | Isc_Dpb_Garbage_Collect =>
--
--                 Append
--                   (Self.DB_Params_Block, 1 & char'Pos (Interfaces.C.nul));

            when others =>
               null;
         end case;
      end loop;
   end Generate_DB_Params_Block;

   ----------
   -- Open --
   ----------

   overriding function Open
    (Self    : not null access Firebird_Database;
     Options : League.Strings.Universal_String) return Boolean
   is
      use type Isc_Result_Code;
      use League.Strings;

      Result : Isc_Result_Code := 0;

      function Get_User     return League.Strings.Universal_String;
      function Get_Password return League.Strings.Universal_String;
      function Get_Database return Isc_String;
      procedure Create_Codec;

      Pwd_Separator : constant Natural := Options.Index ('/');
      DB_Separator  : constant Natural := Options.Index ('@');
      Charset       : constant League.Strings.Universal_String :=
        League.Strings.To_Universal_String ("UTF8");        

      ------------------
      -- Create_Codec --
      ------------------

      procedure Create_Codec is
         use type Interfaces.C.char;

         Request : Isc_String (1 .. 1);
         Buffer  : aliased Isc_String := (1 .. 512 => Interfaces.C.nul);
         Len     : Isc_Short;
         Set     : Isc_Character_Set;

      begin
         Request (1) := Frb_Info_Att_Charset;

         Result :=
           Isc_Database_Info
            (Self.Status'Access,
             Self.DB_Handle'Access,
             1,
             Request,
             512,
             Buffer'Access);

         if Result > 0
           or else Buffer (1) /= Frb_Info_Att_Charset
         then
            Self.Codec :=
              new League.Text_Codecs.Text_Codec'
                   (League.Text_Codecs.Codec
                     (League.Strings.To_Universal_String ("UTF-8")));
            Self.Utf := True;

            return;
         end if;

         Len := Isc_Short (Isc_Vax_Integer (Buffer (2 .. 512), 2));
         Set :=
           Character_Set
            (Isc_Short (Isc_Vax_Integer (Buffer (4 .. 512), Len)));

         case Set is
            when UNKNOWN | UNICODE_FSS | UFT8 =>
               Self.Codec :=
                 new League.Text_Codecs.Text_Codec'
                      (League.Text_Codecs.Codec
                        (League.Strings.To_Universal_String ("UTF-8")));
               Self.Utf := True;

            when others =>
               Self.Codec :=
                 new League.Text_Codecs.Text_Codec'
                      (League.Text_Codecs.Codec
                        (League.Strings.To_Universal_String
                          (Isc_Character_Set'Wide_Wide_Image (Set))));
         end case;

      exception
         when others =>
            Self.Codec :=
              new League.Text_Codecs.Text_Codec'
                   (League.Text_Codecs.Codec
                     (League.Strings.To_Universal_String ("UTF-8")));
            Self.Utf := True;
      end Create_Codec;

      ------------------
      -- Get_Database --
      ------------------

      function Get_Database return Isc_String is
         Empty : constant Isc_String (1 .. 0) := (others => Interfaces.C.nul);

      begin
         if DB_Separator /= 0 then
            declare
               V_Item : constant Ada.Streams.Stream_Element_Array :=
                 ASCII_Codec.Encode
                   (Options.Slice (DB_Separator + 1, Options.Length)).
                 To_Stream_Element_Array;

               S_Item : String (1 .. V_Item'Length);

               for S_Item'Address use V_Item'Address;
               pragma Import (Ada, S_Item);

            begin
               return Interfaces.C.To_C (S_Item);
            end;

         else
            return Empty;
         end if;
      end Get_Database;

      ------------------
      -- Get_Password --
      ------------------

      function Get_Password return League.Strings.Universal_String is
      begin
         if Pwd_Separator /= 0 then
            if DB_Separator /= 0 then
               return Options.Slice (Pwd_Separator + 1, DB_Separator - 1);

            else
               return Options.Slice (Pwd_Separator + 1, Options.Length);
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
         if Pwd_Separator /= 0 then
            return Options.Slice (1, Pwd_Separator - 1);

         elsif DB_Separator /= 0 then
            return Options.Slice (1, DB_Separator - 1);

         else
            return Options;
         end if;
      end Get_User;

      DB_Name : constant Isc_String := Get_Database;

   begin
      if Self.DB_Handle /= Null_Isc_Database_Handle then
         return True;
      end if;

      if DB_Name'Length = 0 then
         Self.Set_Error ("Empty database name");

         return False;
      end if;

      Self.Params.Clear;
      Self.Params.Append ((Isc_Dpb_User_Name, Get_User));
      Self.Params.Append ((Isc_Dpb_Password, Get_Password));
      Self.Params.Append ((Isc_Dpb_Lc_Ctype, Charset));

      Self.Generate_DB_Params_Block;

      declare
         V_Item : constant Ada.Streams.Stream_Element_Array :=
           Self.DB_Params_Block.To_Stream_Element_Array;

         S_Item : String (1 .. V_Item'Length);
         for S_Item'Address use V_Item'Address;
         pragma Import (Ada, S_Item);

      begin
         Result :=
           Isc_Attach_Database
            (Status          => Self.Status'Access,
             Db_Name_Length  => Interfaces.C.short (DB_Name'Length),
             Db_Name         => DB_Name,
             Db_Handle       => Self.DB_Handle'Access,
             Parms_Length    =>
               Interfaces.C.short (Self.DB_Params_Block.Length),
             Parms           => Interfaces.C.To_C (S_Item));
      end;

      if Result > 0 then
         Self.DB_Handle := Null_Isc_Database_Handle;
         Self.Check_Result (Result);

         return False;
      end if;

      Create_Codec;

      return Self.Start_Transaction;
   end Open;

   -----------------------
   -- Start_Transaction --
   -----------------------

   function Start_Transaction
    (Self : not null access Firebird_Database) return Boolean
   is
      Result : Isc_Result_code := 0;
      TPB    : aliased Isc_String :=  (1 .. 5 => (Interfaces.C.nul));

      procedure Generate_Tpb;

      ------------------
      -- Generate_Tpb --
      ------------------

      procedure Generate_Tpb is
      begin
         TPB (1) := Isc_Tpb_Version3;

         TPB (2) := Isc_Tpb_Write;
         --  TPB (2) := Isc_Tpb_Read;

         TPB (3) := Isc_Tpb_Wait;
         --  TPB (3) := Isc_Tpb_Nowait;

         TPB (4) := Isc_Tpb_Rec_Version;
         --  TPB (4) := Isc_Tpb_No_Rec_Version;

         TPB (5) := Isc_Tpb_Read_Committed;
      end Generate_Tpb;

   begin
      if Self.TR_Handle /= Null_Isc_Transaction_Handle then
         return True;
      end if;

      Generate_Tpb;

      declare
         Tebs : aliased Isc_Tebs
           := (1 .. 1 =>
                (Self.DB_Handle'Access, TPB'Length, TPB'Unchecked_Access));
      begin
         Result :=
           Isc_Start_Multiple
            (Self.Status'Access, Self.TR_Handle'Access, 1, Tebs'Access);
      end;

      if Result > 0 then
         Self.TR_Handle := Null_Isc_Transaction_Handle;
         Self.Check_Result (Result);

         return False;
      end if;

      return True;
   end Start_Transaction;

   ---------------
   -- Set_Error --
   ---------------

   procedure Set_Error
    (Self : not null access Firebird_Database;
     Text : Wide_Wide_String) is
   begin
      Self.Error := League.Strings.To_Universal_String (Text);
   end Set_Error;

   ------------------------
   -- Transaction_Handle --
   ------------------------

   function Transaction_Handle
    (Self : Firebird_Database) return Isc_Transaction_Handle_Access is
   begin
      return Self.TR_Handle'Unchecked_Access;
   end Transaction_Handle;

   -----------
   -- Query --
   -----------

   overriding function Query
    (Self : not null access Firebird_Database) return not null Query_Access is
   begin
      return Aux : constant not null Query_Access
               := new Queries.Firebird_Query
      do
         Queries.Initialize
          (Queries.Firebird_Query'Class (Aux.all)'Access,
           Self,
           Self.Codec,
           Self.Utf);
      end return;
   end Query;

   --------------------------
   -- Rollback_Transaction --
   --------------------------

   procedure Rollback_Transaction (Self : not null access Firebird_Database) is
      Result : Isc_Result_Code;

   begin
      if Self.TR_Handle = Null_Isc_Transaction_Handle then
         return;
      end if;

      Result :=
        Isc_Rollback_Transaction
         (Self.Status'Access, Self.TR_Handle'Access);

      if Result > 0 then
         --  Force close transaction
         Self.Check_Result (Result);

         Self.Check_Result
          (Isc_Rollback_Transaction
            (Self.Status'Access, Self.TR_Handle'Access));
      end if;

      Self.TR_Handle := Null_Isc_Transaction_Handle;
   end Rollback_Transaction;

end Matreshka.Internals.SQL_Drivers.Firebird.Databases;
