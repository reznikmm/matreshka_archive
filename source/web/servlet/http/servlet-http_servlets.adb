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
-- Copyright © 2014-2016, Vadim Godunko <vgodunko@gmail.com>                --
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

with League.String_Vectors;

package body Servlet.HTTP_Servlets is

   ---------------
   -- Do_Delete --
   ---------------

   not overriding procedure Do_Delete
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Request);

   begin
      Response.Set_Status (Servlet.HTTP_Responses.Not_Implemented);
   end Do_Delete;

   ------------
   -- Do_Get --
   ------------

   not overriding procedure Do_Get
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Request);

   begin
      Response.Set_Status (Servlet.HTTP_Responses.Not_Implemented);
   end Do_Get;

   -------------
   -- Do_Head --
   -------------

   not overriding procedure Do_Head
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class) is
   begin
      HTTP_Servlet'Class (Self).Do_Get (Request, Response);
   end Do_Head;

   ----------------
   -- Do_Options --
   ----------------

   not overriding procedure Do_Options
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Request);

   begin
      Response.Set_Status (Servlet.HTTP_Responses.OK);
   end Do_Options;

   -------------
   -- Do_Post --
   -------------

   not overriding procedure Do_Post
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Request);

   begin
      Response.Set_Status (Servlet.HTTP_Responses.Not_Implemented);
   end Do_Post;

   ------------
   -- Do_Put --
   ------------

   not overriding procedure Do_Put
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Request);

   begin
      Response.Set_Status (Servlet.HTTP_Responses.Not_Implemented);
   end Do_Put;

   --------------
   -- Do_Trace --
   --------------

   not overriding procedure Do_Trace
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Request);

   begin
      --  XXX It should be implemented according to RFC 2616.

      Response.Set_Status (Servlet.HTTP_Responses.Not_Implemented);
   end Do_Trace;

   -----------------------
   -- Get_Last_Modified --
   -----------------------

   not overriding function Get_Last_Modified
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class)
      return League.Calendars.Date_Time
   is
      pragma Unreferenced (Request);
   begin
      return Self.Unknown_Time;
   end Get_Last_Modified;

   -------------
   -- Service --
   -------------

   overriding procedure Service
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.Requests.Servlet_Request'Class;
     Response : in out Servlet.Responses.Servlet_Response'Class)
   is
      use type League.Calendars.Date_Time;

      HTTP_Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class
        renames Servlet.HTTP_Requests.HTTP_Servlet_Request'Class (Request);
      HTTP_Response : Servlet.HTTP_Responses.HTTP_Servlet_Response'Class
        renames Servlet.HTTP_Responses.HTTP_Servlet_Response'Class (Response);

      function Modified_Since
        (Time : League.Calendars.Date_Time) return Boolean;
      --  Return True if
      --  * Request doesn't have valid If-Modified-Since
      --  * or If-Modified-Since earlier then Time

      function Round_Time
        (Value : League.Calendars.Date_Time) return League.Calendars.Date_Time;
      --  Round time to second by trimming subsecond part of time

      --------------------
      -- Modified_Since --
      --------------------

      function Modified_Since
        (Time : League.Calendars.Date_Time) return Boolean
      is
         If_Modified_Since :
           constant League.String_Vectors.Universal_String_Vector
             := HTTP_Request.Get_Headers (Self.If_Modified_Since_Header);

         Value   : League.Calendars.Date_Time;
         Success : Boolean;

      begin
         if not If_Modified_Since.Is_Empty then
            Self.Format.From_String
              (Text    => If_Modified_Since.Element (1),
               Value   => Value,
               Success => Success);

            if Success then
               return Time > Value;
            end if;
         end if;

         return True;
      end Modified_Since;

      ----------------
      -- Round_Time --
      ----------------

      function Round_Time
        (Value : League.Calendars.Date_Time) return League.Calendars.Date_Time
      is
         use type League.Calendars.ISO_8601.Nanosecond_100_Number;

         Year           : League.Calendars.ISO_8601.Year_Number;
         Month          : League.Calendars.ISO_8601.Month_Number;
         Day            : League.Calendars.ISO_8601.Day_Number;
         Hour           : League.Calendars.ISO_8601.Hour_Number;
         Minute         : League.Calendars.ISO_8601.Minute_Number;
         Second         : League.Calendars.ISO_8601.Second_Number;
         Nanosecond_100 : League.Calendars.ISO_8601.Nanosecond_100_Number;
      begin
         if League.Calendars.ISO_8601.Nanosecond_100 (Value) = 0 then
            return Value;
         end if;

         League.Calendars.ISO_8601.Split
           (Value, Year, Month, Day, Hour, Minute, Second, Nanosecond_100);

         return League.Calendars.ISO_8601.Create
           (Year, Month, Day, Hour, Minute, Second, 0);
      end Round_Time;

   begin
      case HTTP_Request.Get_Method is
         when Servlet.HTTP_Requests.Options =>
            HTTP_Servlet'Class (Self).Do_Options (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Get =>
            declare
               Last_Modified : constant League.Calendars.Date_Time :=
                 Round_Time (HTTP_Servlet'Class (Self)
                               .Get_Last_Modified (HTTP_Request));
               --  We are not interested in subsecond part of time, because
               --  HTTP doesn't transfer subseconds
            begin
               if Last_Modified /= Self.Unknown_Time then

                  --  Current version of AWS sets Last_Modified on ALL
                  --  responses made with AWS.Response.Set.Stream
                  HTTP_Response.Set_Date_Header
                    (Self.Last_Modified_Header, Last_Modified);
               end if;

               if Last_Modified = Self.Unknown_Time
                 or else Modified_Since (Last_Modified)
               then

                  HTTP_Servlet'Class (Self).Do_Get
                    (HTTP_Request, HTTP_Response);
               else

                  HTTP_Response.Set_Status
                    (Servlet.HTTP_Responses.Not_Modified);
               end if;
            end;

         when Servlet.HTTP_Requests.Head =>
            HTTP_Servlet'Class (Self).Do_Head (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Post =>
            HTTP_Servlet'Class (Self).Do_Post (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Put =>
            HTTP_Servlet'Class (Self).Do_Put (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Delete =>
            HTTP_Servlet'Class (Self).Do_Delete (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Trace =>
            HTTP_Servlet'Class (Self).Do_Trace (HTTP_Request, HTTP_Response);

         when Servlet.HTTP_Requests.Connect =>
            --  "CONNECT" method is not implemented.

            HTTP_Response.Set_Status (Servlet.HTTP_Responses.Not_Implemented);
      end case;
   end Service;

end Servlet.HTTP_Servlets;
