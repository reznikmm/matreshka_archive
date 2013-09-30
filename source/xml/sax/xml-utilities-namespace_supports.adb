------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body XML.Utilities.Namespace_Supports is

   --------------------
   -- Declare_Prefix --
   --------------------

   procedure Declare_Prefix
    (Self          : in out XML_Namespace_Support'Class;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String) is
   begin
      null;
   end Declare_Prefix;

   ----------------
   -- Initialize --
   ----------------

   overriding procedure Initialize (Self : in out XML_Namespace_Support) is
   begin
      Self.Reset;
   end Initialize;

   -------------------
   -- Namespace_URI --
   -------------------

   function Namespace_URI
    (Self      : XML_Namespace_Support'Class;
     Prefix    : League.Strings.Universal_String;
     Component : Component_Kinds := Element)
       return League.Strings.Universal_String
   is
      Position : constant String_Maps.Cursor
        := Self.Current.Namespace_URI.Find (Prefix);

   begin
      if Prefix.Is_Empty and Component = Attribute then
         raise Program_Error;
      end if;

      if String_Maps.Has_Element (Position) then
         return String_Maps.Element (Position);
      end if;

      raise Constraint_Error;
   end Namespace_URI;

   -----------------
   -- Pop_Context --
   -----------------

   procedure Pop_Context (Self : in out XML_Namespace_Support'Class) is
   begin
      --  Clear accumulated mappings for future context.

      Self.Future.Prefix.Clear;
      Self.Future.Namespace_URI.Clear;

      --  Set current prefix mapping from the stack and remove element from the
      --  stack.

      Self.Current := Self.Stack.Last_Element;
      Self.Stack.Delete_Last;
   end Pop_Context;

   ------------
   -- Prefix --
   ------------

   function Prefix
    (Self          : XML_Namespace_Support'Class;
     Namespace_URI : League.Strings.Universal_String;
     Component     : Component_Kinds := Element)
       return League.Strings.Universal_String
   is
      Position : constant String_Maps.Cursor
        := Self.Current.Prefix.Find (Namespace_URI);
      Result   : League.Strings.Universal_String;

   begin
      if String_Maps.Has_Element (Position) then
         Result := String_Maps.Element (Position);

         if Result.Is_Empty and Component = Attribute then
            raise Constraint_Error;
         end if;

         return Result;

      else
         raise Constraint_Error;
      end if;
   end Prefix;

   --------------
   -- Prefixes --
   --------------

   function Prefixes
    (Self      : XML_Namespace_Support'Class;
     Component : Component_Kinds := Element)
       return League.String_Vectors.Universal_String_Vector
   is
      Result : League.String_Vectors.Universal_String_Vector;

   begin
      for P of Self.Current.Namespace_URI loop
         if Component = Element or not P.Is_Empty then
            Result.Append (P);
         end if;
      end loop;

      return Result;
   end Prefixes;

   --------------
   -- Prefixes --
   --------------

   function Prefixes
    (Self          : XML_Namespace_Support'Class;
     Namespace_URI : League.Strings.Universal_String;
     Component     : Component_Kinds := Element)
       return League.String_Vectors.Universal_String_Vector
   is
      use type League.Strings.Universal_String;

      Result : League.String_Vectors.Universal_String_Vector;

   begin
      for P of Self.Current.Namespace_URI loop
         if Self.Current.Namespace_URI (P) = Namespace_URI
           and (Component = Element or not P.Is_Empty)
         then
            Result.Append (P);
         end if;
      end loop;

      return Result;
   end Prefixes;

   ------------------
   -- Process_Name --
   ------------------

   procedure Process_Name
    (Self           : XML_Namespace_Support'Class;
     Qualified_Name : League.Strings.Universal_String;
     Component      : Component_Kinds;
     Namespace_URI  : out League.Strings.Universal_String;
     Local_Name     : out League.Strings.Universal_String)
   is
      Delimiter : constant Natural := Qualified_Name.Index (':');
      Prefix    : League.Strings.Universal_String;

   begin
      if Delimiter /= 0 then
         Prefix := Qualified_Name.Slice (1, Delimiter - 1);
         Local_Name :=
           Qualified_Name.Slice (Delimiter + 1, Qualified_Name.Length);

      elsif Component = Attribute then
         Namespace_URI.Clear;
         Local_Name.Clear;

         return;

      else
         Local_Name := Qualified_Name;
      end if;

      Namespace_URI := Self.Namespace_URI (Prefix, Component);
   end Process_Name;

   ------------------
   -- Push_Context --
   ------------------

   procedure Push_Context (Self : in out XML_Namespace_Support'Class) is
   begin
      --  Save current state in the stack.

      Self.Stack.Append (Self.Current);

      --  Compute new context using accumulated future prefix mappings.

      for U of Self.Future.Prefix loop
         Self.Current.Prefix.Include (U, Self.Future.Prefix (U));
      end loop;

      for P of Self.Future.Namespace_URI loop
         Self.Current.Namespace_URI.Include (P, Self.Future.Namespace_URI (P));
      end loop;

      --  Clear accumulated mappings for future context.

      Self.Future.Prefix.Clear;
      Self.Future.Namespace_URI.Clear;
   end Push_Context;

   -----------
   -- Reset --
   -----------

   procedure Reset (Self : in out XML_Namespace_Support'Class) is
      XML_URI      : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String
            ("http://www.w3.org/XML/1998/namespace");
      XML_Prefix   : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String ("xml");

   begin
      --  Clear internal state.

      Self.Current.Prefix.Clear;
      Self.Current.Namespace_URI.Clear;
      Self.Future.Prefix.Clear;
      Self.Future.Namespace_URI.Clear;
      Self.Stack.Clear;

      --  Define default prefix mapping.

      Self.Current.Prefix.Insert (XML_URI, XML_Prefix);
      Self.Current.Namespace_URI.Insert (XML_Prefix, XML_URI);
   end Reset;

end XML.Utilities.Namespace_Supports;
