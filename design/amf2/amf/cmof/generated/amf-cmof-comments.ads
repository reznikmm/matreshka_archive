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
--  A comment is a textual annotation that can be attached to a set of 
--  elements.
------------------------------------------------------------------------------
with AMF.CMOF.Elements;
limited with AMF.CMOF.Elements.Collections;

package AMF.CMOF.Comments is

   pragma Preelaborate;

   type CMOF_Comment is limited interface
     and AMF.CMOF.Elements.CMOF_Element;

   type CMOF_Comment_Access is
     access all CMOF_Comment'Class;
   for CMOF_Comment_Access'Storage_Size use 0;

   not overriding function Get_Body
    (Self : not null access constant CMOF_Comment)
       return AMF.Optional_String is abstract;
   --  Getter of Comment::body.
   --
   --  Specifies a string that is the comment.

   not overriding procedure Set_Body
    (Self : not null access CMOF_Comment;
     To   : AMF.Optional_String) is abstract;
   --  Setter of Comment::body.
   --
   --  Specifies a string that is the comment.

   not overriding function Get_Annotated_Element
    (Self : not null access constant CMOF_Comment)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element is abstract;
   --  Getter of Comment::annotatedElement.
   --
   --  References the Element(s) being commented.

end AMF.CMOF.Comments;
