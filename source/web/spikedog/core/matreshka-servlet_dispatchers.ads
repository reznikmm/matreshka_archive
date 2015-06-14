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
-- Copyright © 2014-2015, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Containers.Hashed_Maps;

with League.String_Vectors;
with League.Strings.Hash;

with Matreshka.Servlet_HTTP_Requests;
with Matreshka.Servlet_Registrations;

package Matreshka.Servlet_Dispatchers is

   type Abstract_Dispatcher is limited interface;
   type Dispatcher_Access is access all Abstract_Dispatcher'Class;

   not overriding procedure Dispatch
    (Self         : not null access constant Abstract_Dispatcher;
     Request      : in out
       Matreshka.Servlet_HTTP_Requests.Abstract_HTTP_Servlet_Request'Class;
     Path         : League.String_Vectors.Universal_String_Vector;
     Index        : Positive;
     Servlet      : in out
       Matreshka.Servlet_Registrations.Servlet_Registration_Access)
       is abstract;
   --  Dispatches request. Path is full path and Index is segment of path that
   --  must be dispatched by the current dispatcher. Servlet parameter is set
   --  to servlet registration to process request. Request parameter is
   --  modified by setting of indices of context/servlet/path segments.

   type Context_Dispatcher is limited new Abstract_Dispatcher with private;

   procedure Add_Mapping
    (Self        : not null access Context_Dispatcher'Class;
     Servlet     :
       not null Matreshka.Servlet_Registrations.Servlet_Registration_Access;
     URL_Pattern : League.Strings.Universal_String;
     Success     : out Boolean);
   --  Adds mapping by parsing given URL_Pattern. Sets Success to True when
   --  mapping is added successfully. Sets Success to False when mapping is
   --  exists.

private

   package Dispatcher_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Dispatcher_Access,
           League.Strings.Hash,
           League.Strings."=");

   ------------------------
   -- Segment_Dispatcher --
   ------------------------

   --  Segment dispatcher dispatches request to one of children segments of
   --  path.

   type Segment_Dispatcher is limited new Abstract_Dispatcher with record
      Children : Dispatcher_Maps.Map;
   end record;

   overriding procedure Dispatch
    (Self         : not null access constant Segment_Dispatcher;
     Request      : in out
       Matreshka.Servlet_HTTP_Requests.Abstract_HTTP_Servlet_Request'Class;
     Path         : League.String_Vectors.Universal_String_Vector;
     Index        : Positive;
     Servlet      : in out
       Matreshka.Servlet_Registrations.Servlet_Registration_Access);

   ------------------------
   -- Servlet_Dispatcher --
   ------------------------

   --  Servlet dispatcher dispatches request to servlet checking for exact and
   --  longest path-prefix mappings.

   type Servlet_Dispatcher is new Segment_Dispatcher with record
      Exact_Servlet   :
        Matreshka.Servlet_Registrations.Servlet_Registration_Access;
      Mapping_Servlet :
        Matreshka.Servlet_Registrations.Servlet_Registration_Access;
   end record;

   overriding procedure Dispatch
    (Self         : not null access constant Servlet_Dispatcher;
     Request      : in out
       Matreshka.Servlet_HTTP_Requests.Abstract_HTTP_Servlet_Request'Class;
     Path         : League.String_Vectors.Universal_String_Vector;
     Index        : Positive;
     Servlet      : in out
       Matreshka.Servlet_Registrations.Servlet_Registration_Access);

   ------------------------
   -- Context_Dispatcher --
   ------------------------

   package Extension_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Matreshka.Servlet_Registrations.Servlet_Registration_Access,
           League.Strings.Hash,
           League.Strings."=",
           Matreshka.Servlet_Registrations."=");

   type Context_Dispatcher is limited new Segment_Dispatcher with record
      Root_Servlet       :
        Matreshka.Servlet_Registrations.Servlet_Registration_Access;
      Default_Servlet    :
        Matreshka.Servlet_Registrations.Servlet_Registration_Access;
      Extension_Servlets : Extension_Maps.Map;
   end record;

   overriding procedure Dispatch
    (Self         : not null access constant Context_Dispatcher;
     Request      : in out
       Matreshka.Servlet_HTTP_Requests.Abstract_HTTP_Servlet_Request'Class;
     Path         : League.String_Vectors.Universal_String_Vector;
     Index        : Positive;
     Servlet      : in out
       Matreshka.Servlet_Registrations.Servlet_Registration_Access);

end Matreshka.Servlet_Dispatchers;
