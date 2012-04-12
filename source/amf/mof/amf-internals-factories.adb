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
with Ada.Containers.Hashed_Maps;

with League.Strings.Hash;

package body AMF.Internals.Factories is

   package Universal_String_Factory_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Factory_Constructor,
           League.Strings.Hash,
           League.Strings."=");

   URI_Registry    : Universal_String_Factory_Maps.Map;
   Packages        : AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package;
   Module_Registry :
     array (AMF.Internals.AMF_Metamodel) of Module_Factory_Access;
   Last_Module     : AMF_Metamodel := 0;

   --------------------
   -- Create_Factory --
   --------------------

   function Create_Factory
    (URI    : League.Strings.Universal_String;
     Extent : AMF_Extent) return AMF.Factories.Factory_Access
   is
      Position : constant Universal_String_Factory_Maps.Cursor
        := URI_Registry.Find (URI);

   begin
      if Universal_String_Factory_Maps.Has_Element (Position) then
         return Universal_String_Factory_Maps.Element (Position) (Extent);

      else
         return null;
      end if;
   end Create_Factory;

   -----------------
   -- Get_Factory --
   -----------------

   function Get_Factory
    (Metamodel : AMF.Internals.AMF_Metamodel) return Module_Factory_Access is
   begin
      return Module_Registry (Metamodel);
   end Get_Factory;

   ------------------
   -- Get_Packages --
   ------------------

   function Get_Packages
     return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package is
   begin
      return Packages;
   end Get_Packages;

   --------------
   -- Register --
   --------------

   procedure Register
    (The_Package : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Constructor : not null Factory_Constructor) is
   begin
      URI_Registry.Insert (The_Package.Get_URI.Value, Constructor);
      Packages.Add (The_Package);
   end Register;

   --------------
   -- Register --
   --------------

   procedure Register
    (Factory : not null Module_Factory_Access;
     Module  : out AMF_Metamodel) is
   begin
      Module := Last_Module;
      Last_Module := Last_Module + 1;

      Module_Registry (Module) := Factory;
   end Register;

end AMF.Internals.Factories;
