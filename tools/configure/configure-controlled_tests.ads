------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
--  $Revision: $ $Date:  $
------------------------------------------------------------------------------
--  Controlled_Test is base tagged type to implement tests, that support
--  --enable-NAME and --disable-NAME configure arguments.
------------------------------------------------------------------------------

with Configure.Abstract_Tests;

package Configure.Controlled_Tests is

   type Controlled_Test is abstract new Configure.Abstract_Tests.Abstract_Test
     with private;

   overriding function Help
    (Self : Controlled_Test) return Unbounded_String_Vector;
   --  Returns help information for test.

   not overriding function Nested_Help
    (Self : Controlled_Test) return Unbounded_String_Vector is abstract;
   --  Returns help information for test.

   not overriding procedure Execute
    (Self      : in out Controlled_Test;
     Arguments : in out Unbounded_String_Vector;
     Success   : out Boolean) is abstract;
   --  Executes test's actions. All used arguments must be removed from
   --  Arguments.

   not overriding procedure Drop_Known_Arguments
    (Self      : in out Controlled_Test;
     Arguments : in out Unbounded_String_Vector) is abstract;
   --  Remove all test specific arguments from Arguments.

   overriding procedure Execute
    (Self      : in out Controlled_Test;
     Arguments : in out Unbounded_String_Vector);
   --  Executes test's actions. All used arguments must be removed from
   --  Arguments.

   not overriding function Enable_Switch
    (Self : Controlled_Test) return String;
   --  Returns --enable-NAME.

   not overriding function Disable_Switch
    (Self : Controlled_Test) return String;
   --  Returns --disable-NAME.

private

   type Controlled_Test is abstract new Configure.Abstract_Tests.Abstract_Test
     with null record;

end Configure.Controlled_Tests;
