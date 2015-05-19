------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                        Runtime Library Component                         --
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
with Interfaces.C.Strings;
with System;

with Servlet.Container_Initializers;
with Matreshka.Internals.Windows.Kernel;

separate (Matreshka.Servlet_Containers)
package body Loader is

   use type Matreshka.Internals.Windows.HMODULE;
   use type System.Address;

   ----------
   -- Load --
   ----------

   procedure Load (Context : in out Servlet.Contexts.Servlet_Context'Class) is
      Initializer_Name : Interfaces.C.Strings.chars_ptr
        := Interfaces.C.Strings.New_String ("spikedog_container_initializer");
      File_Name        : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String
            ("install/WEB-INF/lib/x86_64-linux/libhdaServer.so");
      M : constant Matreshka.Internals.Windows.HMODULE
        := Matreshka.Internals.Windows.Kernel.LoadLibrary (File_Name);
      S : System.Address;

   begin
      if M = Matreshka.Internals.Windows.HMODULE (System.Null_Address) then
         Interfaces.C.Strings.Free (Initializer_Name);

         raise Program_Error;
      end if;

      S :=
        Matreshka.Internals.Windows.Kernel.GetProcAddress
         (M, Initializer_Name);
      Interfaces.C.Strings.Free (Initializer_Name);

      if S = System.Null_Address then
         raise Program_Error;
      end if;

      declare
         Initializer :
           Servlet.Container_Initializers.Servlet_Container_Initializer_Access
             with Import     => True,
                  Convention => Ada,
                  Address    => S;
      begin
         Initializer.On_Startup (Context);
      end;
   end Load;

end Loader;
