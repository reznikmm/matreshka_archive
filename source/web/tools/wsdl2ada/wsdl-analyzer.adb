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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.Strings;

with WSDL.AST.Messages;
with WSDL.Constants;

package body WSDL.Analyzer is

   use WSDL.Constants;

   -------------------------------
   -- Enter_Interface_Operation --
   -------------------------------

   overriding procedure Enter_Interface_Operation
    (Self    : in out Analyzer;
     Node    : not null WSDL.AST.Operations.Interface_Operation_Access;
     Control : in out WSDL.Iterators.Traverse_Control)
   is
      use type League.Strings.Universal_String;
      use type WSDL.AST.Messages.Interface_Message_Access;

      Input_Message  : WSDL.AST.Messages.Interface_Message_Access;
      Output_Message : WSDL.AST.Messages.Interface_Message_Access;

   begin
      if Node.Message_Exchange_Pattern = In_Out_MEP then
         --  InOutComposition-2015: "The in-out message exchange pattern
         --  consists of exactly two messages, in order, as follows:
         --
         --  1. A message:
         --
         --   - indicated by a Interface Message Reference component whose
         --     {message label} is "In" and {direction} is "in"
         --
         --   - received from some node N
         --
         --  2. A message:
         --
         --   - indicated by a Interface Message Reference component whose
         --     {message label} is "Out" and {direction} is "out"
         --
         --   - sent to node N"

         --  Lookup for input and output messages. Check whether only one
         --  message for each direction is specified.

         for Message_Node of Node.Interface_Message_References loop
            case Message_Node.Direction is
               when WSDL.AST.Messages.In_Message =>
                  if Input_Message /= null then
                     --  InOutComposition-2015: Only one input message can be
                     --  specified in this MEP.

                     raise Program_Error;
                  end if;

                  Input_Message := Message_Node;

               when WSDL.AST.Messages.Out_Message =>
                  if Output_Message /= null then
                     --  InOutComposition-2015: Only one output message can be
                     --  specified in this MEP.

                     raise Program_Error;
                  end if;

                  Output_Message := Message_Node;
            end case;
         end loop;

         --  Check whether input message is specified.

         if Input_Message = null then
            --  InOutComposition-2015: Input message must be specified for this
            --  MEP.

            raise Program_Error;
         end if;

         --  Check label of the message. It can be empty, because MEP has only
         --  one input message.

         if not Input_Message.Message_Label.Is_Empty
           and Input_Message.Message_Label /= In_Label
         then
            --  InOutComposition-2015: Input message must have label 'In' or
            --  doesn't have label.

            raise Program_Error;
         end if;

         --  Check whether output message is specified.

         if Output_Message = null then
            --  InOutComposition-2015: Input message must be specified for this
            --  MEP.

            raise Program_Error;
         end if;

         --  Check label of the message. It can be empty, because MEP has only
         --  one output message.

         if not Output_Message.Message_Label.Is_Empty
           and Output_Message.Message_Label /= Out_Label
         then
            --  InOutComposition-2015: Output message must have label 'Out' or
            --  doesn't have label.

            raise Program_Error;
         end if;

      elsif Node.Message_Exchange_Pattern = Robust_In_Only_MEP then
         --  RobustInOnlyComposition-2013: "The robust-in-only message exchange
         --  pattern consists of exactly one message as follows:
         --
         --  1. A message:
         --
         --    - indicated by a Interface Message Reference component whose
         --      {message label} is "In" and {direction} is "in"
         --
         --    - received from some node N"

         --  Lookup for input message. Check whether only one
         --  input message is specified.

         for Message_Node of Node.Interface_Message_References loop
            case Message_Node.Direction is
               when WSDL.AST.Messages.In_Message =>
                  if Input_Message /= null then
                     --  RobustInOnlyComposition-2013: Only one input message
                     --  can be specified in this MEP.

                     raise Program_Error;
                  end if;

                  Input_Message := Message_Node;

               when WSDL.AST.Messages.Out_Message =>
                  --  RobustInOnlyComposition-2013: Output messages can't be
                  --  specified for this MEP.
                  --
                  --  XXX Must never be happen when MessageLabel-1033 will be
                  --  implemented (check will be done by parser).

                  raise Program_Error;
            end case;
         end loop;

         --  Check whether input message is specified.

         if Input_Message = null then
            --  RobustInOnlyComposition-2013: Input message must be specified
            --  for this MEP.

            raise Program_Error;
         end if;

         --  Check label of the message. It can be empty, because MEP has only
         --  one input message.

         if not Input_Message.Message_Label.Is_Empty
           and Input_Message.Message_Label /= In_Label
         then
            --  RobustInOnlyComposition-2013: Input message must have label
            --  'In' or doesn't have label.

            raise Program_Error;
         end if;

      else
         raise Program_Error;
      end if;
   end Enter_Interface_Operation;

   --------------
   -- Set_Root --
   --------------

   procedure Set_Root
    (Self : in out Analyzer'Class;
     Root : WSDL.AST.Descriptions.Description_Access) is
   begin
      Self.Root := Root;
   end Set_Root;

end WSDL.Analyzer;
