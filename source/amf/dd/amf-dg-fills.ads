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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  Fill is the abstract super class of all kinds of fills that are used to 
--  paint the interior of graphical elements.
------------------------------------------------------------------------------
limited with AMF.DG.Canvases;

package AMF.DG.Fills is

   pragma Preelaborate;

   type DG_Fill is limited interface;

   type DG_Fill_Access is
     access all DG_Fill'Class;
   for DG_Fill_Access'Storage_Size use 0;

   not overriding function Get_Canvas
    (Self : not null access constant DG_Fill)
       return AMF.DG.Canvases.DG_Canvas_Access is abstract;
   --  Getter of Fill::canvas.
   --
   --  a reference to the canvas that owns this fill.

   not overriding procedure Set_Canvas
    (Self : not null access DG_Fill;
     To   : AMF.DG.Canvases.DG_Canvas_Access) is abstract;
   --  Setter of Fill::canvas.
   --
   --  a reference to the canvas that owns this fill.

   not overriding function Get_Transform
    (Self : not null access constant DG_Fill)
       return AMF.DG.Sequence_Of_DG_Transform is abstract;
   --  Getter of Fill::transform.
   --
   --  a list of zero or more transforms to apply to this fill.

end AMF.DG.Fills;
