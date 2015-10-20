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

with Asis.Extensions.Flat_Kinds;

generic
   type Propert_Name is (<>);
   type Property_Type is private;
   type Abstract_Context;
package Engines.Generic_Engines is

   type Engine (Context : access Abstract_Context) is
     tagged limited private;

   function Get_Property
     (Self    : access Engine;
      Element : Asis.Element;
      Name    : Propert_Name) return Property_Type;

   function Get_Property
     (Self    : access Engine;
      List    : Asis.Element_List;
      Name    : Propert_Name;
      Empty   : Property_Type;
      Sum     : access
        function (Left, Right : Property_Type) return Property_Type)
      return Property_Type;

   procedure Register_Calculator
     (Self   : in out Engine;
      Kind   : Asis.Extensions.Flat_Kinds.Flat_Element_Kinds;
      Name   : Propert_Name;
      Action : access function
        (Engine  : access Abstract_Context;
         Element : Asis.Element;
         Name    : Propert_Name) return Property_Type);

private

   type Property_Key is record
      Element : Asis.Element;
      Name    : Propert_Name;
   end record;

   function Hash (Value : Property_Key) return Ada.Containers.Hash_Type;
   overriding function "=" (Left, Right : Property_Key) return Boolean;

   package Property_Maps is new Ada.Containers.Hashed_Maps
     (Key_Type        => Property_Key,
      Element_Type    => Property_Type,
      Hash            => Hash,
      Equivalent_Keys => "=",
      "="             => "=");

   type Action_Key is record
      Kind : Asis.Extensions.Flat_Kinds.Flat_Element_Kinds;
      Name : Propert_Name;
   end record;

   function Hash (Value : Action_Key) return Ada.Containers.Hash_Type;

   type Action_Callback is access function
     (Engine  : access Abstract_Context;
      Element : Asis.Element;
      Name    : Propert_Name) return Property_Type;

   package Action_Maps is new Ada.Containers.Hashed_Maps
     (Key_Type        => Action_Key,
      Element_Type    => Action_Callback,
      Hash            => Hash,
      Equivalent_Keys => "=",
      "="             => "=");

   type Engine (Context : access Abstract_Context) is tagged limited
   record
      Property_Cache : Property_Maps.Map;
      Actions        : Action_Maps.Map;
   end record;

end Engines.Generic_Engines;
