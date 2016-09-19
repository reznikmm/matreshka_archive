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
-- Copyright © 2016, Vadim Godunko <vgodunko@gmail.com>                     --
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

with WebAPI.HTML.Elements;

package WebAPI.XHR.Form_Datas is

   pragma Preelaborate;

   type Form_Data (Form : WebAPI.HTML.Elements.HTML_Element_Access := null) is
     tagged limited private;
   --  The FormData object represents an ordered list of entries.
   --  Each entry consists of a name and a value.

   not overriding procedure Append
    (Self  : not null access Form_Data;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String)
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "append";

   not overriding procedure Delete
    (Self  : not null access Form_Data;
     Name  : League.Strings.Universal_String)
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "delete";

   not overriding function Get
    (Self : not null access constant Form_Data;
     Name  : League.Strings.Universal_String)
       return League.Strings.Universal_String
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "get";

   not overriding function Has
    (Self : not null access constant Form_Data;
     Name  : League.Strings.Universal_String)
       return Boolean
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "has";

   not overriding procedure Set
    (Self  : not null access Form_Data;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String)
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "set";

private

   type Form_Data (Form : WebAPI.HTML.Elements.HTML_Element_Access := null) is
     tagged limited null record
         with Export     => True,
              Convention => JavaScript,
              Link_Name  => "FormData";

end WebAPI.XHR.Form_Datas;
