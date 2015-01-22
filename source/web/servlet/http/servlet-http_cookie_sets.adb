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
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Servlet.HTTP_Cookie_Sets is

   use type League.Strings.Universal_String;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self   : in out Cookie_Set'Class;
     Cookie : Servlet.HTTP_Cookies.Cookie) is
   begin
      Self.Data.Append (Cookie);
   end Append;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : Cookie_Set'Class;
     Index : Positive) return Servlet.HTTP_Cookies.Cookie is
   begin
      return Self.Data.Element (Index);
   end Element;

   -------------
   -- Element --
   -------------

   function Element
    (Self : Cookie_Set'Class;
     Name : League.Strings.Universal_String)
       return Servlet.HTTP_Cookies.Cookie
   is
      N : constant League.Strings.Universal_String
        := Name.To_Simple_Uppercase;

   begin
      for Cookie of Self.Data loop
         if Cookie.Get_Name.To_Simple_Uppercase = N then
            return Cookie;
         end if;
      end loop;

      return Servlet.HTTP_Cookies.Empty_Cookie;
   end Element;

   -----------------
   -- Has_Element --
   -----------------

   function Has_Element
    (Self : Cookie_Set'Class;
     Name : League.Strings.Universal_String) return Boolean
   is
      N : constant League.Strings.Universal_String
        := Name.To_Simple_Uppercase;

   begin
      for Cookie of Self.Data loop
         if Cookie.Get_Name.To_Simple_Uppercase = N then
            return True;
         end if;
      end loop;

      return False;
   end Has_Element;

   ------------
   -- Length --
   ------------

   function Length (Self : Cookie_Set'Class) return Natural is
   begin
      return Natural (Self.Data.Length);
   end Length;

end Servlet.HTTP_Cookie_Sets;
