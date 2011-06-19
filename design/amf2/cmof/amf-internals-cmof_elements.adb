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
with AMF.Internals.Collections;
with CMOF.Internals.Attributes;
with CMOF.Internals.Collections;
with CMOF.Internals.Proxies;
with CMOF.Reflection;

package body AMF.Internals.CMOF_Elements is

   use Standard.CMOF.Internals.Attributes;
   use Standard.CMOF.Internals.Collections;

   ---------
   -- Get --
   ---------

   overriding function Get
    (Self     : not null access constant CMOF_Element_Proxy;
     Property : Standard.CMOF.CMOF_Property) return AMF.Values.Value is
   begin
      return Standard.CMOF.Reflection.Get (Self.Id, Property);
   end Get;

   --------------------
   -- Get_Meta_Class --
   --------------------

   overriding function Get_Meta_Class
    (Self : not null access constant CMOF_Element_Proxy)
       return AMF.CMOF.Classes.CMOF_Class_Access is
   begin
      return
        AMF.CMOF.Classes.CMOF_Class_Access
         (Standard.CMOF.Internals.Proxies.Get_Proxy
           (Standard.CMOF.Reflection.Get_Meta_Class (Self.Id)));
   end Get_Meta_Class;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant CMOF_Element_Proxy)
       return AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment is
   begin
      return
        AMF.CMOF.Comments.Collections.Wrap
         (new CMOF_Collection'
               (AMF.Internals.Collections.Abstract_Collection with
                  Collection => Internal_Get_Owned_Comment (Self.Id)));
   end Get_Owned_Comment;

   ---------
   -- Set --
   ---------

   overriding procedure Set
    (Self     : not null access CMOF_Element_Proxy;
     Property : Standard.CMOF.CMOF_Property;
     Value    : AMF.Values.Value) is
   begin
      Standard.CMOF.Reflection.Set (Self.Id, Property, Value);
   end Set;

end AMF.Internals.CMOF_Elements;
