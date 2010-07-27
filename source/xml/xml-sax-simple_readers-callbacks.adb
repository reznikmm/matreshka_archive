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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body XML.SAX.Simple_Readers.Callbacks is

   procedure Setup_Locator (Self : in out SAX_Simple_Reader'Class);
   --  Sets up locator.

   ---------------------
   -- Call_Characters --
   ---------------------

   procedure Call_Characters
    (Self : in out SAX_Simple_Reader'Class;
     Text : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Setup_Locator (Self);
      Self.Content_Handler.Characters
       (League.Strings.Internals.Create (Text), Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Content_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Characters;

   ------------------
   -- Call_Comment --
   ------------------

   procedure Call_Comment
    (Self    : in out SAX_Simple_Reader'Class;
     Comment : League.Strings.Universal_String) is
   begin
      Setup_Locator (Self);
      Self.Lexical_Handler.Comment (Comment, Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Lexical_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Comment;

   -----------------------
   -- Call_End_Document --
   -----------------------

   procedure Call_End_Document (Self : in out SAX_Simple_Reader'Class) is
   begin
      Setup_Locator (Self);
      Self.Content_Handler.End_Document (Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Content_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_End_Document;

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
      Setup_Locator (Self);
      Self.Content_Handler.End_Element
       (Namespace_URI  => League.Strings.Internals.Create (Namespace_URI),
        Local_Name     => League.Strings.Internals.Create (Local_Name),
        Qualified_Name => League.Strings.Internals.Create (Qualified_Name),
        Success        => Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Content_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_End_Element;

   ----------------
   -- Call_Error --
   ----------------

   procedure Call_Error
    (Self    : in out SAX_Simple_Reader'Class;
     Message : League.Strings.Universal_String) is
   begin
      Setup_Locator (Self);
      Self.Error_Handler.Error
       (XML.SAX.Parse_Exceptions.Internals.Create
         (Public_Id => League.Strings.Empty_Universal_String,
          System_Id => League.Strings.Empty_Universal_String,
          Line      => 0,
          Column    => 0,
          Message   => Message),
        Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Content_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
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
      Setup_Locator (Self);
      Self.Declaration_Handler.External_Entity_Declaration
       (Name, Public_Id, System_Id, Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Declaration_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_External_Entity_Declaration;

   ----------------------
   -- Call_Fatal_Error --
   ----------------------

   procedure Call_Fatal_Error
    (Self    : in out SAX_Simple_Reader'Class;
     Message : League.Strings.Universal_String) is
   begin
      Setup_Locator (Self);
      Self.Error_Handler.Fatal_Error
       (XML.SAX.Parse_Exceptions.Internals.Create
         (Public_Id => League.Strings.Empty_Universal_String,
          System_Id => League.Strings.Empty_Universal_String,
          Line      => 0,
          Column    => 0,
          Message   => Message),
        Self.Continue);

      if not Self.Continue then
         --  When error handler ask to terminate processing use its error
         --  message to report.

         Self.Error_Message := Self.Content_Handler.Error_String;

      else
         --  Otherwise, use reader's message and terminate processing.

         Self.Error_Message := Message;
         Self.Continue      := False;
      end if;

      Self.Error_Reported := True;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Fatal_Error;

   -------------------------------
   -- Call_Ignorable_Whitespace --
   -------------------------------

   procedure Call_Ignorable_Whitespace
    (Self : in out SAX_Simple_Reader'Class;
     Text : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Setup_Locator (Self);
      Self.Content_Handler.Ignorable_Whitespace
       (League.Strings.Internals.Create (Text), Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Content_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Ignorable_Whitespace;

   --------------------------------------
   -- Call_Internal_Entity_Declaration --
   --------------------------------------

   procedure Call_Internal_Entity_Declaration
    (Self  : in out SAX_Simple_Reader'Class;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String) is
   begin
      Setup_Locator (Self);
      Self.Declaration_Handler.Internal_Entity_Declaration
       (Name, Value, Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Declaration_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Internal_Entity_Declaration;

   ---------------------------------
   -- Call_Processing_Instruction --
   ---------------------------------

   procedure Call_Processing_Instruction
    (Self   : in out SAX_Simple_Reader'Class;
     Target : Matreshka.Internals.XML.Symbol_Identifier;
     Data   : League.Strings.Universal_String) is
   begin
      Setup_Locator (Self);
      Self.Content_Handler.Processing_Instruction
       (Target  =>
          Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Target),
        Data    => Data,
        Success => Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Content_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Processing_Instruction;

   -------------------------
   -- Call_Resolve_Entity --
   -------------------------

   procedure Call_Resolve_Entity
    (Self      : in out SAX_Simple_Reader'Class;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Source    : out XML.SAX.Input_Sources.SAX_Input_Source_Access) is
   begin
      Self.Entity_Resolver.Resolve_Entity
       (Public_Id => Public_Id,
        System_Id => System_Id,
        Source    => Source,
        Success   => Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Content_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String
            ("exception come from entity resolver");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Resolve_Entity;

   -------------------------------
   -- Call_Set_Document_Locator --
   -------------------------------

   procedure Call_Set_Document_Locator
    (Self    : in out SAX_Simple_Reader'Class;
     Locator : XML.SAX.Locators.SAX_Locator) is
   begin
      Self.Content_Handler.Set_Document_Locator (Locator);

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Set_Document_Locator;

   -------------------------
   -- Call_Start_Document --
   -------------------------

   procedure Call_Start_Document (Self : in out SAX_Simple_Reader'Class) is
   begin
      Setup_Locator (Self);
      Self.Content_Handler.Start_Document (Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Content_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Start_Document;

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
      Setup_Locator (Self);
      Self.Content_Handler.Start_Element
       (Namespace_URI  => League.Strings.Internals.Create (Namespace_URI),
        Local_Name     => League.Strings.Internals.Create (Local_Name),
        Qualified_Name => League.Strings.Internals.Create (Qualified_Name),
        Attributes     => Attributes,
        Success        => Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Content_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Start_Element;

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
      Setup_Locator (Self);
      Self.DTD_Handler.Unparsed_Entity_Declaration
       (Name, Public_Id, System_Id, Notation_Name, Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.DTD_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Unparsed_Entity_Declaration;

   ------------------
   -- Call_Warning --
   ------------------

   procedure Call_Warning
    (Self    : in out SAX_Simple_Reader'Class;
     Message : League.Strings.Universal_String) is
   begin
      Setup_Locator (Self);
      Self.Error_Handler.Warning
       (XML.SAX.Parse_Exceptions.Internals.Create
         (Public_Id => League.Strings.Empty_Universal_String,
          System_Id => League.Strings.Empty_Universal_String,
          Line      => 0,
          Column    => 0,
          Message   => Message),
        Self.Continue);

      if not Self.Continue then
         Self.Error_Message := Self.Content_Handler.Error_String;
      end if;

   exception
      when E : others =>
         Self.Continue      := False;
         Self.Error_Message :=
           League.Strings.To_Universal_String ("exception come from handler");
         Ada.Exceptions.Save_Occurrence (Self.User_Exception, E);
   end Call_Warning;

   -------------------
   -- Setup_Locator --
   -------------------

   procedure Setup_Locator (Self : in out SAX_Simple_Reader'Class) is
   begin
      XML.SAX.Locators.Internals.Set_Location
       (Self.Locator,
        Self.Scanner_State.YY_Base_Line,
        Self.Scanner_State.YY_Base_Column);
   end Setup_Locator;

end XML.SAX.Simple_Readers.Callbacks;
