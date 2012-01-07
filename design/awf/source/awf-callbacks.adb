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
with Ada.Streams;

with League.Stream_Element_Vectors;
with League.String_Vectors;
with League.Strings;
with League.Text_Codecs;

with AWF.Painter;
with AWF.Registry;
with AWF.Internals.AWF_Widgets;

package body AWF.Callbacks is

   XHTML_Mime_Type : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("application/xhtml+xml");
   JSON_Mime_Type  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("application/json");
   Text_Mime_Type  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("text");
   UTF8_Codec      : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("utf-8"));

   Path_Info_Header :
     constant League.Stream_Element_Vectors.Stream_Element_Vector
       := UTF8_Codec.Encode
           (League.Strings.To_Universal_String ("PATH_INFO"));
--   Query_String_Header :
--     constant League.Stream_Element_Vectors.Stream_Element_Vector
--       := UTF8_Codec.Encode
--           (League.Strings.To_Universal_String ("QUERY_STRING"));
--   Script_Name_Header :
--     constant League.Stream_Element_Vectors.Stream_Element_Vector
--       := UTF8_Codec.Encode
--           (League.Strings.To_Universal_String ("SCRIPT_NAME"));

   -------------
   -- Handler --
   -------------

   procedure Handler
    (Request : FastCGI.Requests.Request;
     Reply   : out FastCGI.Replies.Reply;
     Status  : out Integer)
   is
      Path : League.String_Vectors.Universal_String_Vector;

   begin

--      Ada.Streams.Stream_Element_Array'Write
--       (Reply.Stream,
--        Request.Raw_Header (Script_Name_Header).To_Stream_Element_Array);
--      String'Write
--       (Reply.Stream, ASCII.LF & ASCII.LF);
--
      if not Request.Has_Raw_Header (Path_Info_Header) then
         Reply.Set_Content_Type (XHTML_Mime_Type);
         Ada.Streams.Stream_Element_Array'Write
          (Reply.Stream,
           UTF8_Codec.Encode
            (AWF.Painter.Draw (AWF.Registry.Root)).To_Stream_Element_Array);

      else
         Path :=
           UTF8_Codec.Decode
            (Request.Raw_Header
              (Path_Info_Header)).Split ('/', League.Strings.Skip_Empty);

         if Path.Length /= 2 then
            Reply.Set_Content_Type (JSON_Mime_Type);
            String'Write (Reply.Stream, "No PATH_INFO");

         else
            declare
               Widget   :
                 constant AWF.Internals.AWF_Widgets.AWF_Widget_Proxy_Access
                   := AWF.Registry.Resolve (Path.Element (1));
               Response : League.Strings.Universal_String;

            begin
               Reply.Set_Content_Type (JSON_Mime_Type);
               AWF.Registry.Resolve (Widget'Tag, Path.Element (2)) (Widget);
               Widget.Render_Response (Response);
               Ada.Streams.Stream_Element_Array'Write
                (Reply.Stream,
                 UTF8_Codec.Encode (Response).To_Stream_Element_Array);
            end;
         end if;
      end if;

--      String'Write
--       (Reply.Stream, ASCII.LF & ASCII.LF);
--      Ada.Streams.Stream_Element_Array'Write
--       (Reply.Stream,
--        Request.Raw_Header (Query_String_Header).To_Stream_Element_Array);

      Status := 0;
   end Handler;

end AWF.Callbacks;
