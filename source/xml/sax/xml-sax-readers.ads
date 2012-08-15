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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  Abstract interface of XML reader.
------------------------------------------------------------------------------
with League.Strings;
with XML.SAX.Content_Handlers;
with XML.SAX.Declaration_Handlers;
with XML.SAX.DTD_Handlers;
with XML.SAX.Entity_Resolvers;
with XML.SAX.Error_Handlers;
with XML.SAX.Lexical_Handlers;

package XML.SAX.Readers is

   pragma Preelaborate;

   type SAX_Content_Handler_Access is
     access all XML.SAX.Content_Handlers.SAX_Content_Handler'Class;
   type SAX_Declaration_Handler_Access is
     access all XML.SAX.Declaration_Handlers.SAX_Declaration_Handler'Class;
   type SAX_DTD_Handler_Access is
     access all XML.SAX.DTD_Handlers.SAX_DTD_Handler'Class;
   type SAX_Error_Handler_Access is
     access all XML.SAX.Error_Handlers.SAX_Error_Handler'Class;
   type SAX_Lexical_Handler_Access is
     access all XML.SAX.Lexical_Handlers.SAX_Lexical_Handler'Class;
   type SAX_Entity_Resolver_Access is
     access all XML.SAX.Entity_Resolvers.SAX_Entity_Resolver'Class;

   type SAX_Reader is limited interface;

   not overriding function Content_Handler
    (Self : not null access constant SAX_Reader)
       return SAX_Content_Handler_Access is abstract;
   --  Returns the current content handler, or null if none has been
   --  registered.

   not overriding function Declaration_Handler
    (Self : not null access constant SAX_Reader)
       return SAX_Declaration_Handler_Access is abstract;
   --  Returns the current declaration handler, or null if has not been
   --  registered.

   not overriding function DTD_Handler
    (Self : not null access constant SAX_Reader)
       return SAX_DTD_Handler_Access is abstract;
   --  Returns the current DTD handler, or null if none has been registered.

   not overriding function Entity_Resolver
    (Self : not null access constant SAX_Reader)
       return SAX_Entity_Resolver_Access is abstract;
   --  Returns the current entity resolver, or null if none has been
   --  registered.

   not overriding function Error_Handler
    (Self : not null access constant SAX_Reader)
       return SAX_Error_Handler_Access is abstract;
   --  Returns the current error handler, or null if none has been registered.

   not overriding function Feature
    (Self : not null access constant SAX_Reader;
     Name : League.Strings.Universal_String)
       return Boolean is abstract;
   --  Look up the value of a feature flag. Returns value of the feature or
   --  false if feature is not recognized or not acceptable at this time.
   --
   --  The feature name is any fully-qualified URI. It is possible for an
   --  XMLReader to recognize a feature name but temporarily be unable to
   --  return its value. Some feature values may be available only in specific
   --  contexts, such as before, during, or after a parse. Also, some feature
   --  values may not be programmatically accessible.
   --
   --  All Readers are required to recognize the
   --  http://xml.org/sax/features/namespaces and the
   --  http://xml.org/sax/features/namespace-prefixes feature names.

   not overriding function Has_Feature
    (Self : not null access constant SAX_Reader;
     Name : League.Strings.Universal_String)
       return Boolean is abstract;
   --  Returns True if the reader has the feature called Name; otherwise
   --  returns False.

   not overriding function Lexical_Handler
    (Self : not null access constant SAX_Reader)
       return SAX_Lexical_Handler_Access is abstract;
   --  Returns the current lexical handler, or null if none has been
   --  registered.

   not overriding procedure Set_Content_Handler
    (Self    : not null access SAX_Reader;
     Handler : SAX_Content_Handler_Access) is abstract;

   not overriding procedure Set_Declaration_Handler
    (Self    : not null access SAX_Reader;
     Handler : SAX_Declaration_Handler_Access) is abstract;

   not overriding procedure Set_DTD_Handler
    (Self    : not null access SAX_Reader;
     Handler : SAX_DTD_Handler_Access) is abstract;

   not overriding procedure Set_Entity_Resolver
    (Self     : not null access SAX_Reader;
     Resolver : SAX_Entity_Resolver_Access) is abstract;

   not overriding procedure Set_Error_Handler
    (Self    : not null access SAX_Reader;
     Handler : SAX_Error_Handler_Access) is abstract;

   not overriding procedure Set_Feature
    (Self  : not null access SAX_Reader;
     Name  : League.Strings.Universal_String;
     Value : Boolean) is abstract;
   --  Set the value of a feature flag.
   --
   --  The feature name is any fully-qualified URI. It is possible for an
   --  XMLReader to expose a feature value but to be unable to change the
   --  current value. Some feature values may be immutable or mutable only in
   --  specific contexts, such as before, during, or after a parse.
   --
   --  All XMLReaders are required to support setting
   --  http://xml.org/sax/features/namespaces to true and
   --  http://xml.org/sax/features/namespace-prefixes to false.

   not overriding procedure Set_Lexical_Handler
    (Self    : not null access SAX_Reader;
     Handler : SAX_Lexical_Handler_Access) is abstract;

end XML.SAX.Readers;
