------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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

with Asis.Elements;

with League.Strings;

with Engines.Generic_Engines;

package Engines.Contexts is

   type Context;

   package Text_Engines is new Generic_Engines
     (Propert_Name     => Text_Property,
      Property_Type    => League.Strings.Universal_String,
      Abstract_Context => Context);

   package Boolean_Engines is new Generic_Engines
     (Propert_Name     => Boolean_Property,
      Property_Type    => Boolean,
      Abstract_Context => Context);

   package Integer_Engines is new Generic_Engines
     (Propert_Name     => Integer_Property,
      Property_Type    => Integer,
      Abstract_Context => Context);

   package Call_Convention_Engines is new Generic_Engines
     (Propert_Name     => Convention_Property,
      Property_Type    => Convention_Kind,
      Abstract_Context => Context);

   package Uniques is

      type Unique_Map is tagged private;

      function Get
        (Self : access Unique_Map;
         Element : Asis.Element;
         Prefix  : Wide_Wide_String := "")
         return League.Strings.Universal_String;

   private
      function Hash (Item : Asis.Element) return Ada.Containers.Hash_Type;

      package Maps is new Ada.Containers.Hashed_Maps
        (Key_Type        => Asis.Element,
         Element_Type    => Positive,
         Hash            => Hash,
         Equivalent_Keys => Asis.Elements.Is_Equal,
         "="             => "=");

      type Unique_Map is new Maps.Map with null record;

   end Uniques;

   type Context is tagged limited record
      Text            : aliased Text_Engines.Engine (Context'Unchecked_Access);
      Boolean         : aliased Boolean_Engines.Engine
        (Context'Unchecked_Access);
      Integer         : aliased Integer_Engines.Engine
        (Context'Unchecked_Access);
      Call_Convention : aliased Call_Convention_Engines.Engine
        (Context'Unchecked_Access);
      Unique          : aliased Uniques.Unique_Map;
   end record;

end Engines.Contexts;
