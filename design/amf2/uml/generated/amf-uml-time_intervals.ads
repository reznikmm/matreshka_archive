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
--  $Revision$ $Date$
------------------------------------------------------------------------------
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  A time interval defines the range between two time expressions.
------------------------------------------------------------------------------
with AMF.UML.Intervals;
limited with AMF.UML.Time_Expressions;

package AMF.UML.Time_Intervals is

   pragma Preelaborate;

   type UML_Time_Interval_Interface is limited interface
     and AMF.UML.Intervals.UML_Interval_Interface;

   type UML_Time_Interval is
     access all UML_Time_Interval_Interface'Class;
   for UML_Time_Interval'Storage_Size use 0;

   not overriding function Get_Max
    (Self : not null access constant UML_Time_Interval_Interface)
       return AMF.UML.Time_Expressions.UML_Time_Expression is abstract;
   --  Refers to the TimeExpression denoting the maximum value of the range.

   not overriding procedure Set_Max
    (Self : not null access UML_Time_Interval_Interface;
     To   : AMF.UML.Time_Expressions.UML_Time_Expression) is abstract;

   not overriding function Get_Min
    (Self : not null access constant UML_Time_Interval_Interface)
       return AMF.UML.Time_Expressions.UML_Time_Expression is abstract;
   --  Refers to the TimeExpression denoting the minimum value of the range.

   not overriding procedure Set_Min
    (Self : not null access UML_Time_Interval_Interface;
     To   : AMF.UML.Time_Expressions.UML_Time_Expression) is abstract;

end AMF.UML.Time_Intervals;
