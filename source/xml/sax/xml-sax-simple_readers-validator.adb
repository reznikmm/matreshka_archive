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
-- Copyright © 2012-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with XML.SAX.Simple_Readers.Callbacks;

package body XML.SAX.Simple_Readers.Validator is

   use Matreshka.Internals.XML;
   use Matreshka.Internals.XML.Element_Tables;

   ----------------------
   -- Validate_Element --
   ----------------------

   procedure Validate_Element (Self : in out Simple_Reader'Class) is
      use type Ada.Containers.Count_Type;

   begin
      if Self.Validation.Enabled and Self.Validation.Has_DTD then
         if Self.Element_Names.Length = 1 then
            --  Check whether root element match declared element type.

            if Self.Root_Symbol /= Self.Current_Element_Name then
               --  [2.8 VC: Root Element Type]
               --
               --  "The Name in the document type declaration MUST match the
               --  element type of the root element."

               Callbacks.Call_Error
                (Self,
                 League.Strings.To_Universal_String
                  ("[2.8 VC: Root Element Type] Root element has wrong name"));
            end if;
         end if;

         --  [XML 3 VC: Element Valid]
         --
         --  "An element is valid if there is a declaration matching
         --  elementdecl where the Name matches the element type, ..."
         --
         --  Check whether element was declared.

         if Self.Current_Element = No_Element
              or else not Is_Declared (Self.Elements, Self.Current_Element)
         then
            Callbacks.Call_Error
             (Self,
              League.Strings.To_Universal_String
               ("[XML 3 VC: Element Valid] no declaration for element"));
         end if;
      end if;
   end Validate_Element;

end XML.SAX.Simple_Readers.Validator;
