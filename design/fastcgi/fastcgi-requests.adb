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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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

package body FastCGI.Requests is

   --------------------
   -- Has_Raw_Header --
   --------------------

   function Has_Raw_Header
    (Self : Request;
     Name : League.Stream_Element_Vectors.Stream_Element_Vector)
       return Boolean is
   begin
      return Self.Descriptor.Request_Headers.Contains (Name);
   end Has_Raw_Header;

   ----------------
   -- Raw_Header --
   ----------------

   function Raw_Header
    (Self : Request;
     Name : League.Stream_Element_Vectors.Stream_Element_Vector)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      return Self.Descriptor.Request_Headers.Element (Name);
   end Raw_Header;

   ----------
   -- Read --
   ----------

   overriding procedure Read
    (Self : in out Input_Stream;
     Item : out Ada.Streams.Stream_Element_Array;
     Last : out Ada.Streams.Stream_Element_Offset)
   is
      use type Ada.Streams.Stream_Element_Offset;

   begin
      Item (Item'First .. Item'First + Self.Descriptor.Stdin.Length - 1) :=
        Self.Descriptor.Stdin.To_Stream_Element_Array;
      Last := Item'First + Self.Descriptor.Stdin.Length - 1;
   end Read;

   ------------
   -- Stream --
   ------------

   function Stream
    (Self : Request)
       return not null access Ada.Streams.Root_Stream_Type'Class is
   begin
      return Self.In_Stream;
   end Stream;

   -----------
   -- Write --
   -----------

   overriding procedure Write
    (Self : in out Input_Stream;
     Item : Ada.Streams.Stream_Element_Array) is
   begin
      raise Program_Error;
   end Write;

end FastCGI.Requests;
