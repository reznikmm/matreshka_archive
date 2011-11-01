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
--  This package provides interface type and registry for internal factories.
--  Every metamodel should provide implementation of the interface type to
--  allow AMF to create elements and convert data types.
------------------------------------------------------------------------------
with Ada.Containers.Hashed_Maps;

with League.Strings.Hash;

package body AMF.Internals.Factories is

   package Universal_String_Factory_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Factory_Access,
           League.Strings.Hash,
           League.Strings."=");

   URI_Registry       : Universal_String_Factory_Maps.Map;
   Metamodel_Registry : array (AMF.Internals.AMF_Metamodel) of Factory_Access;

   -----------------
   -- Get_Factory --
   -----------------

   function Get_Factory
    (URI : League.Strings.Universal_String) return Factory_Access
   is
      Position : Universal_String_Factory_Maps.Cursor
        := URI_Registry.Find (URI);

   begin
      if Universal_String_Factory_Maps.Has_Element (Position) then
         return Universal_String_Factory_Maps.Element (Position);

      else
         return null;
      end if;
   end Get_Factory;

   -----------------
   -- Get_Factory --
   -----------------

   function Get_Factory
    (Metamodel : AMF.Internals.AMF_Metamodel) return Factory_Access is
   begin
      return Metamodel_Registry (Metamodel);
   end Get_Factory;

   --------------
   -- Register --
   --------------

   procedure Register (Factory : not null Factory_Access) is
   begin
      URI_Registry.Insert (Factory.Get_Package.Get_URI.Value, Factory);
      Metamodel_Registry (Factory.Get_Metamodel) := Factory;
   end Register;

   ----------------------
   -- Set_CMOF_Factory --
   ----------------------

   procedure Set_CMOF_Factory (Factory : not null Factory_Access) is
   begin
      Metamodel_Registry (Factory.Get_Metamodel) := Factory;
   end Set_CMOF_Factory;

end AMF.Internals.Factories;
