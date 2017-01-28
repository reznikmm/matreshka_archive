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
-- Copyright © 2016-2017, Vadim Godunko <vgodunko@gmail.com>                --
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
with AWS.Headers.Values;
with AWS.Messages;

package body Servlet.HTTP_Parameters.AWS_Parameters is

   ------------
   -- Create --
   ------------

   function Create
    (Attachment : AWS.Attachments.Element) return HTTP_Parameter is
   begin
      return
       (Parameter =>
          new AWS_Attachment_Parameter'
               (Attachment => Attachment,
                Input      => <>));
   end Create;

   ----------------------
   -- Get_Content_Type --
   ----------------------

   overriding function Get_Content_Type
    (Self : AWS_Attachment_Parameter) return League.Strings.Universal_String is
   begin
      return
        League.Strings.From_UTF_8_String
         (AWS.Attachments.Content_Type (Self.Attachment));
   end Get_Content_Type;

   ----------------------
   -- Get_Header_Names --
   ----------------------

   overriding function Get_Header_Names
    (Self : AWS_Attachment_Parameter)
       return League.String_Vectors.Universal_String_Vector is
   begin
      return League.String_Vectors.Empty_Universal_String_Vector;
   end Get_Header_Names;

   -----------------
   -- Get_Headers --
   -----------------

   overriding function Get_Headers
    (Self : AWS_Attachment_Parameter;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector
   is
      N       : constant String := Name.To_UTF_8_String;
      Headers : constant AWS.Headers.List
        := AWS.Attachments.Headers (Self.Attachment);
      Result  : League.String_Vectors.Universal_String_Vector;

   begin
      for J in 1 .. AWS.Headers.Count (Headers, N) loop
         Result.Append
          (League.Strings.From_UTF_8_String (AWS.Headers.Get (Headers, N, J)));
      end loop;

      return Result;
   end Get_Headers;

   ----------------------
   -- Get_Input_Stream --
   ----------------------

   overriding function Get_Input_Stream
    (Self : AWS_Attachment_Parameter)
       return access Ada.Streams.Root_Stream_Type'Class is
   begin
      if not Ada.Streams.Stream_IO.Is_Open (Self.Input) then
         Ada.Streams.Stream_IO.Open
          (Self'Unrestricted_Access.Input,
           Ada.Streams.Stream_IO.In_File,
           AWS.Attachments.Local_Filename (Self.Attachment));
      end if;

      return Ada.Streams.Stream_IO.Stream (Self.Input);
   end Get_Input_Stream;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : AWS_Attachment_Parameter) return League.Strings.Universal_String
   is
      Headers : constant AWS.Headers.List
        := AWS.Attachments.Headers (Self.Attachment);

   begin
      if AWS.Headers.Exist
          (Headers, AWS.Messages.Content_Disposition_Token)
      then
         return
           League.Strings.From_UTF_8_String
            (AWS.Headers.Values.Search
              (AWS.Headers.Get
                (Headers, AWS.Messages.Content_Disposition_Token),
               "name"));

      else
         return League.Strings.Empty_Universal_String;
      end if;
   end Get_Name;

   --------------
   -- Get_Size --
   --------------

   overriding function Get_Size
    (Self : AWS_Attachment_Parameter)
       return Ada.Streams.Stream_Element_Count is
   begin
      return 0;
   end Get_Size;

   -----------------------------
   -- Get_Submitted_File_Name --
   -----------------------------

   overriding function Get_Submitted_File_Name
    (Self : AWS_Attachment_Parameter) return League.Strings.Universal_String
   is
      Headers : constant AWS.Headers.List
        := AWS.Attachments.Headers (Self.Attachment);

   begin
      if AWS.Headers.Exist
          (Headers, AWS.Messages.Content_Disposition_Token)
      then
         return
           League.Strings.From_UTF_8_String
            (AWS.Headers.Values.Search
              (AWS.Headers.Get
                (Headers, AWS.Messages.Content_Disposition_Token),
               "filename"));

      else
         return League.Strings.Empty_Universal_String;
      end if;
   end Get_Submitted_File_Name;

end Servlet.HTTP_Parameters.AWS_Parameters;
