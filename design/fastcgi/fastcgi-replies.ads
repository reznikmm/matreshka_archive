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
with Ada.Streams;

with League.Stream_Element_Vectors;
with League.Strings;

package FastCGI.Replies is

   pragma Preelaborate;

   type Reply is tagged limited private;

   function Has_Raw_Header
    (Self : Reply;
     Name : League.Stream_Element_Vectors.Stream_Element_Vector)
       return Boolean;

   function Raw_Header
    (Self : Reply;
     Name : League.Stream_Element_Vectors.Stream_Element_Vector)
       return League.Stream_Element_Vectors.Stream_Element_Vector;

   procedure Set_Raw_Header
    (Self  : in out Reply;
     Name  : League.Stream_Element_Vectors.Stream_Element_Vector;
     Value : League.Stream_Element_Vectors.Stream_Element_Vector);

   procedure Set_Content_Type
    (Self  : in out Reply;
     Value : League.Strings.Universal_String);

   function Stream
    (Self : Reply)
       return not null access Ada.Streams.Root_Stream_Type'Class;
   --  Returns stream to write reply's data to server.

   function Error_Stream
    (Self : Reply)
       return not null access Ada.Streams.Root_Stream_Type'Class;
   --  Returns stream to read error data to server.

private

   type Reply is tagged limited null record;

end FastCGI.Replies;
