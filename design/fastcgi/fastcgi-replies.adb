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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.Text_Codecs;

package body FastCGI.Replies is

   ------------------
   -- Error_Stream --
   ------------------

   function Error_Stream
    (Self : Reply)
       return not null access Ada.Streams.Root_Stream_Type'Class is
   begin
      return null;
   end Error_Stream;

   --------------------
   -- Has_Raw_Header --
   --------------------

   function Has_Raw_Header
    (Self : Reply;
     Name : League.Stream_Element_Vectors.Stream_Element_Vector)
       return Boolean is
   begin
      return False;
   end Has_Raw_Header;

   ----------------
   -- Raw_Header --
   ----------------

   function Raw_Header
    (Self : Reply;
     Name : League.Stream_Element_Vectors.Stream_Element_Vector)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      return League.Stream_Element_Vectors.Empty_Stream_Element_Vector;
   end Raw_Header;

   ----------
   -- Read --
   ----------

   overriding procedure Read
    (Self : in out Output_Stream;
     Item : out Ada.Streams.Stream_Element_Array;
     Last : out Ada.Streams.Stream_Element_Offset) is
   begin
      null;
   end Read;

   ----------------------
   -- Set_Content_Type --
   ----------------------

   procedure Set_Content_Type
    (Self  : in out Reply;
     Value : League.Strings.Universal_String)
   is
      Codec : League.Text_Codecs.Text_Codec
        := League.Text_Codecs.Codec
            (League.Strings.To_Universal_String ("utf-8"));

   begin
      Self.Set_Raw_Header
       (Codec.Encode (League.Strings.To_Universal_String ("Content-type")),
        Codec.Encode (Value));
   end Set_Content_Type;

   --------------------
   -- Set_Raw_Header --
   --------------------

   procedure Set_Raw_Header
    (Self  : in out Reply;
     Name  : League.Stream_Element_Vectors.Stream_Element_Vector;
     Value : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      Self.Descriptor.Reply_Headers.Include (Name, Value);
   end Set_Raw_Header;

   ------------
   -- Stream --
   ------------

   function Stream
    (Self : Reply)
       return not null access Ada.Streams.Root_Stream_Type'Class is
   begin
      return Self.Out_Stream;
   end Stream;

   -----------
   -- Write --
   -----------

   overriding procedure Write
    (Self : in out Output_Stream;
     Item : Ada.Streams.Stream_Element_Array)
   is
      use type Ada.Streams.Stream_Element_Array;

      Aux : constant Ada.Streams.Stream_Element_Array
        := Self.Descriptor.Stdout.To_Stream_Element_Array;

   begin
      Self.Descriptor.Stdout :=
        League.Stream_Element_Vectors.To_Stream_Element_Vector (Aux & Item);
   end Write;

end FastCGI.Replies;
