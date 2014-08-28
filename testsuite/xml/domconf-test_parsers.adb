------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                            Testsuite Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body DOMConf.Test_Parsers is

   Test_URI : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/2001/DOM-Test-Suite/Level-2");

   Attributes_Tag                  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("attributes");
   Assert_Equals_Tag               : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("assertEquals");
   Get_Elements_By_Tag_Name_NS_Tag : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("getElementsByTagNameNS");
   Get_Named_Item_NS_Tag : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("getNamedItemNS");
   Implementation_Attribute_Tag    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("implementationAttribute");
   Item_Tag                        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("item");
   Load_Tag                        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("load");
   Metadata_Tag                    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("metadata");
   Node_Name_Tag                   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("nodeName");
   Owner_Element_Tag               : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("ownerElement");
   Test_Tag                        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("test");
   Var_Tag                         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("var");

   Name_Attribute : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("name");

   Namespace_Aware_Value : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("namespaceAware");
   Validating_Value      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("validating");

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out Test_Parser;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean) is
   begin
      if Self.Ignore /= 0 then
         Self.Ignore := Self.Ignore - 1;
      end if;
   end End_Element;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Test_Parser) return League.Strings.Universal_String is
   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Test_Parser;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
      use type League.Strings.Universal_String;
      Value : League.Strings.Universal_String;

   begin
      if Self.Ignore /= 0 then
         Self.Ignore := Self.Ignore + 1;

      elsif Namespace_URI = Test_URI then
         if Local_Name = Attributes_Tag then
            null;

         elsif Local_Name = Assert_Equals_Tag then
            null;

         elsif Local_Name = Get_Elements_By_Tag_Name_NS_Tag then
            null;

         elsif Local_Name = Get_Named_Item_NS_Tag then
            null;

         elsif Local_Name = Item_Tag then
            null;

         elsif Local_Name = Implementation_Attribute_Tag then
            Value := Attributes.Value (Name_Attribute);

            if Value = Namespace_Aware_Value then
               null;

            elsif Value = Validating_Value then
--               raise Program_Error;
               null;
               
            else
               raise Program_Error
                 with "Unsupported implementation attribute '"
                        & Value.To_UTF_8_String & ''';
            end if;

         elsif Local_Name = Load_Tag then
            null;

         elsif Local_Name = Metadata_Tag then
            Self.Ignore := 1;

         elsif Local_Name = Node_Name_Tag then
            null;

         elsif Local_Name = Owner_Element_Tag then
            null;

         elsif Local_Name = Test_Tag then
            null;

         elsif Local_Name = Var_Tag then
            null;

         else
            raise Program_Error
              with "Unsupported tag '" & Local_Name.To_UTF_8_String & ''';
         end if;

      else
         raise Program_Error;
      end if;
   end Start_Element;

end DOMConf.Test_Parsers;
