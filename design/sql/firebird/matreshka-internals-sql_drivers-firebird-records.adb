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
--  $Revision: 1793 $ $Date: 2011-06-11 10:40:44 +0300 (Сб, 11 июн 2011) $
------------------------------------------------------------------------------
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;

package body Matreshka.Internals.SQL_Drivers.Firebird.Records is

   procedure Free is
     new Ada.Unchecked_Deallocation (Sqlda_Buffer, Sqlda_Buffer_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation (Fields.Field, Fields.Field_Access);

   ------------------
   -- Clear_Values --
   ------------------

   procedure Clear_Values (Self : in out Sql_Record) is
      Field    : Fields.Field_Access;
      Nullable : Boolean;

   begin
      for Idx in 1 .. Self.Cnt loop
         Field    := Self.Fields.Element (Idx);
         Nullable := Field.Is_Nullable;

         Field.Set_Null (True);
         Field.Is_Nullable (Nullable);
      end loop;
   end Clear_Values;

   -----------
   -- Count --
   -----------

   procedure Count (Self : in out Sql_Record; Value : Isc_Field_Index) is

      procedure Allocate_Sqlda;

      --------------------
      -- Allocate_Sqlda --
      --------------------

      procedure Allocate_Sqlda is
         type Isc_Long_Access is access all Isc_Long;

         function Convert is
           new Ada.Unchecked_Conversion (Isc_Long_Access, Isc_Sqlda_Access);

         type Used_Sqlvars is array (1 .. Self.Cnt) of Isc_Sqlvar;
         pragma Convention (C, Used_Sqlvars);

         Size : constant Positive
           := (Isc_Sqlda'Size - Isc_Sqlvars'Size + Used_Sqlvars'Size)
                 / Isc_Long'Size + 1;

         Empty_Var : constant Isc_Sqlvar
           := (Sqltype          => Isc_Type_Empty,
               Sqlscale         => 0,
               Sqlsubtype       => 0,
               Sqllen           => 0,
               Sqldata          => Zero,
               Sqlind           => null,
               Sqlname_Length   => 0,
               Sqlname          => (others => Interfaces.C.nul),
               Relname_Length   => 0,
               Relname          => (others => Interfaces.C.nul),
               Ownname_Length   => 0,
               Ownname          => (others => Interfaces.C.nul),
               Aliasname_Length => 0,
               Aliasname        => (others => Interfaces.C.nul));

         Old   : Sqlda_Buffer_Access := Self.Sqlda_Buf;
         Field : Fields.Field_Access := null;

      begin
         Self.Sqlda_Buf := new Sqlda_Buffer (1 .. Size);
         Self.Sqlda     := Convert (Self.Sqlda_Buf (1)'Access);

         if Old /= null then
            Self.Sqlda_Buf (1 .. Old'Length) := Old (1 .. Old'Length);
            Free (Old);

         else
            Self.Sqlda.Version := Isc_Sqlda_Current_Version;
            Self.Sqlda.Sqldaid := (others => Interfaces.C.nul);
            Self.Sqlda.Sqldabc := 0;
         end if;

         for Idx in 1 .. Self.Size loop
            Self.Fields.Element (Idx).Sqlvar := Self.Sqlda.Sqlvar (Idx)'Access;
         end loop;

         for Idx in Self.Size + 1 .. Self.Cnt loop
            Self.Sqlda.Sqlvar (Idx) := Empty_Var;

            Field        := new Fields.Field;
            Field.Codec  := Self.Codec;
            Field.Utf    := Self.Utf;
            Field.Sqlvar := Self.Sqlda.Sqlvar (Idx)'Access;

            Self.Fields.Append (Field);
         end loop;
      end Allocate_Sqlda;

   begin
      Self.Cnt := Value;

      if Self.Cnt > 0 then
         if Self.Cnt > Self.Size then
            Allocate_Sqlda;
            Self.Size := Self.Cnt;
         end if;

         Self.Sqlda.Sqld := Self.Cnt;
         Self.Sqlda.Sqln := Self.Cnt;
      else
         Self.Free_Fields;
         Free (Self.Sqlda_Buf);
         Self.Sqlda := null;
         Self.Size  := 0;
      end if;
   end Count;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Sql_Record) is
   begin
      Self.Free_Fields;
      Free (Self.Sqlda_Buf);
   end Finalize;

   -----------------
   -- Free_Fields --
   -----------------

   procedure Free_Fields (Self : in out Sql_Record) is
      Field : Fields.Field_Access;

   begin
      while not Self.Fields.Is_Empty loop
         Field := Self.Fields.First_Element;
         Self.Fields.Delete_First;
         Free (Field);
      end loop;
   end Free_Fields;

   ----------
   -- Init --
   ----------

   procedure Init (Self : in out Sql_Record) is
      use type Isc_Short;

      Field : Fields.Field_Access;

   begin
      if Self.Sqlda = null then
         return;
      end if;

      for Idx in 1 .. Self.Cnt loop
         Field := Self.Fields.Element (Idx);

         Field.Srv_Sql_Type    := Field.Sqlvar.Sqltype;
         Field.Srv_Sql_Len     := Field.Sqlvar.Sqllen;
         Field.Srv_Sql_Scale   := Field.Sqlvar.Sqlscale;
         Field.Srv_Sql_Subtype := Field.Sqlvar.Sqlsubtype;

         if Field.Srv_Sql_Type = Isc_Type_Text then
            if Field.Sqlvar.Sqllen = 0 then
               Field.Reserv_Sqldata (1);

            else
               Field.Adjust_Sqldata;
            end if;

         elsif Field.Srv_Sql_Type = Isc_Type_Date
           or else Field.Srv_Sql_Type = Isc_Type_Time
           or else Field.Srv_Sql_Type = Isc_Type_Timestamp
           or else Field.Srv_Sql_Type = Isc_Type_Blob
           or else Field.Srv_Sql_Type = Isc_Type_Array
           or else Field.Srv_Sql_Type = Isc_Type_Quad
           or else Field.Srv_Sql_Type = Isc_Type_Short
           or else Field.Srv_Sql_Type = Isc_Type_Long
           or else Field.Srv_Sql_Type = Isc_Type_Int64
           or else Field.Srv_Sql_Type = Isc_Type_Double
           or else Field.Srv_Sql_Type = Isc_Type_Float
           or else Field.Srv_Sql_Type = Isc_Type_D_Float
           or else Field.Srv_Sql_Type = Isc_Type_Boolean
         then
            Field.Adjust_Sqldata;

         elsif Field.Srv_Sql_Type = Isc_Type_Varying then
            Field.Reserv_Sqldata (Field.Sqlvar.Sqllen + 2);
         end if;

         Field.Adjust_Sqlind;
      end loop;
   end Init;

end Matreshka.Internals.SQL_Drivers.Firebird.Records;
