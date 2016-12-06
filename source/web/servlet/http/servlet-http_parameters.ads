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
--  This package represents a parameter of form that was received. It works
--  with files transferred within a multipart/form-data POST request.
------------------------------------------------------------------------------
with Ada.Streams;

with League.Strings;
with League.String_Vectors;

package Servlet.HTTP_Parameters is

   pragma Preelaborate;

   type HTTP_Parameter is tagged private;

   function Get_Content_Type
    (Self : HTTP_Parameter'Class) return League.Strings.Universal_String;
   --  Gets the content type of this parameter.

   function Get_Header
    (Self : HTTP_Parameter'Class;
     Name : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Returns the value of the specified mime header as a string. If the
   --  Parameter did not include a header of the specified name, this method
   --  returns empty string. If there are multiple headers with the same name,
   --  this method returns the first header in the part. The header name is
   --  case insensitive. You can use this method with any request header.

   function Get_Headers
    (Self : HTTP_Parameter'Class;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector;
   --  Gets the values of the Patameter header with the given name. Parameter
   --  header names are case insensitive.

   function Get_Header_Names
    (Self : HTTP_Parameter'Class)
       return League.String_Vectors.Universal_String_Vector;
   --  Gets the header names of this Parameter.  Some servlet containers do not
   --  allow servlets to access headers using this method, in which case this
   --  method returns empty vector.

   function Get_Input_Stream
    (Self : HTTP_Parameter'Class)
       return access Ada.Streams.Root_Stream_Type'Class;
   --  Gets the content of this parameter as an stream.

   function Get_Name
    (Self : HTTP_Parameter'Class) return League.Strings.Universal_String;
   --  Gets the name of this parameter.

   function Get_Size
    (Self : HTTP_Parameter'Class) return Ada.Streams.Stream_Element_Count;
   --  Returns the size of this file.

   function Get_Submitted_File_Name
    (Self : HTTP_Parameter'Class) return League.Strings.Universal_String;
   --  Gets the file name specified by the client.

   procedure Write
    (Self      : HTTP_Parameter'Class;
     File_Name : League.Strings.Universal_String);
   --  A convenience method to write this uploaded item to disk.
   --
   --  This method is not guaranteed to succeed if called more than once for
   --  the same parameter. This allows a particular implementation to use, for
   --  example, file renaming, where possible, rather than copying all of the
   --  underlying data, thus gaining a significant performance benefit.

private

   type Abstract_Parameter is abstract tagged limited null record;
   --  Internal representation of HTTP parameter.

   type Parameter_Access is access all Abstract_Parameter'Class;

   not overriding function Get_Content_Type
    (Self : Abstract_Parameter) return League.Strings.Universal_String
       is abstract;

   not overriding function Get_Headers
    (Self : Abstract_Parameter;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector is abstract;

   not overriding function Get_Header_Names
    (Self : Abstract_Parameter)
       return League.String_Vectors.Universal_String_Vector is abstract;

   not overriding function Get_Input_Stream
    (Self : Abstract_Parameter)
       return access Ada.Streams.Root_Stream_Type'Class is abstract;

   not overriding function Get_Name
    (Self : Abstract_Parameter) return League.Strings.Universal_String
       is abstract;

   not overriding function Get_Size
    (Self : Abstract_Parameter) return Ada.Streams.Stream_Element_Count
       is abstract;

   not overriding function Get_Submitted_File_Name
    (Self : Abstract_Parameter) return League.Strings.Universal_String
       is abstract;

   not overriding procedure Write
    (Self      : Abstract_Parameter;
     File_Name : League.Strings.Universal_String);

   --------------------
   -- HTTP_Parameter --
   --------------------

   type HTTP_Parameter is tagged record
      Parameter : Parameter_Access;
   end record;

end Servlet.HTTP_Parameters;
