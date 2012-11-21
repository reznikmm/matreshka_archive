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
with Ada.Exceptions;

with League.Strings.Internals;
with XML.SAX.Locators.Internals;
with XML.SAX.Parse_Exceptions.Internals;
with XML.SAX.Simple_Readers.Resolver;

package body XML.SAX.Simple_Readers.Callbacks is

   ---------------------
   -- Call_Characters --
   ---------------------

   procedure Call_Characters
    (Self : in out SAX_Simple_Reader'Class;
     Text : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Content_Handler.Characters
       (League.Strings.Internals.Create (Text), Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Content_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Characters;

   ------------------
   -- Call_Comment --
   ------------------

   procedure Call_Comment
    (Self    : in out SAX_Simple_Reader'Class;
     Comment : League.Strings.Universal_String) is
   begin
      Self.Lexical_Handler.Comment (Comment, Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Lexical_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Comment;

   -----------------------
   -- Call_End_Document --
   -----------------------

   procedure Call_End_Document (Self : in out SAX_Simple_Reader'Class) is
   begin
      Self.Content_Handler.End_Document (Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Content_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_End_Document;

   ------------------
   -- Call_End_DTD --
   ------------------

   procedure Call_End_DTD (Self : in out SAX_Simple_Reader'Class) is
   begin
      Self.Lexical_Handler.End_DTD (Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Lexical_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_End_DTD;

   ----------------------
   -- Call_End_Element --
   ----------------------

   procedure Call_End_Element
    (Self           : in out SAX_Simple_Reader'Class;
     Namespace_URI  :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Local_Name     :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Qualified_Name :
       not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Content_Handler.End_Element
       (Namespace_URI  => League.Strings.Internals.Create (Namespace_URI),
        Local_Name     => League.Strings.Internals.Create (Local_Name),
        Qualified_Name => League.Strings.Internals.Create (Qualified_Name),
        Success        => Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Content_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_End_Element;

   -----------------------------
   -- Call_End_Prefix_Mapping --
   -----------------------------

   procedure Call_End_Prefix_Mapping
    (Self   : in out SAX_Simple_Reader'Class;
     Prefix : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Content_Handler.End_Prefix_Mapping
       (Prefix  => League.Strings.Internals.Create (Prefix),
        Success => Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Content_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_End_Prefix_Mapping;

   ----------------
   -- Call_Error --
   ----------------

   procedure Call_Error
    (Self    : in out SAX_Simple_Reader'Class;
     Message : League.Strings.Universal_String) is
   begin
      Self.Error_Handler.Error
       (XML.SAX.Parse_Exceptions.Internals.Create
         (Public_Id => Self.Locator.Public_Id,
          System_Id => Self.Locator.System_Id,
          Line      => Self.Locator.Line,
          Column    => Self.Locator.Column,
          Message   => Message),
        Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Error_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Error;

   --------------------------------------
   -- Call_External_Entity_Declaration --
   --------------------------------------

   procedure Call_External_Entity_Declaration
    (Self      : in out SAX_Simple_Reader'Class;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String) is
   begin
      Self.Declaration_Handler.External_Entity_Declaration
       (Name, Public_Id, System_Id, Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Declaration_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_External_Entity_Declaration;

   ----------------------
   -- Call_Fatal_Error --
   ----------------------

   procedure Call_Fatal_Error
    (Self    : in out SAX_Simple_Reader'Class;
     Message : League.Strings.Universal_String) is
   begin
      Self.Error_Handler.Fatal_Error
       (XML.SAX.Parse_Exceptions.Internals.Create
         (Public_Id => Self.Locator.Public_Id,
          System_Id => Self.Locator.System_Id,
          Line      => Self.Locator.Line,
          Column    => Self.Locator.Column,
          Message   => Message));

      Self.Continue       := False;
      Self.Error_Reported := True;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);

         --  Opposite to all other callbacks, where is no reason to call
         --  Fatal_Error here again.

         Self.Continue       := False;
         Self.Error_Reported := True;
   end Call_Fatal_Error;

   -------------------------------
   -- Call_Ignorable_Whitespace --
   -------------------------------

   procedure Call_Ignorable_Whitespace
    (Self : in out SAX_Simple_Reader'Class;
     Text : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Content_Handler.Ignorable_Whitespace
       (League.Strings.Internals.Create (Text), Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Content_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Ignorable_Whitespace;

   --------------------------------------
   -- Call_Internal_Entity_Declaration --
   --------------------------------------

   procedure Call_Internal_Entity_Declaration
    (Self  : in out SAX_Simple_Reader'Class;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String) is
   begin
      Self.Declaration_Handler.Internal_Entity_Declaration
       (Name, Value, Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Declaration_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Internal_Entity_Declaration;

   -------------------------------
   -- Call_Notation_Declaration --
   -------------------------------

   procedure Call_Notation_Declaration
    (Self      : in out SAX_Simple_Reader'Class;
     Name      : Matreshka.Internals.XML.Symbol_Identifier;
     Public_Id : not null Matreshka.Internals.Strings.Shared_String_Access;
     System_Id : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.DTD_Handler.Notation_Declaration
       (Name      =>
          Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Name),
        Public_Id => League.Strings.Internals.Create (Public_Id),
        System_Id => League.Strings.Internals.Create (System_Id),
        Success   => Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.DTD_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Notation_Declaration;

   ---------------------------------
   -- Call_Processing_Instruction --
   ---------------------------------

   procedure Call_Processing_Instruction
    (Self   : in out SAX_Simple_Reader'Class;
     Target : Matreshka.Internals.XML.Symbol_Identifier;
     Data   : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Content_Handler.Processing_Instruction
       (Target  =>
          Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Target),
        Data    => League.Strings.Internals.Create (Data),
        Success => Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Content_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Processing_Instruction;

   -------------------------
   -- Call_Resolve_Entity --
   -------------------------

   procedure Call_Resolve_Entity
    (Self      : in out SAX_Simple_Reader'Class;
     Entity    : Matreshka.Internals.XML.Entity_Identifier;
     Public_Id : not null Matreshka.Internals.Strings.Shared_String_Access;
     Base_URI  : not null Matreshka.Internals.Strings.Shared_String_Access;
     System_Id : not null Matreshka.Internals.Strings.Shared_String_Access;
     Source    : out XML.SAX.Input_Sources.SAX_Input_Source_Access)
   is
      use type XML.SAX.Readers.SAX_Entity_Resolver_Access;
      use type XML.SAX.Input_Sources.SAX_Input_Source_Access;

      Name_String      : League.Strings.Universal_String
        := Matreshka.Internals.XML.Symbol_Tables.Name
            (Self.Symbols,
             Matreshka.Internals.XML.Entity_Tables.Name
              (Self.Entities, Entity));
      Public_Id_String : constant League.Strings.Universal_String
        := League.Strings.Internals.Create (Public_Id);
      Base_URI_String  : constant League.Strings.Universal_String
        := League.Strings.Internals.Create (Base_URI);
      System_Id_String : constant League.Strings.Universal_String
        := League.Strings.Internals.Create (System_Id);

   begin
      --  Set Source to null for safety.

      Source := null;

      --  Try to use user defined entity resolver if specified first.

      if Self.Entity_Resolver /= null then
         if Matreshka.Internals.XML.Entity_Tables.Is_External_Subset
             (Self.Entities, Entity)
         then
            --  Name of external subset must be "[dtd]" always.

            Name_String := League.Strings.To_Universal_String ("[dtd]");

         elsif Matreshka.Internals.XML.Entity_Tables.Is_Parameter_Entity
             (Self.Entities, Entity)
         then
            --  Name of parameter entity must start from '%'.

            Name_String.Prepend ('%');
         end if;

         Self.Entity_Resolver.Resolve_Entity
          (Name      => Name_String,
           Public_Id => Public_Id_String,
           Base_URI  => Base_URI_String,
           System_Id => System_Id_String,
           Source    => Source,
           Success   => Self.Continue);

         if not Self.Continue then
            Call_Fatal_Error (Self, Self.Entity_Resolver.Error_String);

            return;
         end if;
      end if;

      --  Use built-in entity resolver when entity was not resolved by user
      --  defined entity resolver.

      if Source = null then
         XML.SAX.Simple_Readers.Resolver.Resolve_Entity
          (Public_Id     => Public_Id_String,
           Base_URI      => Base_URI_String,
           System_Id     => System_Id_String,
           Source        => Source,
           Success       => Self.Continue,
           Error_Message => Self.Error_Message);

         if not Self.Continue then
            Call_Fatal_Error (Self, Self.Error_Message);

            return;
         end if;
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("exception come from entity resolver"));
   end Call_Resolve_Entity;

   -------------------------------
   -- Call_Set_Document_Locator --
   -------------------------------

   procedure Call_Set_Document_Locator
    (Self : in out SAX_Simple_Reader'Class) is
   begin
      Self.Content_Handler.Set_Document_Locator
       (XML.SAX.Locators.Internals.Create
         (Matreshka.Internals.SAX_Locators.Shared_Locator_Access
           (Self.Locator)));

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Set_Document_Locator;

   -------------------------
   -- Call_Start_Document --
   -------------------------

   procedure Call_Start_Document (Self : in out SAX_Simple_Reader'Class) is
   begin
      Self.Content_Handler.Start_Document (Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Content_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Start_Document;

   --------------------
   -- Call_Start_DTD --
   --------------------

   procedure Call_Start_DTD
    (Self      : in out SAX_Simple_Reader'Class;
     Name      : Matreshka.Internals.XML.Symbol_Identifier;
     Public_Id : not null Matreshka.Internals.Strings.Shared_String_Access;
     System_Id : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Lexical_Handler.Start_DTD
       (Name      =>
          Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Name),
        Public_Id => League.Strings.Internals.Create (Public_Id),
        System_Id => League.Strings.Internals.Create (System_Id),
        Success   => Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Lexical_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Start_DTD;

   ------------------------
   -- Call_Start_Element --
   ------------------------

   procedure Call_Start_Element
    (Self           : in out SAX_Simple_Reader'Class;
     Namespace_URI  :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Local_Name     :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Qualified_Name :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Attributes     : XML.SAX.Attributes.SAX_Attributes) is
   begin
      Self.Content_Handler.Start_Element
       (Namespace_URI  => League.Strings.Internals.Create (Namespace_URI),
        Local_Name     => League.Strings.Internals.Create (Local_Name),
        Qualified_Name => League.Strings.Internals.Create (Qualified_Name),
        Attributes     => Attributes,
        Success        => Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Content_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Start_Element;

   -------------------------------
   -- Call_Start_Prefix_Mapping --
   -------------------------------

   procedure Call_Start_Prefix_Mapping
    (Self          : in out SAX_Simple_Reader'Class;
     Prefix         :
       not null Matreshka.Internals.Strings.Shared_String_Access;
     Namespace_URI  :
       not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Content_Handler.Start_Prefix_Mapping
       (Prefix        => League.Strings.Internals.Create (Prefix),
        Namespace_URI => League.Strings.Internals.Create (Namespace_URI),
        Success       => Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Content_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Start_Prefix_Mapping;

   --------------------------------------
   -- Call_Unparsed_Entity_Declaration --
   --------------------------------------

   procedure Call_Unparsed_Entity_Declaration
    (Self          : in out SAX_Simple_Reader'Class;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String) is
   begin
      Self.DTD_Handler.Unparsed_Entity_Declaration
       (Name, Public_Id, System_Id, Notation_Name, Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.DTD_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Unparsed_Entity_Declaration;

   ------------------
   -- Call_Warning --
   ------------------

   procedure Call_Warning
    (Self    : in out SAX_Simple_Reader'Class;
     Message : League.Strings.Universal_String) is
   begin
      Self.Error_Handler.Warning
       (XML.SAX.Parse_Exceptions.Internals.Create
         (Public_Id => Self.Locator.Public_Id,
          System_Id => Self.Locator.System_Id,
          Line      => Self.Locator.Line,
          Column    => Self.Locator.Column,
          Message   => Message),
        Self.Continue);

      if not Self.Continue then
         Call_Fatal_Error (Self, Self.Error_Handler.Error_String);
      end if;

   exception
      when E : others =>
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
         Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String ("exception come from handler"));
   end Call_Warning;

end XML.SAX.Simple_Readers.Callbacks;
