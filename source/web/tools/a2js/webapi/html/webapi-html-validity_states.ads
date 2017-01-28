------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Web API Definition                            --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2017, Vadim Godunko <vgodunko@gmail.com>                     --
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

package WebAPI.HTML.Validity_States is

   pragma Preelaborate;

   type Validity_State is limited interface;

   not overriding function Get_Value_Missing
    (Self : not null access constant Validity_State)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "valueMissing";

   not overriding function Get_Type_Mismatch
    (Self : not null access constant Validity_State)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "typeMismatch";

   not overriding function Get_Pattern_Mismatch
    (Self : not null access constant Validity_State)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "patternMismatch";

   not overriding function Get_Too_Long
    (Self : not null access constant Validity_State)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "tooLong";

   not overriding function Get_Too_Short
    (Self : not null access constant Validity_State)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "tooShort";

   not overriding function Get_Range_Underflow
    (Self : not null access constant Validity_State)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "rangeUnderflow";

   not overriding function Get_Range_Overflow
    (Self : not null access constant Validity_State)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "rangeOverflow";

   not overriding function Get_Step_Mismatch
    (Self : not null access constant Validity_State)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "stepMismatch";

   not overriding function Get_Bad_Input
    (Self : not null access constant Validity_State)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "badInput";

   not overriding function Get_Custom_Error
    (Self : not null access constant Validity_State)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "customError";

   not overriding function Get_Valid
    (Self : not null access constant Validity_State)
       return WebAPI.DOM_Boolean is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "valid";

end WebAPI.HTML.Validity_States;
