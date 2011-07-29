------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package provides implementation of SAX EntityResolver interface
--  to use XML Catalogs to resolve entities.
------------------------------------------------------------------------------
with League.Strings;
with XML.SAX.Entity_Resolvers;
with XML.SAX.Input_Sources;

package XML.Catalogs.Entity_Resolvers is

   pragma Preelaborate;

   type Catalogs_Entity_Resolver is
     limited new XML.SAX.Entity_Resolvers.SAX_Entity_Resolver with private;

   overriding function Error_String
    (Self : Catalogs_Entity_Resolver) return League.Strings.Universal_String;
   --  The reader calls this function to get an error string, e.g. if any of
   --  the handler subprograms sets Success to False.

   overriding procedure Resolve_Entity
    (Self      : in out Catalogs_Entity_Resolver;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     Base_URI  : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Source    : out XML.SAX.Input_Sources.SAX_Input_Source_Access;
     Success   : in out Boolean);
   --  The reader calls this function before it opens any external entity,
   --  except the top-level document entity. The application may request the
   --  reader to resolve the entity itself (by setting Source to null) or to
   --  use an entirely different input source (by setting Source to the input
   --  source).
   --
   --  The reader deletes the input source Source when it no longer needs it,
   --  so you should allocate it on the heap with new.
   --
   --  The argument Name is a name of the entity. "[dtd]" is used as for name
   --  of the external subset; names of parameter entities start with '%'.
   --  The argument Public_Id is the public identifier of the external entity.
   --  Base_URI is the URI with respect to which relative System_IDs are
   --  interpreted. System_Id is the system identifier of the external entity.
   --  Source is the return value. If Source is null the reader should resolve
   --  the entity itself, if it is non-zero it must point to an input source
   --  which the reader uses instead.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

private

   type Catalogs_Entity_Resolver is
     limited new XML.SAX.Entity_Resolvers.SAX_Entity_Resolver with null record;

end XML.Catalogs.Entity_Resolvers;
