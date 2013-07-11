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
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
with WSDL.Constants;

package body WSDL.Parsers.MEP is

   -------------
   -- Resolve --
   -------------

   function Resolve
    (Parser : WSDL_Parser;
     IRI    : League.Strings.Universal_String)
       return not null WSDL.MEPs.MEP_Access
   is
      use type League.Strings.Universal_String;

   begin
      --  MEPs specified by Web Services Description Language (WSDL) Version
      --  2.0 Part 2: Adjuncts.

      --  2.3.1 In-Only message exchange pattern

      if IRI = WSDL.Constants.In_Only_MEP then
         return
           new WSDL.MEPs.MEP'
                (Length         => 1,
                 IRI            => WSDL.Constants.In_Only_MEP,
                 Placeholders   =>
                  (1 =>
                    (Label     => WSDL.Constants.In_Label,
                     Direction => WSDL.AST.In_Message,
                     Message   => null,
                     Faults    =>
                       WSDL.MEPs.Interface_Fault_Reference_Maps.Empty_Map)),
                 FPR            => WSDL.MEPs.No_Faults,
                 Has_In         => True,
                 Has_Out        => False,
                 Has_Single_In  => True,
                 Has_Single_Out => False,
                 Has_In_Fault   => False,
                 Has_Out_Fault  => False);

      --  2.3.2 Robust In-Only message exchange pattern

      elsif IRI = WSDL.Constants.Robust_In_Only_MEP then
         return
           new WSDL.MEPs.MEP'
                (Length         => 1,
                 IRI            => WSDL.Constants.Robust_In_Only_MEP,
                 Placeholders   =>
                  (1 =>
                    (Label     => WSDL.Constants.In_Label,
                     Direction => WSDL.AST.In_Message,
                     Message   => null,
                     Faults    =>
                       WSDL.MEPs.Interface_Fault_Reference_Maps.Empty_Map)),
                 FPR            => WSDL.MEPs.Message_Triggers_Fault,
                 Has_In         => True,
                 Has_Out        => False,
                 Has_Single_In  => True,
                 Has_Single_Out => False,
                 Has_In_Fault   => False,
                 Has_Out_Fault  => True);

      --  2.3.3 In-Out message exchange pattern

      elsif IRI = WSDL.Constants.In_Out_MEP then
         return
           new WSDL.MEPs.MEP'
                (Length         => 2,
                 IRI            => WSDL.Constants.In_Out_MEP,
                 Placeholders   =>
                  (1 =>
                    (Label     => WSDL.Constants.In_Label,
                     Direction => WSDL.AST.In_Message,
                     Message   => null,
                     Faults    =>
                       WSDL.MEPs.Interface_Fault_Reference_Maps.Empty_Map),
                   2 =>
                    (Label     => WSDL.Constants.Out_Label,
                     Direction => WSDL.AST.Out_Message,
                     Message   => null,
                     Faults    =>
                       WSDL.MEPs.Interface_Fault_Reference_Maps.Empty_Map)),
                 FPR            => WSDL.MEPs.Fault_Replaces_Message,
                 Has_In         => True,
                 Has_Out        => True,
                 Has_Single_In  => True,
                 Has_Single_Out => True,
                 Has_In_Fault   => False,
                 Has_Out_Fault  => True);

      else
         --  MEP-1022: A message exchange pattern is itself uniquely identified
         --  by an absolute IRI, which is used as the value of the {message
         --  exchange pattern} property of the Interface Operation component,
         --  and which specifies the fault propagation ruleset that its faults
         --  obey. 

         Parser.Report (WSDL.Assertions.MEP_1022);

         raise WSDL_Error;
      end if;
   end Resolve;

end WSDL.Parsers.MEP;
