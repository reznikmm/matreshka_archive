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
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Containers.Vectors;

with League.Strings.Hash;

package Web_Services.SOAP.Payloads.Faults is

   package Language_Text_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           League.Strings.Universal_String,
           League.Strings.Hash,
           League.Strings."=",
           League.Strings."=");

   type Fault_Code is record
      Namespace_URI : League.Strings.Universal_String;
      Local_Name    : League.Strings.Universal_String;
      Prefix        : League.Strings.Universal_String;
   end record;

   package Code_Vectors is new Ada.Containers.Vectors (Positive, Fault_Code);

   type Abstract_SOAP_Fault (<>) is
     abstract new Abstract_SOAP_Payload with private;

   function Code (Self : Abstract_SOAP_Fault'Class) return Fault_Code;
   --  Returns fault's code.

   function Reason
    (Self : Abstract_SOAP_Fault'Class) return Language_Text_Maps.Map;
   --  Returns items of Reason element of fault.

   type Version_Mismatch_Fault is
     abstract new Abstract_SOAP_Fault with private;

   type Must_Understand_Fault is abstract new Abstract_SOAP_Fault with private;

   type Data_Encoding_Unknown_Fault is
     abstract new Abstract_SOAP_Fault with private;

   type Sender_Fault is abstract new Abstract_SOAP_Fault with private;

   type Receiver_Fault is abstract new Abstract_SOAP_Fault with private;

   procedure Initialize
    (Self     : in out Abstract_SOAP_Fault'Class;
     Subcodes : Code_Vectors.Vector    := Code_Vectors.Empty_Vector;
     Reason   : Language_Text_Maps.Map := Language_Text_Maps.Empty_Map);

private

   type Fault_Kinds is
    (Version_Mismatch,
     Must_Understand,
     Data_Encoding_Unknown,
     Sender,
     Receiver);

   type Abstract_SOAP_Fault (Kind : Fault_Kinds) is
     abstract new Abstract_SOAP_Payload with
   record
      Subcodes : Code_Vectors.Vector;
      Reason   : Language_Text_Maps.Map;
   end record;

   type Version_Mismatch_Fault is
     new Abstract_SOAP_Fault (Version_Mismatch) with null record;

   type Must_Understand_Fault is
     new Abstract_SOAP_Fault (Must_Understand) with null record;

   type Data_Encoding_Unknown_Fault is
     new Abstract_SOAP_Fault (Data_Encoding_Unknown) with null record;

   type Sender_Fault is
     abstract new Abstract_SOAP_Fault (Sender) with null record;

   type Receiver_Fault is
     abstract new Abstract_SOAP_Fault (Receiver) with null record;

end Web_Services.SOAP.Payloads.Faults;
