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
-- Copyright © 2014-2021, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Unchecked_Deallocation;

package body Matreshka.Servlet_Dispatchers is

   use type Matreshka.Servlet_Registrations.Servlet_Registration_Access;

   Solidus            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("/");
   Asterisk_Full_Stop : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("*.");
   Solidus_Asterisk   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("/*");

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Abstract_Dispatcher'Class, Dispatcher_Access);

   -----------------
   -- Add_Mapping --
   -----------------

   procedure Add_Mapping
    (Self        : not null access Context_Dispatcher'Class;
     Servlet     :
       not null Matreshka.Servlet_Registrations.Servlet_Registration_Access;
     URL_Pattern : League.Strings.Universal_String;
     Success     : out Boolean)
   is
      use type League.Strings.Universal_String;

   begin
      Success := False;

      if URL_Pattern.Is_Empty then
         --  Exact map to application's context root.

         if Self.Root_Servlet = null then
            Self.Root_Servlet := Servlet;
            Success := True;
         end if;

      elsif URL_Pattern = Solidus then
         --  "Default" servlet of the application.

         if Self.Default_Servlet = null then
            Self.Default_Servlet := Servlet;
            Success := True;
         end if;

      elsif URL_Pattern.Starts_With (Asterisk_Full_Stop) then
         --  Extension mapping.

         declare
            Extension : constant League.Strings.Universal_String
              := URL_Pattern.Tail_From (3);

         begin
            if not Extension.Is_Empty
              and then Extension.Index ('.') = 0
              and then not Self.Extension_Servlets.Contains (Extension)
            then
               --  Extension should not be empty string, extension should not
               --  contains '.' character and should not be mapped already.

               Self.Extension_Servlets.Insert (Extension, Servlet);
               Success := True;
            end if;
         end;

      elsif URL_Pattern.Starts_With (Solidus) then
         --  Path mapping.

         declare
            Is_Pattern : constant Boolean
              := URL_Pattern.Ends_With (Solidus_Asterisk);
            URL        : constant League.Strings.Universal_String
              := (if Is_Pattern
                    then URL_Pattern.Head (URL_Pattern.Length - 2)
                    else URL_Pattern);
            Path       : League.String_Vectors.Universal_String_Vector
              := URL.Split ('/', League.Strings.Skip_Empty);
            Index      : Positive          := 1;
            Current    : Dispatcher_Access;
            Parent     : Dispatcher_Access := Self.all'Unchecked_Access;
            Aux        : Dispatcher_Access;
            Position   : Dispatcher_Maps.Cursor;

         begin
            if URL_Pattern.Ends_With (Solidus) then
               Path.Append (League.Strings.Empty_Universal_String);
            end if;

            loop
               Position :=
                 Segment_Dispatcher'Class
                  (Parent.all).Children.Find (Path (Index));

               if Dispatcher_Maps.Has_Element (Position) then
                  Current := Dispatcher_Maps.Element (Position);

               else
                  --  Current segment of path is not mapped to dispatcher,
                  --  allocate new dispatcher.

                  if Index = Path.Length then
                     Current := new Servlet_Dispatcher;

                  else
                     Current := new Segment_Dispatcher;
                  end if;

                  Segment_Dispatcher'Class
                   (Parent.all).Children.Insert (Path (Index), Current);
               end if;

               if Index = Path.Length then
                  if Current.all not in Servlet_Dispatcher'Class then
                     --  Change type of current dispatcher to servant
                     --  dispatcher.

                     Aux := Current;
                     Current :=
                       new Servlet_Dispatcher'
                            (Children =>
                               Segment_Dispatcher'Class (Aux.all).Children,
                             others => <>);
                     Segment_Dispatcher'Class
                      (Parent.all).Children.Replace_Element (Position, Current);
                     Free (Aux);
                  end if;

                  if Is_Pattern then
                     if Servlet_Dispatcher'Class (Current.all).Mapping_Servlet
                          = null 
                     then
                        Servlet_Dispatcher'Class
                         (Current.all).Mapping_Servlet := Servlet;
                        Success := True;
                     end if;

                  else
                     if Servlet_Dispatcher'Class (Current.all).Exact_Servlet
                          = null
                     then
                        Servlet_Dispatcher'Class
                         (Current.all).Exact_Servlet := Servlet;
                        Success := True;
                     end if;
                  end if;

                  exit;
               end if;

               --  Go to next segment.

               Parent   := Current;
               Current  := null;
               Index    := Index + 1;
               Position := Dispatcher_Maps.No_Element;
            end loop;
         end;
      end if;
   end Add_Mapping;

   --------------
   -- Dispatch --
   --------------

   overriding procedure Dispatch
    (Self         : not null access constant Context_Dispatcher;
     Request      : in out
       Matreshka.Servlet_HTTP_Requests.Abstract_HTTP_Servlet_Request'Class;
     Path         : League.String_Vectors.Universal_String_Vector;
     Index        : Positive;
     Servlet      : in out
       Matreshka.Servlet_Registrations.Servlet_Registration_Access)
   is
      Servlet_Found : Boolean := False;
      --  Sets to True when servlet is found by this subprogram, but not by
      --  call to inherited one.

   begin
      if Path.Length < Index
        or (Path.Length = Index and Path (Index).Is_Empty)
      then
         --  Exact match of root, use root servlet when available; otherwise
         --  use default servlet.

         if Self.Root_Servlet /= null then
            Servlet := Self.Root_Servlet;
            Servlet_Found := True;

         elsif Self.Default_Servlet /= null then
            Servlet := Self.Default_Servlet;
            Servlet_Found := True;
         end if;

      else
         --  Call inherited subprogram to lookup exact servlet or longest
         --  path-prefix.

         Segment_Dispatcher
          (Self.all).Dispatch (Request, Path, Index, Servlet);

         if Servlet = null then
            --  Lookup servlet using extension mapping.

            declare
               Last_Segment       : constant League.Strings.Universal_String
                 := Path (Path.Length);
               Full_Stop_Position : constant Natural
                 := Last_Segment.Last_Index ('.');
               Position           : constant Extension_Maps.Cursor
                 := (if Full_Stop_Position /= 0
                       then Self.Extension_Servlets.Find
                             (Last_Segment.Tail_From (Full_Stop_Position + 1))
                       else Extension_Maps.No_Element);

            begin
               if Extension_Maps.Has_Element (Position) then
                  Servlet := Extension_Maps.Element (Position);
                  Servlet_Found := True;
               end if;
            end;
         end if;

         if Servlet = null then
            --  Use application's default servlet.

            Servlet := Self.Default_Servlet;
            Servlet_Found := True;
         end if;
      end if;

      --  Set indices of last segment of context and servlet paths.

      if Servlet /= null then
         Request.Set_Context_Last_Segment (Index - 1);

         if Servlet_Found then
            Request.Set_Servlet_Last_Segment (Index - 1);
         end if;
      end if;
   end Dispatch;

   --------------
   -- Dispatch --
   --------------

   overriding procedure Dispatch
    (Self         : not null access constant Segment_Dispatcher;
     Request      : in out
       Matreshka.Servlet_HTTP_Requests.Abstract_HTTP_Servlet_Request'Class;
     Path         : League.String_Vectors.Universal_String_Vector;
     Index        : Positive;
     Servlet      : in out
       Matreshka.Servlet_Registrations.Servlet_Registration_Access) is
   begin
      if Path.Length < Index then
         --  Looked path is exactly what this (simple) dispatcher handles.
         --  Request for this path should be processed in another way by one of
         --  parent dispatchers.

         null;

      else
         declare
            Position : constant Dispatcher_Maps.Cursor
              := Self.Children.Find (Path (Index));

         begin
            if Dispatcher_Maps.Has_Element (Position) then
               Dispatcher_Maps.Element (Position).Dispatch
                (Request, Path, Index + 1, Servlet);
            end if;
         end;
      end if;
   end Dispatch;

   --------------
   -- Dispatch --
   --------------

   overriding procedure Dispatch
    (Self         : not null access constant Servlet_Dispatcher;
     Request      : in out
       Matreshka.Servlet_HTTP_Requests.Abstract_HTTP_Servlet_Request'Class;
     Path         : League.String_Vectors.Universal_String_Vector;
     Index        : Positive;
     Servlet      : in out
       Matreshka.Servlet_Registrations.Servlet_Registration_Access) is
   begin
      if Path.Length < Index then
         --  Exact match, use exact match servlet when available.

         if Self.Exact_Servlet /= null then
            Servlet := Self.Exact_Servlet;
            Request.Set_Servlet_Last_Segment (Index - 1);
         end if;

      else
         --  Call inherited subprogram to lookup exact servlet or longest
         --  path-prefix.

         Segment_Dispatcher (Self.all).Dispatch
          (Request, Path, Index, Servlet);
      end if;

      if Servlet = null then
         --  Exact or longest path-prefix servlet was not found; use path
         --  mapping servlet when available for current path-prefix.

         if Self.Mapping_Servlet /= null then
            Servlet := Self.Mapping_Servlet;
            Request.Set_Servlet_Last_Segment (Index - 1);
         end if;
      end if;
   end Dispatch;

end Matreshka.Servlet_Dispatchers;
