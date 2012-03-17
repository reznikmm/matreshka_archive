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
with AMF.Internals.Helpers;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Visitors.CMOF_Iterators;
with AMF.Visitors.CMOF_Visitors;

package body AMF.Internals.CMOF_Package_Imports is

   use AMF.Internals.Tables.CMOF_Attributes;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant CMOF_Package_Import_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class then
         AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class
          (Visitor).Enter_Package_Import
            (AMF.CMOF.Package_Imports.CMOF_Package_Import_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant CMOF_Package_Import_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class then
         AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class
          (Visitor).Leave_Package_Import
            (AMF.CMOF.Package_Imports.CMOF_Package_Import_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant CMOF_Package_Import_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class then
         AMF.Visitors.CMOF_Iterators.CMOF_Iterator'Class
          (Iterator).Visit_Package_Import
            (Visitor,
             AMF.CMOF.Package_Imports.CMOF_Package_Import_Access (Self),
             Control);
      end if;
   end Visit_Element;

   --------------------------
   -- Get_Imported_Package --
   --------------------------

   overriding function Get_Imported_Package
    (Self : not null access constant CMOF_Package_Import_Proxy)
       return AMF.CMOF.Packages.CMOF_Package_Access is
   begin
      return
        AMF.CMOF.Packages.CMOF_Package_Access
         (AMF.Internals.Helpers.To_Element
           (Internal_Get_Imported_Package (Self.Id)));
   end Get_Imported_Package;

   -----------------------------
   -- Get_Importing_Namespace --
   -----------------------------

   overriding function Get_Importing_Namespace
    (Self : not null access constant CMOF_Package_Import_Proxy)
       return AMF.CMOF.Namespaces.CMOF_Namespace_Access is
   begin
      return
        AMF.CMOF.Namespaces.CMOF_Namespace_Access
         (AMF.Internals.Helpers.To_Element
           (Internal_Get_Importing_Namespace (Self.Id)));
   end Get_Importing_Namespace;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
    (Self : not null access constant CMOF_Package_Import_Proxy)
       return CMOF.CMOF_Visibility_Kind is
   begin
      return Internal_Get_Visibility (Self.Id);
   end Get_Visibility;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
     (Self : not null access constant CMOF_Package_Import_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error;
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
     (Self : not null access CMOF_Package_Import_Proxy;
      To   : CMOF.CMOF_Visibility_Kind)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Visibility unimplemented");
      raise Program_Error;
   end Set_Visibility;

   --------------------------
   -- Set_Imported_Package --
   --------------------------

   overriding procedure Set_Imported_Package
     (Self : not null access CMOF_Package_Import_Proxy;
      To   : AMF.CMOF.Packages.CMOF_Package_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Imported_Package unimplemented");
      raise Program_Error;
   end Set_Imported_Package;

   -----------------------------
   -- Set_Importing_Namespace --
   -----------------------------

   overriding procedure Set_Importing_Namespace
     (Self : not null access CMOF_Package_Import_Proxy;
      To   : AMF.CMOF.Namespaces.CMOF_Namespace_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Importing_Namespace unimplemented");
      raise Program_Error;
   end Set_Importing_Namespace;

end AMF.Internals.CMOF_Package_Imports;
