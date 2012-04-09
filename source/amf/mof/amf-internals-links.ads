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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Links;

package AMF.Internals.Links is

   function Internal_Create_Link
    (Association     : CMOF_Element;
     First_Element   : AMF_Element;
     First_Property  : CMOF_Element;
     Second_Element  : AMF_Element;
     Second_Property : CMOF_Element) return AMF_Link;
   procedure Internal_Create_Link
    (Association     : CMOF_Element;
     First_Element   : AMF_Element;
     First_Property  : CMOF_Element;
     Second_Element  : AMF_Element;
     Second_Property : CMOF_Element);
   --  Creates link between two elements. It uses only Property::upper
   --  attribute and intended to be used to construct initial CMOF
   --  metametamodel only.

   function Create_Link
    (Association    : CMOF_Element;
     First_Element  : AMF_Element;
     Second_Element : AMF_Element) return AMF_Link;
   procedure Create_Link
    (Association    : CMOF_Element;
     First_Element  : AMF_Element;
     Second_Element : AMF_Element);
   --  Creates link between two elements.

   function Proxy (Self : AMF_Link) return not null AMF.Links.Link_Access;

   function Opposite_Element
    (Self    : AMF_Link;
     Element : AMF_Element) return AMF_Element;
   --  Returns opposite element of the link or Null_Element when Link is
   --  No_Link.

end AMF.Internals.Links;
