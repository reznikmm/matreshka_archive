------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Containers.Ordered_Maps;
with Ada.Containers.Vectors;
with League.Character_Sets;
with League.String_Vectors;
with League.Strings;
with Matreshka.Internals.Graphs;
with Matreshka.Internals.Regexps;

package Matreshka.Internals.Finite_Automatons is

   subtype State is Matreshka.Internals.Graphs.Node_Index;
   use type State;

   package Vectors is new Ada.Containers.Vectors
     (Index_Type   => Matreshka.Internals.Graphs.Edge_Identifier,
      Element_Type => League.Character_Sets.Universal_Character_Set,
      "="          => League.Character_Sets."=");

   subtype Rule_Index is Positive;

   package State_Maps is new Ada.Containers.Ordered_Maps
     (Key_Type     => State,
      Element_Type => Rule_Index);

   package Start_Maps is new Ada.Containers.Ordered_Maps
     (Key_Type     => League.Strings.Universal_String,
      Element_Type => State,
      "<"          => League.Strings."<");

   type DFA is limited record
      Start         : Start_Maps.Map;
      Graph         : Matreshka.Internals.Graphs.Graph;
      Edge_Char_Set : Vectors.Vector;
      Final         : State_Maps.Map;
   end record;

   type Rule_Index_Array is array (Positive range <>) of Rule_Index;

   type DFA_Constructor is tagged limited private;

   procedure Compile
     (Self    : in out DFA_Constructor;
      Start   : League.Strings.Universal_String;
      List    : League.String_Vectors.Universal_String_Vector;
      Actions : Rule_Index_Array);

   procedure Complete
     (Input  : in out DFA_Constructor;
      Output : out DFA);

   procedure Minimize (Self : in out DFA);

private

   type DFA_Constructor is tagged limited record
      Start         : Start_Maps.Map;
      Graph         : Matreshka.Internals.Graphs.Constructor.Graph;
      Edge_Char_Set : Vectors.Vector;
      Final         : State_Maps.Map;
   end record;

end Matreshka.Internals.Finite_Automatons;
