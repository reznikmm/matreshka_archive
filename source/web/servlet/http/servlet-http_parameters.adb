------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2016, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Streams.Stream_IO;

package body Servlet.HTTP_Parameters is

   ----------------------
   -- Get_Content_Type --
   ----------------------

   function Get_Content_Type
    (Self : HTTP_Parameter'Class) return League.Strings.Universal_String is
   begin
      if Self.Parameter /= null then
         return Self.Parameter.Get_Content_Type;

      else
         return League.Strings.Empty_Universal_String;
      end if;
   end Get_Content_Type;

   ----------------
   -- Get_Header --
   ----------------

   function Get_Header
    (Self : HTTP_Parameter'Class;
     Name : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      Headers : League.String_Vectors.Universal_String_Vector;

   begin
      if Self.Parameter /= null then
         Headers := Self.Parameter.Get_Headers (Name);

         if not Headers.Is_Empty then
            return Headers (1);
         end if;
      end if;

      return League.Strings.Empty_Universal_String;
   end Get_Header;

   -----------------
   -- Get_Headers --
   -----------------

   function Get_Headers
    (Self : HTTP_Parameter'Class;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector is
   begin
      if Self.Parameter /= null then
         return Self.Parameter.Get_Headers (Name);

      else
         return League.String_Vectors.Empty_Universal_String_Vector;
      end if;
   end Get_Headers;

   ----------------------
   -- Get_Header_Names --
   ----------------------

   function Get_Header_Names
    (Self : HTTP_Parameter'Class)
       return League.String_Vectors.Universal_String_Vector is
   begin
      if Self.Parameter /= null then
         return Self.Parameter.Get_Header_Names;

      else
         return League.String_Vectors.Empty_Universal_String_Vector;
      end if;
   end Get_Header_Names;

   ----------------------
   -- Get_Input_Stream --
   ----------------------

   function Get_Input_Stream
    (Self : HTTP_Parameter'Class)
       return access Ada.Streams.Root_Stream_Type'Class is
   begin
      if Self.Parameter /= null then
         return Self.Parameter.Get_Input_Stream;

      else
         return null;
      end if;
   end Get_Input_Stream;

   --------------
   -- Get_Name --
   --------------

   function Get_Name
    (Self : HTTP_Parameter'Class) return League.Strings.Universal_String is
   begin
      if Self.Parameter /= null then
         return Self.Parameter.Get_Name;

      else
         return League.Strings.Empty_Universal_String;
      end if;
   end Get_Name;

   --------------
   -- Get_Size --
   --------------

   function Get_Size
    (Self : HTTP_Parameter'Class) return Ada.Streams.Stream_Element_Count is
   begin
      if Self.Parameter /= null then
         return Self.Parameter.Get_Size;

      else
         return 0;
      end if;
   end Get_Size;

   -----------------------------
   -- Get_Submitted_File_Name --
   -----------------------------

   function Get_Submitted_File_Name
    (Self : HTTP_Parameter'Class) return League.Strings.Universal_String is
   begin
      if Self.Parameter /= null then
         return Self.Parameter.Get_Submitted_File_Name;

      else
         return League.Strings.Empty_Universal_String;
      end if;
   end Get_Submitted_File_Name;

   -----------
   -- Write --
   -----------

   not overriding procedure Write
    (Self      : Abstract_Parameter;
     File_Name : League.Strings.Universal_String)
   is
      use type Ada.Streams.Stream_Element_Offset;

      Input  : constant access Ada.Streams.Root_Stream_Type'Class
        := Abstract_Parameter'Class (Self).Get_Input_Stream;
      Output : Ada.Streams.Stream_IO.File_Type;
      Buffer : Ada.Streams.Stream_Element_Array (1 .. 4096);
      Last   : Ada.Streams.Stream_Element_Offset;

   begin
      if Input /= null then
         Ada.Streams.Stream_IO.Create
          (Output, Ada.Streams.Stream_IO.Out_File, File_Name.To_UTF_8_String);
         --  File name is converted to UTF-8. Should works with GNAT on UNIX
         --  with UTF-8 locales and Windows.

         loop
            Input.Read (Buffer, Last);

            exit when Last < Buffer'First;

            Ada.Streams.Stream_IO.Write
             (Output, Buffer (Buffer'First .. Last));
         end loop;

         Ada.Streams.Stream_IO.Close (Output);
      end if;
   end Write;

   -----------
   -- Write --
   -----------

   procedure Write
    (Self      : HTTP_Parameter'Class;
     File_Name : League.Strings.Universal_String) is
   begin
      if Self.Parameter /= null then
         Self.Parameter.Write (File_Name);
      end if;
   end Write;

end Servlet.HTTP_Parameters;
