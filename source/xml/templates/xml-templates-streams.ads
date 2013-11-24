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
with Ada.Containers.Vectors;

with League.Strings;
with XML.SAX.Attributes;

package XML.Templates.Streams is

   pragma Preelaborate;

   type XML_Stream_Element_Kinds is
    (Empty,
     Text,
     Start_Element,
     End_Element,
     Start_Prefix_Mapping,
     End_Prefix_Mapping,
     Processing_Instruction,
     Comment,
     Start_CDATA,
     End_CDATA,
     Start_DTD,
     End_DTD);

   type XML_Stream_Element (Kind : XML_Stream_Element_Kinds := Empty) is record
      case Kind is
         when Text | Comment =>
            Text : League.Strings.Universal_String;

         when Start_Element | End_Element =>
            Namespace_URI  : League.Strings.Universal_String;
            Local_Name     : League.Strings.Universal_String;
            Qualified_Name : League.Strings.Universal_String;

            case Kind is
               when Start_Element =>
                  Attributes : XML.SAX.Attributes.SAX_Attributes;

               when others =>
                  null;
            end case;

         when Start_Prefix_Mapping | End_Prefix_Mapping =>
            Prefix : League.Strings.Universal_String;

            case Kind is
               when Start_Prefix_Mapping =>
                  Mapped_Namespace_URI : League.Strings.Universal_String;

               when others =>
                  null;
            end case;

         when Processing_Instruction =>
            Target : League.Strings.Universal_String;
            Data   : League.Strings.Universal_String;

         when Start_DTD =>
            Name : League.Strings.Universal_String;
            Public_Id : League.Strings.Universal_String;
            System_Id : League.Strings.Universal_String;

         when End_DTD | Start_CDATA | End_CDATA | Empty =>
            null;
      end case;
   end record;

   package XML_Stream_Element_Vectors is
     new Ada.Containers.Vectors (Positive, XML_Stream_Element);

end XML.Templates.Streams;
