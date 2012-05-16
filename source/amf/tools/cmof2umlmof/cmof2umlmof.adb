------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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

with League.Application;
with League.Stream_Element_Vectors;
with League.Strings;
with League.Text_Codecs;

with AMF.Facility;
with AMF.URI_Stores;
with XMI.Reader;
with XMI.Writer;

with AMF.Transformations.CMOF_To_UML_MOF;

with AMF.Internals.Modules.MOF_Module;
pragma Unreferenced (AMF.Internals.Modules.MOF_Module);
with AMF.Internals.Modules.UML_Module;
pragma Unreferenced (AMF.Internals.Modules.UML_Module);

procedure CMOF2UMLMOF is

   function To_UTF8_String
    (Item : League.Strings.Universal_String) return String;

   --------------------
   -- To_UTF8_String --
   --------------------

   function To_UTF8_String
    (Item : League.Strings.Universal_String) return String
   is
      Codec   : constant League.Text_Codecs.Text_Codec
        := League.Text_Codecs.Codec
            (League.Strings.To_Universal_String ("utf-8"));
      Encoded : constant League.Stream_Element_Vectors.Stream_Element_Vector
        := Codec.Encode (Item);
      Aux     : constant Ada.Streams.Stream_Element_Array
        := Encoded.To_Stream_Element_Array;
      Result  : String (1 .. Aux'Length);
      for Result'Address use Aux'Address;
      pragma Import (Ada, Result);

   begin
      return Result;
   end To_UTF8_String;


   Source : AMF.URI_Stores.URI_Store_Access;
   Target : AMF.URI_Stores.URI_Store_Access;

begin
   --  Initialize facility.

   AMF.Facility.Initialize;

   --  Load source metamodel.

   Source :=
     XMI.Reader.Read_URI (League.Application.Arguments.Element (1));

   --  Create target extent.

   Target :=
     AMF.Facility.Create_URI_Store (League.Strings.Empty_Universal_String);

   --  Transform CMOF model into UML+MOF model.

   AMF.Transformations.CMOF_To_UML_MOF.Transform (Source, Target);

   --  Output result model.

   declare
      File : Ada.Streams.Stream_IO.File_Type;

   begin
      Ada.Streams.Stream_IO.Create
       (File,
        Ada.Streams.Stream_IO.Out_File,
        To_UTF8_String (League.Application.Arguments.Element (2)));
      String'Write
       (Ada.Streams.Stream_IO.Stream (File),
        To_UTF8_String (XMI.Writer (Target)));
      Ada.Streams.Stream_IO.Close (File);
   end;
end CMOF2UMLMOF;
