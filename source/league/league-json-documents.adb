------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.JSON.Arrays.Internals;
with League.JSON.Objects.Internals;
with League.Stream_Element_Vectors.Internals;
with League.Strings.Internals;
with Matreshka.Internals.Stream_Element_Vectors;
with Matreshka.Internals.Strings;
with Matreshka.Internals.Text_Codecs.UTF16;
with Matreshka.Internals.Text_Codecs.UTF8;
with Matreshka.JSON_Generator;
with Matreshka.JSON_Parser;
with Matreshka.JSON_Types;

package body League.JSON.Documents is

   use type Matreshka.JSON_Types.Shared_JSON_Array_Access;
   use type Matreshka.JSON_Types.Shared_JSON_Object_Access;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out JSON_Document) is
   begin
      Matreshka.JSON_Documents.Reference (Self.Data);
   end Adjust;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out JSON_Document) is
      use type Matreshka.JSON_Documents.Shared_JSON_Document_Access;

   begin
      --  Finalize can be called more than once (as specified by language
      --  standard), thus implementation should provide protection from
      --  multiple finalization.

      if Self.Data /= null then
         Matreshka.JSON_Documents.Dereference (Self.Data);
      end if;
   end Finalize;

   ---------------
   -- From_JSON --
   ---------------

   function From_JSON
    (Data : Ada.Streams.Stream_Element_Array) return JSON_Document is
   begin
      return
        From_JSON
         (League.Stream_Element_Vectors.To_Stream_Element_Vector (Data));
   end From_JSON;

   ---------------
   -- From_JSON --
   ---------------

   function From_JSON
    (Data : League.Stream_Element_Vectors.Stream_Element_Vector)
       return JSON_Document
   is
      use type Ada.Streams.Stream_Element;
      use type Ada.Streams.Stream_Element_Offset;

      C1       : Ada.Streams.Stream_Element;
      C2       : Ada.Streams.Stream_Element;
      C3       : Ada.Streams.Stream_Element;
      C4       : Ada.Streams.Stream_Element;
      Encoding : JSON_Encoding := UTF8;
      Decoded  : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      if Data.Length >= 4 then
         --  Automatic detection of encoding form according to RFC-4627:
         --
         --  "Since the first two characters of a JSON text will always be
         --  ASCII characters [RFC0020], it is possible to determine whether an
         --  octet stream is UTF-8, UTF-16 (BE or LE), or UTF-32 (BE or LE) by
         --  looking at the pattern of nulls in the first four octets.
         --
         --    00 00 00 xx  UTF-32BE
         --    00 xx 00 xx  UTF-16BE
         --    xx 00 00 00  UTF-32LE
         --    xx 00 xx 00  UTF-16LE
         --    xx xx xx xx  UTF-8"
         --
         --  UTF-8 is checked first because it is most widely used encoding.

         C1 := Data.Element (1);
         C2 := Data.Element (2);
         C3 := Data.Element (3);
         C4 := Data.Element (4);

         if C1 /= 0 and C2 /= 0 and C3 /= 0 and C4 /= 0 then
            --  xx xx xx xx  UTF-8

            Encoding := UTF8;

         elsif C1 = 0 and C2 /= 0 and C3 = 0 and C4 /= 0 then
            --  00 xx 00 xx  UTF-16BE

            Encoding := UTF16BE;

         elsif C1 /= 0 and C2 = 0 and C3 /= 0 and C4 = 0 then
            --  xx 00 xx 00  UTF-16LE

            Encoding := UTF16LE;

         elsif C1 = 0 and C2 = 0 and C3 = 0 and C4 /= 0 then
            --  00 00 00 xx  UTF-32BE

            Encoding := UTF32BE;

         elsif C1 /= 0 and C2 = 0 and C3 = 0 and C4 = 0 then
            --  xx 00 00 00  UTF-32LE

            Encoding := UTF32LE;

         else
            --  Encoding is not detected.

            raise Program_Error;
         end if;
      end if;

      case Encoding is
         when UTF8 =>
            declare
               Decoder : Matreshka.Internals.Text_Codecs.Abstract_Decoder'Class
                 := Matreshka.Internals.Text_Codecs.UTF8.Decoder
                     (Matreshka.Internals.Text_Codecs.Raw);

            begin
               Decoder.Decode (Data.To_Stream_Element_Array, Decoded);

               if Decoder.Is_Mailformed then
                  Matreshka.Internals.Strings.Dereference (Decoded);

                  return League.JSON.Documents.Empty_JSON_Document;
               end if;
            end;

         when UTF16 =>
            --  Must never be happen.

            raise Program_Error;

         when UTF16BE =>
            declare
               Decoder : Matreshka.Internals.Text_Codecs.Abstract_Decoder'Class
                 := Matreshka.Internals.Text_Codecs.UTF16.BE_Decoder
                     (Matreshka.Internals.Text_Codecs.Raw);

            begin
               Decoder.Decode (Data.To_Stream_Element_Array, Decoded);

               if Decoder.Is_Mailformed then
                  Matreshka.Internals.Strings.Dereference (Decoded);

                  return League.JSON.Documents.Empty_JSON_Document;
               end if;
            end;

         when UTF16LE =>
            declare
               Decoder : Matreshka.Internals.Text_Codecs.Abstract_Decoder'Class
                 := Matreshka.Internals.Text_Codecs.UTF16.LE_Decoder
                     (Matreshka.Internals.Text_Codecs.Raw);

            begin
               Decoder.Decode (Data.To_Stream_Element_Array, Decoded);

               if Decoder.Is_Mailformed then
                  Matreshka.Internals.Strings.Dereference (Decoded);

                  return League.JSON.Documents.Empty_JSON_Document;
               end if;
            end;

         when UTF32 =>
            --  Must never be happen.

            raise Program_Error;

         when UTF32BE =>
            --  XX Decoder is not implemented.

            raise Program_Error;

         when UTF32LE =>
            --  XX Decoder is not implemented.

            raise Program_Error;
      end case;

      return From_JSON (League.Strings.Internals.Wrap (Decoded));
   end From_JSON;

   ---------------
   -- From_JSON --
   ---------------

   function From_JSON
    (Data : League.Strings.Universal_String) return JSON_Document
   is
      Result  : League.JSON.Documents.JSON_Document;
      Success : Boolean;

   begin
      Matreshka.JSON_Parser.Parse (Data, Result, Success);

      if Success then
         return Result;

      else
         return Empty_JSON_Document;
      end if;
   end From_JSON;

   --------------
   -- Is_Array --
   --------------

   function Is_Array (Self : JSON_Document'Class) return Boolean is
   begin
      return Self.Data.Array_Value /= null;
   end Is_Array;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Self : JSON_Document'Class) return Boolean is
   begin
      return Self.Data.Array_Value = null and Self.Data.Object_Value = null;
   end Is_Empty;

   ---------------
   -- Is_Object --
   ---------------

   function Is_Object (Self : JSON_Document'Class) return Boolean is
   begin
      return Self.Data.Object_Value /= null;
   end Is_Object;

   ---------------
   -- Set_Array --
   ---------------

   procedure Set_Array
    (Self  : in out JSON_Document'Class;
     Value : League.JSON.Arrays.JSON_Array) is
   begin
      Matreshka.JSON_Documents.Mutate (Self.Data);

      --  Cleanup.

      if Self.Data.Array_Value /= null then
         Matreshka.JSON_Types.Dereference (Self.Data.Array_Value);
      end if;

      if Self.Data.Object_Value /= null then
         Matreshka.JSON_Types.Dereference (Self.Data.Object_Value);
      end if;

      --  Set new value.

      Self.Data.Array_Value := League.JSON.Arrays.Internals.Internal (Value);
      Matreshka.JSON_Types.Reference (Self.Data.Array_Value);
   end Set_Array;

   ----------------
   -- Set_Object --
   ----------------

   procedure Set_Object
    (Self  : in out JSON_Document'Class;
     Value : League.JSON.Objects.JSON_Object) is
   begin
      Matreshka.JSON_Documents.Mutate (Self.Data);

      --  Cleanup.

      if Self.Data.Array_Value /= null then
         Matreshka.JSON_Types.Dereference (Self.Data.Array_Value);
      end if;

      if Self.Data.Object_Value /= null then
         Matreshka.JSON_Types.Dereference (Self.Data.Object_Value);
      end if;

      --  Set new value.

      Self.Data.Object_Value := League.JSON.Objects.Internals.Internal (Value);
      Matreshka.JSON_Types.Reference (Self.Data.Object_Value);
   end Set_Object;

   --------------
   -- To_Array --
   --------------

   function To_Array
    (Self : JSON_Document'Class) return League.JSON.Arrays.JSON_Array is
   begin
      if Self.Data.Array_Value /= null then
         return League.JSON.Arrays.Internals.Create (Self.Data.Array_Value);

      else
         return League.JSON.Arrays.Empty_JSON_Array;
      end if;
   end To_Array;

   -------------
   -- To_JSON --
   -------------

   function To_JSON
    (Self     : JSON_Document'Class;
     Encoding : JSON_Encoding := UTF8)
       return League.Stream_Element_Vectors.Stream_Element_Vector
   is
      Aux    : constant League.Strings.Universal_String := To_JSON (Self);
      Result :
        Matreshka.Internals.Stream_Element_Vectors
          .Shared_Stream_Element_Vector_Access;

   begin
      if Encoding /= UTF8 then
         --  XXX Not implemented yet.

         raise Program_Error;
      end if;

      declare
         Encoder : Matreshka.Internals.Text_Codecs.Abstract_Encoder'Class
           := Matreshka.Internals.Text_Codecs.UTF8.Encoder;

      begin
         Encoder.Encode (League.Strings.Internals.Internal (Aux), Result);

         return League.Stream_Element_Vectors.Internals.Wrap (Result);
      end;
   end To_JSON;

   -------------
   -- To_JSON --
   -------------

   function To_JSON
    (Self : JSON_Document'Class) return League.Strings.Universal_String is
   begin
      return Matreshka.JSON_Generator.Generate (Self);
   end To_JSON;

   ----------------------
   -- To_JSON_Document --
   ----------------------

   function To_JSON_Document
    (Value : League.JSON.Arrays.JSON_Array) return JSON_Document is
   begin
      return Self : constant JSON_Document
        := (Ada.Finalization.Controlled with
              Data => new Matreshka.JSON_Documents.Shared_JSON_Document'
                           (Counter      => <>,
                            Array_Value  =>
                              League.JSON.Arrays.Internals.Internal (Value),
                            Object_Value => null))
      do
         Matreshka.JSON_Types.Reference (Self.Data.Array_Value);
      end return;
   end To_JSON_Document;

   ----------------------
   -- To_JSON_Document --
   ----------------------

   function To_JSON_Document
    (Value : League.JSON.Objects.JSON_Object) return JSON_Document is
   begin
      return Self : constant JSON_Document
        := (Ada.Finalization.Controlled with
              Data => new Matreshka.JSON_Documents.Shared_JSON_Document'
                           (Counter      => <>,
                            Array_Value  => null,
                            Object_Value =>
                              League.JSON.Objects.Internals.Internal (Value)))
      do
         Matreshka.JSON_Types.Reference (Self.Data.Object_Value);
      end return;
   end To_JSON_Document;

   ---------------
   -- To_Object --
   ---------------

   function To_Object
    (Self : JSON_Document'Class) return League.JSON.Objects.JSON_Object is
   begin
      if Self.Data.Object_Value /= null then
         return League.JSON.Objects.Internals.Create (Self.Data.Object_Value);

      else
         return League.JSON.Objects.Empty_JSON_Object;
      end if;
   end To_Object;

end League.JSON.Documents;
