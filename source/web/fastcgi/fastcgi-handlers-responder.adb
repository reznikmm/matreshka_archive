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

package body FastCGI.Handlers.Responder is

   -----------------
   -- End_Headers --
   -----------------

   procedure End_Headers
    (Self : in out Abstract_Responder'Class) is
   begin
      Self.Internal_End_Headers;
   end End_Headers;

   ------------
   -- Header --
   ------------

   procedure Header
    (Self  : in out Abstract_Responder'Class;
     Name  : FastCGI.Field_Names.Field_Name;
     Value : FastCGI.Field_Values.Field_Value) is
   begin
      Self.Internal_Header (Name, Value);
   end Header;

   ----------------------------
   -- Internal_Begin_Request --
   ----------------------------

   overriding procedure Internal_Begin_Request
    (Self       : in out Abstract_Responder;
     Socket     : GNAT.Sockets.Socket_Type;
     Request_Id : Matreshka.FastCGI.FCGI_Request_Identifier) is
   begin
      Matreshka.FastCGI.Descriptors.Abstract_Descriptor
       (Self).Internal_Begin_Request (Socket, Request_Id);
      Abstract_Responder'Class (Self).Start_Request;
   end Internal_Begin_Request;

   -------------------------
   -- Internal_End_Params --
   -------------------------

   overriding procedure Internal_End_Params
    (Self : in out Abstract_Responder) is
   begin
      Abstract_Responder'Class (Self).End_Meta_Variables;
   end Internal_End_Params;

   --------------------
   -- Internal_Param --
   --------------------

   overriding procedure Internal_Param
    (Self  : in out Abstract_Responder;
     Name  : FastCGI.Field_Names.Field_Name;
     Value : FastCGI.Field_Values.Field_Value) is
   begin
      Abstract_Responder'Class (Self).Meta_Variable (Name, Value);
   end Internal_Param;

   --------------------
   -- Internal_Stdin --
   --------------------

   overriding procedure Internal_Stdin
    (Self   : in out Abstract_Responder;
     Buffer : Ada.Streams.Stream_Element_Array) is
   begin
      Abstract_Responder'Class (Self).Stdin (Buffer);
   end Internal_Stdin;

   ------------
   -- Stderr --
   ------------

   procedure Stderr
    (Self : in out Abstract_Responder'Class;
     Data : Ada.Streams.Stream_Element_Array) is
   begin
      Self.Internal_Stderr (Data);
   end Stderr;

   ------------
   -- Stdout --
   ------------

   procedure Stdout
    (Self : in out Abstract_Responder'Class;
     Data : Ada.Streams.Stream_Element_Array) is
   begin
      Self.Internal_Stdout (Data);
   end Stdout;

   -------------------
   -- To_Descriptor --
   -------------------

   function To_Descriptor
    (Item : Responder_Access)
       return Matreshka.FastCGI.Descriptors.Descriptor_Access is
   begin
      return Matreshka.FastCGI.Descriptors.Descriptor_Access (Item);
   end To_Descriptor;

end FastCGI.Handlers.Responder;
