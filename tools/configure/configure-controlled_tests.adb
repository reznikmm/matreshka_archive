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
--  $Revision: $ $Date: $
------------------------------------------------------------------------------

package body Configure.Controlled_Tests is

   --------------------
   -- Disable_Switch --
   --------------------

   function Disable_Switch (Self : Controlled_Test) return String is
   begin
      return "--disable-" & Controlled_Test'Class (Self).Name;
   end Disable_Switch;

   -------------------
   -- Enable_Switch --
   -------------------

   function Enable_Switch (Self : Controlled_Test) return String is
   begin
      return "--enable-" & Controlled_Test'Class (Self).Name;
   end Enable_Switch;

   -------------
   -- Execute --
   -------------

   overriding procedure Execute
     (Self      : in out Controlled_Test;
      Arguments : in out Unbounded_String_Vector)
   is
      Success : Boolean;
   begin
      if Has_Parameter (Arguments, Self.Disable_Switch) then
         Controlled_Test'Class (Self).Drop_Known_Arguments (Arguments);
      else
         Controlled_Test'Class (Self).Execute (Arguments, Success);

         if not Success
           and Has_Parameter (Arguments, Self.Enable_Switch)
         then
            Self.Report_Check
              ("Support requested by "
                 & Self.Enable_Switch
                 & " but failed");

            Self.Report_Status ("Exiting");

            raise Internal_Error;
         end if;
      end if;
   end Execute;

   ----------
   -- Help --
   ----------

   overriding function Help
     (Self : Controlled_Test)
      return Unbounded_String_Vector
   is
      Result : Unbounded_String_Vector
        := Controlled_Test'Class (Self).Nested_Help;
   begin
      Result.Append
        (+"  "
           & Self.Enable_Switch
           & " "
           & "enable "
           & Controlled_Test'Class (Self).Name
           &" support or fail execution");

      Result.Append
        (+"  "
           & Self.Disable_Switch
           & " "
           & "disable "
           & Controlled_Test'Class (Self).Name
           &" support");

      return Result;
   end Help;

end Configure.Controlled_Tests;
