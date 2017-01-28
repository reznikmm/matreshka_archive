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
private with Ada.Streams.Stream_IO;

with AWS.Attachments;

package Servlet.HTTP_Parameters.AWS_Parameters is

   function Create
    (Attachment : AWS.Attachments.Element) return HTTP_Parameter;
   --  Creates HTTP_Parameter to access to given AWS attachment element.

private

   type AWS_Attachment_Parameter is new Abstract_Parameter with record
      Attachment : AWS.Attachments.Element;
      Input      : Ada.Streams.Stream_IO.File_Type;
   end record;

   overriding function Get_Content_Type
    (Self : AWS_Attachment_Parameter) return League.Strings.Universal_String;

   overriding function Get_Headers
    (Self : AWS_Attachment_Parameter;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector;

   overriding function Get_Header_Names
    (Self : AWS_Attachment_Parameter)
       return League.String_Vectors.Universal_String_Vector;

   overriding function Get_Input_Stream
    (Self : AWS_Attachment_Parameter)
       return access Ada.Streams.Root_Stream_Type'Class;

   overriding function Get_Name
    (Self : AWS_Attachment_Parameter) return League.Strings.Universal_String;

   overriding function Get_Size
    (Self : AWS_Attachment_Parameter) return Ada.Streams.Stream_Element_Count;

   overriding function Get_Submitted_File_Name
    (Self : AWS_Attachment_Parameter) return League.Strings.Universal_String;

end Servlet.HTTP_Parameters.AWS_Parameters;
