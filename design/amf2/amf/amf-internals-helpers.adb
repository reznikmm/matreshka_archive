------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
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
with Interfaces;

with AMF.Internals.Elements;
with AMF.Internals.Factories;

package body AMF.Internals.Helpers is

   subtype U32 is Interfaces.Unsigned_32;
   use type U32;
   --  XXX Interfaces.Unsigned_32 used only till AMF_Element isn't declared as
   --  modular type.

   --------------------
   -- Connect_Extent --
   --------------------

   procedure Connect_Extent (Element : AMF_Element; Extent : AMF_Extent) is
   begin
      AMF.Internals.Factories.Get_Factory
       (AMF_Metamodel (U32 (Element) / 16#01000000#)).Connect_Extent
         (Element, Extent);
   end Connect_Extent;

   ----------------------
   -- Connect_Link_End --
   ----------------------

   procedure Connect_Link_End
    (Element  : AMF_Element;
     Property : CMOF_Element;
     Link     : AMF_Link;
     Other    : AMF_Element) is
   begin
      AMF.Internals.Factories.Get_Factory
       (AMF_Metamodel (U32 (Element) / 16#01000000#)).Connect_Link_End
         (Element, Property, Link, Other);
   end Connect_Link_End;

   ----------------
   -- Get_Extent --
   ----------------

   function Get_Extent (Element : AMF_Element) return AMF_Extent is
   begin
      return
        AMF.Internals.Factories.Get_Factory
         (AMF_Metamodel (U32 (Element) / 16#01000000#)).Get_Extent (Element);
   end Get_Extent;

   ----------------
   -- To_Element --
   ----------------

   function To_Element
    (Element : AMF_Element) return AMF.Elements.Element_Access is
   begin
      if (U32 (Element) and 16#00FFFFFF#) = 0 then
         --  First element in every metamodel is null element.

         return null;

      else
         return
           AMF.Internals.Factories.Get_Factory
            (AMF_Metamodel (U32 (Element) / 16#01000000#)).To_Element
              (Element);
      end if;
   end To_Element;

   ----------------
   -- To_Element --
   ----------------

   function To_Element
    (Element : access AMF.Elements.Abstract_Element'Class) return AMF_Element
   is
      use type AMF.Elements.Element_Access;

   begin
      if Element = null then
         return 0;

      else
         return
           AMF.Internals.Elements.Element_Implementation'Class
            (Element.all).Element;
      end if;
   end To_Element;

end AMF.Internals.Helpers;
