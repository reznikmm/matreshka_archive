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
--  This package provides interface types and registry for internal factories.
--  Every module should provide implementation of the interface type
--  Abstract_Module_Factory and one or more implementations of the interface
--  type Abstract_Metamodel_Factory to allow AMF to create elements and convert
--  data types.
------------------------------------------------------------------------------
with League.Strings;

with AMF.CMOF.Packages.Collections;
with AMF.Elements;
with AMF.Factories;

package AMF.Internals.Factories is

   pragma Preelaborate;

   ----------------------------
   -- Metamodel_Factory_Base --
   ----------------------------

   type Metamodel_Factory_Base is
     abstract limited new AMF.Factories.Factory with
   record
      Extent : AMF_Extent;
   end record;

   -----------------------------
   -- Abstract_Module_Factory --
   -----------------------------

   type Abstract_Module_Factory is limited interface;

   type Module_Factory_Access is access all Abstract_Module_Factory'Class;

   not overriding function To_Element
    (Self    : not null access constant Abstract_Module_Factory;
     Element : AMF.Internals.AMF_Element)
       return AMF.Elements.Element_Access is abstract;
   --  Converts internal element's identifier into element object.

   not overriding procedure Connect_Extent
    (Self    : not null access constant Abstract_Module_Factory;
     Element : AMF.Internals.AMF_Element;
     Extent  : AMF.Internals.AMF_Extent) is abstract;
   --  Connects element with extent.

   not overriding procedure Connect_Link_End
    (Self     : not null access constant Abstract_Module_Factory;
     Element  : AMF.Internals.AMF_Element;
     Property : AMF.Internals.CMOF_Element;
     Link     : AMF.Internals.AMF_Link;
     Other    : AMF.Internals.AMF_Element) is abstract;
   --  Connects link end with specified element:property.

   not overriding procedure Synchronize_Link_Set
    (Self     : not null access constant Abstract_Module_Factory;
     Element  : AMF.Internals.AMF_Element;
     Property : AMF.Internals.CMOF_Element;
     Link     : AMF.Internals.AMF_Link) is null;
   --  Creates required additional links to construct set of links.

   type Factory_Constructor is
     access function (Extent : AMF_Extent)
       return not null AMF.Factories.Factory_Access;

   procedure Register
    (The_Package : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Constructor : not null Factory_Constructor);
   --  Registers metamodel factory.

   procedure Register
    (Factory : not null Module_Factory_Access;
     Module  : out AMF_Metamodel);
   --  Registers module factory.

   function Create_Factory
    (URI    : League.Strings.Universal_String;
     Extent : AMF_Extent) return AMF.Factories.Factory_Access;
   --  Creates factory for the metamodel specified by URI and returns it.
   --  Returns null when metamodel is not registered.

   function Get_Factory
    (Metamodel : AMF.Internals.AMF_Metamodel) return Module_Factory_Access;
   --  Returns factory for the metamodel.

   function Get_Packages
     return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package;
   --  Returns packages for all registered factories.

end AMF.Internals.Factories;
