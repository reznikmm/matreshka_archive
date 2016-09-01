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
-- Copyright © 2015-2016, Vadim Godunko <vgodunko@gmail.com>                --
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
with System.Address_To_Access_Conversions;

with Servlet.Container_Initializers;

separate (Matreshka.Servlet_Containers)
package body Loader is

   package Conversions is
     new System.Address_To_Access_Conversions
          (Servlet.Container_Initializers.Servlet_Container_Initializer'Class);

   use type Interfaces.C.Strings.chars_ptr;
   use type System.Address;
   use type
     Servlet.Container_Initializers.Servlet_Container_Initializer_Access;

   ----------
   -- Load --
   ----------

   procedure Load
    (Container   : in out Servlet_Container'Class;
     Initializer : out
       Servlet.Container_Initializers.Servlet_Container_Initializer_Access)
   is

      RTLD_LAZY   : constant Interfaces.C.int := 16#0_0001#;
      RTLD_NOW    : constant Interfaces.C.int := 16#0_0002#;
      RTLD_GLOBAL : constant Interfaces.C.int := 16#0_0100#;
      RTLD_LOCAL  : constant Interfaces.C.int := 16#0_0000#;

      type LD_Handle is new System.Address;

      Null_LD_Handle : constant LD_Handle := LD_Handle (System.Null_Address);

      function dlopen
       (file : Interfaces.C.Strings.chars_ptr;
        mode : Interfaces.C.int) return LD_Handle
          with Import        => True,
               Convention    => C,
               External_Name => "dlopen";

      function dlsym
       (handle : LD_Handle;
        name   : Interfaces.C.Strings.chars_ptr) return System.Address
          with Import        => True,
               Convention    => C,
               External_Name => "dlsym";

      function dlerror return Interfaces.C.Strings.chars_ptr
        with Import        => True,
             Convention    => C,
             External_name => "dlerror";

      N : Interfaces.C.Strings.chars_ptr
        := Interfaces.C.Strings.New_String
            ("install/WEB-INF/lib/x86_64-linux/lib"
               & Container.Descriptor.Library_Name.To_UTF_8_String
               & ".so");
      M : Interfaces.C.Strings.chars_ptr
        := Interfaces.C.Strings.New_String ("spikedog_container_initializer");
      E : Interfaces.C.Strings.chars_ptr;
      P : LD_Handle;
      S : System.Address;

   begin
      P := dlopen (N, RTLD_NOW);
      Interfaces.C.Strings.Free (N);

      if P = Null_LD_Handle then
         raise Program_Error;
      end if;

      E := dlerror;
      S := dlsym (P, M);
      Interfaces.C.Strings.Free (M);
      E := dlerror;

      if E /= Interfaces.C.Strings.Null_Ptr then
         raise Program_Error;
      end if;

      declare
         Aux :
           Servlet.Container_Initializers.Servlet_Container_Initializer_Access
             with Import     => True,
                  Convention => Ada,
                  Address    => S;
      begin
         Initializer := Aux;
      end;
   end Load;

end Loader;
