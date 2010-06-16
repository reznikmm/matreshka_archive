------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                      Orthogonal Persistence Manager                      --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2009, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.Internals.Persistence_Manager;

package body Matreshka.Generic_Persistence_Manager is

   ------------
   -- Create --
   ------------

   function Create (Class_Name : String) return Entity'Class is
      Descriptor : Matreshka.Internals.Persistence_Manager.Descriptor_Access
        := Matreshka.Internals.Persistence_Manager.Constructors.Create
            (Class_Name);

   begin
      return Entity'Class (Descriptor.Proxy);
   end Create;

   ------------
   -- Delete --
   ------------

   procedure Delete (Object : Entity'Class) is
   begin
      null;
   end Delete;

   ----------------
   -- Identifier --
   ----------------

   function Identifier (Object : Entity'Class) return Positive is
   begin
      return
        Matreshka.Internals.Persistence_Manager.Abstract_Proxy'Class
         (Object).Descriptor.Identifier;
   end Identifier;

   ----------
   -- Load --
   ----------

   function Load (Identifier : Positive) return Entity'Class is
      Descriptor : Matreshka.Internals.Persistence_Manager.Descriptor_Access
        := Matreshka.Internals.Persistence_Manager.Load (Identifier);

   begin
      return Entity'Class (Descriptor.Proxy);
   end Load;

end Matreshka.Generic_Persistence_Manager;
