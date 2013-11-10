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
with Ada.Streams;

with FastCGI.Field_Names;
with FastCGI.Field_Values;

package FastCGI.Handlers.Responder is

   type Abstract_Responder is abstract tagged limited private;

   --  Request interface

   not overriding procedure Start_Request
    (Self : in out Abstract_Responder) is null;

   not overriding procedure Meta_Variable
    (Self  : in out Abstract_Responder;
     Name  : FastCGI.Field_Names.Field_Name;
     Value : FastCGI.Field_Values.Field_Value) is null;

   not overriding procedure End_Meta_Variables
    (Self : in out Abstract_Responder) is null;

   not overriding procedure Stdin
    (Self : in out Abstract_Responder;
     Data : Ada.Streams.Stream_Element_Array) is null;

   not overriding procedure End_Stdin
    (Self : in out Abstract_Responder) is null;

   not overriding procedure End_Request
    (Self   : in out Abstract_Responder;
     Status : out Integer) is abstract;

   --  Response interface

   procedure Header
    (Self  : in out Abstract_Responder'Class;
     Name  : FastCGI.Field_Names.Field_Name;
     Value : FastCGI.Field_Values.Field_Value);

   procedure End_Headers
    (Self : in out Abstract_Responder'Class);

   procedure Stdout
    (Self : in out Abstract_Responder'Class;
     Data : Ada.Streams.Stream_Element_Array);

   procedure Stderr
    (Self : in out Abstract_Responder'Class;
     Data : Ada.Streams.Stream_Element_Array);

   --  Supplementary operations

--   function Is_Content_Length_Valid
--    (Self : Abstract_Handler'Class) return Boolean;

private

   type Abstract_Responder is abstract tagged limited null record;

end FastCGI.Handlers.Responder;
