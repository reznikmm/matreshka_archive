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
-- Copyright © 2015-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
with Servlet.HTTP_Cookies;

package body Matreshka.Servlet_HTTP_Requests is

   use type Spikedog.HTTP_Session_Managers.HTTP_Session_Manager_Access;

   -----------------------
   -- Change_Session_Id --
   -----------------------

   overriding function Change_Session_Id
    (Self : Abstract_HTTP_Servlet_Request)
       return League.Strings.Universal_String is
   begin
      if Self.Session_Manager = null
        or else Self.Data.Session = null
      then
         raise Program_Error;
      end if;

      Self.Session_Manager.Change_Session_Id (Self.Data.Session);

      return Self.Data.Session.Get_Id;
   end Change_Session_Id;

   ----------------------
   -- Get_Context_Path --
   ----------------------

   overriding function Get_Context_Path
    (Self : Abstract_HTTP_Servlet_Request)
       return League.String_Vectors.Universal_String_Vector is
   begin
      return Self.URL.Get_Path.Slice (1, Self.Context_Last);
   end Get_Context_Path;

   --------------
   -- Get_Path --
   --------------

   function Get_Path
    (Self : Abstract_HTTP_Servlet_Request'Class)
       return League.String_Vectors.Universal_String_Vector is
   begin
      return Self.URL.Get_Path;
   end Get_Path;

   -------------------
   -- Get_Path_Info --
   -------------------

   overriding function Get_Path_Info
    (Self : Abstract_HTTP_Servlet_Request)
       return League.String_Vectors.Universal_String_Vector
   is
      Path : constant League.String_Vectors.Universal_String_Vector
        := Self.URL.Get_Path;

   begin
      return Path.Slice (Self.Servlet_Last + 1, Path.Length);
   end Get_Path_Info;

   ---------------------
   -- Get_Request_URL --
   ---------------------

   overriding function Get_Request_URL
    (Self : Abstract_HTTP_Servlet_Request) return League.IRIs.IRI is
   begin
      return Self.URL;
   end Get_Request_URL;

   ------------------------------
   -- Get_Requested_Session_Id --
   ------------------------------

   overriding function Get_Requested_Session_Id
    (Self : Abstract_HTTP_Servlet_Request)
       return League.Strings.Universal_String is
   begin
      if not Self.Data.Requested_Id_Computed then
         --  Obtain session identifier from the request.

         declare
            Cookie : constant Servlet.HTTP_Cookies.Cookie
              := Abstract_HTTP_Servlet_Request'Class (Self).Get_Cookies.Element
                  (League.Strings.To_Universal_String ("MSID"));

         begin
            if not Cookie.Is_Empty then
               Self.Data.Requested_Id := Cookie.Get_Value;
            end if;

            Self.Data.Requested_Id_Computed := True;
         end;
      end if;

      return Self.Data.Requested_Id;
   end Get_Requested_Session_Id;

   ----------------
   -- Get_Scheme --
   ----------------

   overriding function Get_Scheme
    (Self : Abstract_HTTP_Servlet_Request)
       return League.Strings.Universal_String is
   begin
      return Self.URL.Get_Scheme;
   end Get_Scheme;

   ---------------------
   -- Get_Server_Name --
   ---------------------

   overriding function Get_Server_Name
    (Self : Abstract_HTTP_Servlet_Request)
       return League.Strings.Universal_String is
   begin
      return Self.URL.Get_Host;
   end Get_Server_Name;

   ---------------------
   -- Get_Server_Port --
   ---------------------

   overriding function Get_Server_Port
    (Self : Abstract_HTTP_Servlet_Request) return Positive is
   begin
      return Self.URL.Get_Port;
   end Get_Server_Port;

   -------------------------
   -- Get_Servlet_Context --
   -------------------------

   overriding function Get_Servlet_Context
    (Self : Abstract_HTTP_Servlet_Request)
       return access Servlet.Contexts.Servlet_Context'Class is
   begin
      return Self.Context;
   end Get_Servlet_Context;

   ----------------------
   -- Get_Servlet_Path --
   ----------------------

   overriding function Get_Servlet_Path
    (Self : Abstract_HTTP_Servlet_Request)
       return League.String_Vectors.Universal_String_Vector is
   begin
      return
        Self.URL.Get_Path.Slice (Self.Context_Last + 1, Self.Servlet_Last);
   end Get_Servlet_Path;

   -----------------
   -- Get_Session --
   -----------------

   overriding function Get_Session
    (Self   : Abstract_HTTP_Servlet_Request;
     Create : Boolean := True)
       return access Servlet.HTTP_Sessions.HTTP_Session'Class is
   begin
      if Self.Data.Session /= null
        or else Self.Data.Session_Computed
      then
         --  Session was created or not needed to be created.

         return Self.Data.Session;
      end if;

      declare
         Identifier : constant League.Strings.Universal_String
           := Self.Get_Requested_Session_Id;

      begin
         --  Check whether session identifier was passed in HTTP cookie and
         --  attempt to reconstruct session.

         if Self.Session_Manager = null then
            --  XXX Suspicuous behavior should be reported: session manager is
            --  not setted up.

            null;

         elsif not Identifier.Is_Empty then
            --  Decode session identifier specified in request. Detect and
            --  report security event if this conversion fails.

            if Self.Session_Manager.Is_Session_Identifier_Valid
                (Identifier)
            then
               Self.Data.Session :=
                 Self.Session_Manager.Get_Session (Identifier);
               Self.Data.Session_Computed := True;

               if Self.Data.Session = null then
                  --  XXX Security event should be reported: SID unknown.

                  null;
               end if;

            else
               --  XXX Suspicuous behavior should be reported: SID has wrong
               --  format.

               null;
            end if;
         end if;
      end;

      --  Allocate new session when it was not specified in HTTP cookie or
      --  resolved.

      if Self.Data.Session = null
        and Self.Session_Manager /= null
        and Create
      then
         Self.Data.Session := Self.Session_Manager.New_Session;
      end if;

      return Self.Data.Session;
   end Get_Session;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self : in out Abstract_HTTP_Servlet_Request'Class;
     URL  : League.IRIs.IRI) is
   begin
      Self.URL  := URL;
      Self.Data := Self.Storage'Unchecked_Access;
   end Initialize;

   -----------------------------------
   -- Is_Requested_Session_Id_Valid --
   -----------------------------------

   overriding function Is_Requested_Session_Id_Valid
    (Self : Abstract_HTTP_Servlet_Request) return Boolean
   is
      use type League.Strings.Universal_String;

   begin
      return
        Self.Data.Requested_Id_Computed
          and then Self.Data.Session /= null
          and then Self.Data.Session.Get_Id = Self.Data.Requested_Id;
   end Is_Requested_Session_Id_Valid;

   ------------------------------
   -- Set_Context_Last_Segment --
   ------------------------------

   procedure Set_Context_Last_Segment
    (Self : in out Abstract_HTTP_Servlet_Request'Class;
     Last : Natural) is
   begin
      Self.Context_Last := Last;
   end Set_Context_Last_Segment;

   -------------------------
   -- Set_Servlet_Context --
   -------------------------

   procedure Set_Servlet_Context
    (Self    : in out Abstract_HTTP_Servlet_Request'Class;
     Context : Servlet.Contexts.Servlet_Context_Access) is
   begin
      Self.Context := Context;
   end Set_Servlet_Context;

   ------------------------------
   -- Set_Servlet_Last_Segment --
   ------------------------------

   procedure Set_Servlet_Last_Segment
    (Self : in out Abstract_HTTP_Servlet_Request'Class;
     Last : Natural) is
   begin
      Self.Servlet_Last := Last;
   end Set_Servlet_Last_Segment;

   -------------------------
   -- Set_Session_Manager --
   -------------------------

   procedure Set_Session_Manager
    (Self    : in out Abstract_HTTP_Servlet_Request'Class;
     Manager : Spikedog.HTTP_Session_Managers.HTTP_Session_Manager_Access) is
   begin
      Self.Session_Manager := Manager;
   end Set_Session_Manager;

end Matreshka.Servlet_HTTP_Requests;
