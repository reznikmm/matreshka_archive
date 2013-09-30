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
private with Ada.Containers.Hashed_Maps;
private with Ada.Containers.Vectors;
private with Ada.Finalization;

with League.String_Vectors;
with League.Strings;
private with League.Strings.Hash;

package XML.Utilities.Namespace_Supports is

   pragma Preelaborate;

   type XML_Namespace_Support is tagged private;

   type Component_Kinds is (Attribute, Element);

   --  Process_Name

   procedure Declare_Prefix
    (Self          : in out XML_Namespace_Support'Class;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String);
   --  This procedure declares a prefix in the future namespace context to be
   --  namespace uri. The prefix is activated then context is pushed and
   --  remains in force until this context is popped, unless it is shadowed in
   --  a descendant context.

   function Namespace_URI
    (Self      : XML_Namespace_Support'Class;
     Prefix    : League.Strings.Universal_String;
     Component : Component_Kinds := Element)
       return League.Strings.Universal_String;
   --  Looks up the prefix prefix in the current context and returns the
   --  currently-mapped namespace URI. Use the empty string ("") for the
   --  default namespace.

   function Prefix
    (Self          : XML_Namespace_Support'Class;
     Namespace_URI : League.Strings.Universal_String;
     Component     : Component_Kinds := Element)
       return League.Strings.Universal_String;
   --  Returns one of the prefixes mapped to the namespace URI.
   --
   --  If more than one prefix is currently mapped to the same URI, this method
   --  will make an arbitrary selection; if you want all of the prefixes, use
   --  the Prefixes function instead.
   --
   --  This function return the empty (default) prefix only for Element
   --  component.

   function Prefixes
    (Self      : XML_Namespace_Support'Class;
     Component : Component_Kinds := Element)
       return League.String_Vectors.Universal_String_Vector;
   --  Return an enumeration of all prefixes declared in this context. The
   --  'xml:' prefix will be included.
   --
   --  The empty (default) prefix will be included in this enumeration; then
   --  specified component is Element.

   function Prefixes
    (Self          : XML_Namespace_Support'Class;
     Namespace_URI : League.Strings.Universal_String;
     Component     : Component_Kinds := Element)
       return League.String_Vectors.Universal_String_Vector;
   --  Return an enumeration of all prefixes for a given URI whose declarations
   --  are active in the current context. This includes declarations from
   --  parent contexts that have not been overridden.
   --
   --  The empty (default) prefix will be included in this enumeration; then
   --  specified component is Element.

   procedure Process_Name
    (Self           : XML_Namespace_Support'Class;
     Qualified_Name : League.Strings.Universal_String;
     Component      : Component_Kinds;
     Namespace_URI  : out League.Strings.Universal_String;
     Local_Name     : out League.Strings.Universal_String);
   --  Process a raw XML qualified name, after all declarations in the current
   --  context.
   --
   --  Note that attribute names are processed differently than element names:
   --  an unprefixed element name will receive the default Namespace (if any),
   --  while an unprefixed attribute name will not.

   procedure Pop_Context (Self : in out XML_Namespace_Support'Class);
   --  Revert to the previous Namespace context.
   --
   --  Normally, you should pop the context at the end of each XML element.
   --  After popping the context, all Namespace prefix mappings that were
   --  previously in force are restored.
   --
   --  You must not attempt to declare additional Namespace prefixes after
   --  popping a context, unless you push another context first.

   procedure Push_Context (Self : in out XML_Namespace_Support'Class);
   --  Starts a new namespace context.
   --
   --  Normally, you should push a new context at the beginning of each XML
   --  element: the new context automatically inherits the declarations of its
   --  parent context, and it also keeps track of which declarations were made
   --  within this context.
   --
   --  The namespace support object always starts with a base context already
   --  in force: in this context, only the "xml" prefix is declared.

   procedure Reset (Self : in out XML_Namespace_Support'Class);
   --  Reset this Namespace support object for reuse.
   --
   --  It is necessary to invoke this method before reusing the Namespace
   --  support object for a new session.

private

   package String_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           League.Strings.Universal_String,
           League.Strings.Hash,
           League.Strings."=",
           League.Strings."=");

   type Context is record
      Prefix        : String_Maps.Map;
      Namespace_URI : String_Maps.Map;
   end record;

   package Context_Vectors is
     new Ada.Containers.Vectors (Positive, Context);

   type XML_Namespace_Support is new Ada.Finalization.Controlled with record
      Current : Context;
      Future  : Context;
      Stack   : Context_Vectors.Vector;
   end record;

   overriding procedure Initialize (Self : in out XML_Namespace_Support);
   --  Define default prefix mapping.

end XML.Utilities.Namespace_Supports;
