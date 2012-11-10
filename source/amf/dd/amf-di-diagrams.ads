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
--  Diagram is an abstract container of a graph of diagram elements. Diagrams 
--  are diagram elements with an origin point in the x-y coordinate system. 
--  Their elements are laid out relative to their origin point.
------------------------------------------------------------------------------
with AMF.DI.Shapes;
with League.Strings;

package AMF.DI.Diagrams is

   pragma Preelaborate;

   type DI_Diagram is limited interface
     and AMF.DI.Shapes.DI_Shape;

   type DI_Diagram_Access is
     access all DI_Diagram'Class;
   for DI_Diagram_Access'Storage_Size use 0;

   not overriding function Get_Name
    (Self : not null access constant DI_Diagram)
       return League.Strings.Universal_String is abstract;
   --  Getter of Diagram::name.
   --
   --  the name of the diagram.

   not overriding procedure Set_Name
    (Self : not null access DI_Diagram;
     To   : League.Strings.Universal_String) is abstract;
   --  Setter of Diagram::name.
   --
   --  the name of the diagram.

   not overriding function Get_Documentation
    (Self : not null access constant DI_Diagram)
       return League.Strings.Universal_String is abstract;
   --  Getter of Diagram::documentation.
   --
   --  the documentation of the diagram.

   not overriding procedure Set_Documentation
    (Self : not null access DI_Diagram;
     To   : League.Strings.Universal_String) is abstract;
   --  Setter of Diagram::documentation.
   --
   --  the documentation of the diagram.

   not overriding function Get_Resolution
    (Self : not null access constant DI_Diagram)
       return AMF.Real is abstract;
   --  Getter of Diagram::resolution.
   --
   --  the resolution of the diagram expressed in user units per inch.

   not overriding procedure Set_Resolution
    (Self : not null access DI_Diagram;
     To   : AMF.Real) is abstract;
   --  Setter of Diagram::resolution.
   --
   --  the resolution of the diagram expressed in user units per inch.

end AMF.DI.Diagrams;
