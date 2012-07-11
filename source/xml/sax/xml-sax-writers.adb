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
with League.Text_Codecs;

package body XML.SAX.Writers is

   ----------------
   -- Characters --
   ----------------

   procedure Characters
    (Self : in out SAX_Writer'Class;
     Text : League.Strings.Universal_String)
   is
      Success : Boolean := True;

   begin
      Self.Characters (Text, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end Characters;

   -------------
   -- Comment --
   -------------

   procedure Comment
    (Self : in out SAX_Writer'Class;
     Text : League.Strings.Universal_String)
   is
      Success : Boolean := True;

   begin
      Self.Comment (Text, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end Comment;

   ---------------
   -- End_CDATA --
   ---------------

   procedure End_CDATA (Self : in out SAX_Writer'Class) is
      Success : Boolean := True;

   begin
      Self.End_CDATA (Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end End_CDATA;

   ------------------
   -- End_Document --
   ------------------

   procedure End_Document (Self : in out SAX_Writer'Class) is
      Success : Boolean := True;

   begin
      Self.End_Document (Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end End_Document;

   -------------
   -- End_DTD --
   -------------

   procedure End_DTD (Self : in out SAX_Writer'Class) is
      Success : Boolean := True;

   begin
      Self.End_DTD (Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end End_DTD;

   -----------------
   -- End_Element --
   -----------------

   procedure End_Element
    (Self           : in out SAX_Writer'Class;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
   is
      Success : Boolean := True;

   begin
      Self.End_Element (Namespace_URI, Local_Name, Qualified_Name, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end End_Element;

   -----------------
   -- End_Element --
   -----------------

   procedure End_Element
    (Self          : in out SAX_Writer'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String) is
   begin
      Self.End_Element
       (Namespace_URI  => Namespace_URI,
        Local_Name     => Local_Name,
        Qualified_Name => League.Strings.Empty_Universal_String);
   end End_Element;

   -----------------
   -- End_Element --
   -----------------

   procedure End_Element
    (Self           : in out SAX_Writer'Class;
     Qualified_Name : League.Strings.Universal_String) is
   begin
      Self.End_Element
       (Namespace_URI  => League.Strings.Empty_Universal_String,
        Local_Name     => League.Strings.Empty_Universal_String,
        Qualified_Name => Qualified_Name);
   end End_Element;

   -----------------
   -- End_Element --
   -----------------

   procedure End_Element
    (Self          : in out SAX_Writer'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String;
     Success       : in out Boolean) is
   begin
      Self.End_Element
       (Namespace_URI  => Namespace_URI,
        Local_Name     => Local_Name,
        Qualified_Name => League.Strings.Empty_Universal_String,
        Success        => Success);
   end End_Element;

   -----------------
   -- End_Element --
   -----------------

   procedure End_Element
    (Self           : in out SAX_Writer'Class;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean) is
   begin
      Self.End_Element
       (Namespace_URI  => League.Strings.Empty_Universal_String,
        Local_Name     => League.Strings.Empty_Universal_String,
        Qualified_Name => Qualified_Name,
        Success        => Success);
   end End_Element;

   ----------------
   -- End_Entity --
   ----------------

   procedure End_Entity
    (Self : in out SAX_Writer'Class;
     Name : League.Strings.Universal_String)
   is
      Success : Boolean := True;

   begin
      Self.End_Entity (Name, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end End_Entity;

   ------------------------
   -- End_Prefix_Mapping --
   ------------------------

   procedure End_Prefix_Mapping
    (Self   : in out SAX_Writer'Class;
     Prefix : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String)
   is
      Success : Boolean := True;

   begin
      Self.End_Entity (Prefix, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end End_Prefix_Mapping;

   --------------------------
   -- Ignorable_Whitespace --
   --------------------------

   procedure Ignorable_Whitespace
    (Self : in out SAX_Writer'Class;
     Text : League.Strings.Universal_String)
   is
      Success : Boolean := True;

   begin
      Self.Ignorable_Whitespace (Text, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end Ignorable_Whitespace;

   ----------------------------
   -- Processing_Instruction --
   ----------------------------

   procedure Processing_Instruction
    (Self   : in out SAX_Writer'Class;
     Target : League.Strings.Universal_String;
     Data   : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String)
   is
      Success : Boolean := True;

   begin
      Self.Processing_Instruction (Target, Data, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end Processing_Instruction;

   --------------------
   -- Skipped_Entity --
   --------------------

   procedure Skipped_Entity
    (Self : in out SAX_Writer'Class;
     Name : League.Strings.Universal_String)
   is
      Success : Boolean := True;

   begin
      Self.Skipped_Entity (Name, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end Skipped_Entity;

   -----------------
   -- Start_CDATA --
   -----------------

   procedure Start_CDATA (Self : in out SAX_Writer'Class) is
      Success : Boolean := True;

   begin
      Self.Start_CDATA (Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end Start_CDATA;

   --------------------
   -- Start_Document --
   --------------------

   procedure Start_Document (Self : in out SAX_Writer'Class) is
      Success : Boolean := True;

   begin
      Self.Start_Document (Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end Start_Document;

   ---------------
   -- Start_DTD --
   ---------------

   procedure Start_DTD
    (Self      : in out SAX_Writer'Class;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     System_Id : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String)
   is
      Success : Boolean := True;

   begin
      Self.Start_DTD (Name, Public_Id, System_Id, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end Start_DTD;

   -------------------
   -- Start_Element --
   -------------------

   procedure Start_Element
    (Self           : in out SAX_Writer'Class;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes
       := XML.SAX.Attributes.Empty_SAX_Attributes)
   is
      Success : Boolean := True;

   begin
      Self.Start_Element
       (Namespace_URI, Local_Name, Qualified_Name, Attributes, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end Start_Element;

   -------------------
   -- Start_Element --
   -------------------

   procedure Start_Element
    (Self          : in out SAX_Writer'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String;
     Attributes    : XML.SAX.Attributes.SAX_Attributes
       := XML.SAX.Attributes.Empty_SAX_Attributes) is
   begin
      Self.Start_Element
       (Namespace_URI  => Namespace_URI,
        Local_Name     => Local_Name,
        Qualified_Name => League.Strings.Empty_Universal_String,
        Attributes     => Attributes);
   end Start_Element;

   -------------------
   -- Start_Element --
   -------------------

   procedure Start_Element
    (Self           : in out SAX_Writer'Class;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes
       := XML.SAX.Attributes.Empty_SAX_Attributes) is
   begin
      Self.Start_Element
       (Namespace_URI  => League.Strings.Empty_Universal_String,
        Local_Name     => League.Strings.Empty_Universal_String,
        Qualified_Name => Qualified_Name,
        Attributes     => Attributes);
   end Start_Element;

   -------------------
   -- Start_Element --
   -------------------

   procedure Start_Element
    (Self          : in out SAX_Writer'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String;
     Attributes    : XML.SAX.Attributes.SAX_Attributes
       := XML.SAX.Attributes.Empty_SAX_Attributes;
     Success       : in out Boolean) is
   begin
      Self.Start_Element
       (Namespace_URI  => Namespace_URI,
        Local_Name     => Local_Name,
        Qualified_Name => League.Strings.Empty_Universal_String,
        Attributes     => Attributes,
        Success        => Success);
   end Start_Element;

   -------------------
   -- Start_Element --
   -------------------

   procedure Start_Element
    (Self           : in out SAX_Writer'Class;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes
       := XML.SAX.Attributes.Empty_SAX_Attributes;
     Success        : in out Boolean) is
   begin
      Self.Start_Element
       (Namespace_URI  => League.Strings.Empty_Universal_String,
        Local_Name     => League.Strings.Empty_Universal_String,
        Qualified_Name => Qualified_Name,
        Attributes     => Attributes,
        Success        => Success);
   end Start_Element;

   ------------------
   -- Start_Entity --
   ------------------

   procedure Start_Entity
    (Self : in out SAX_Writer'Class;
     Name : League.Strings.Universal_String)
   is
      Success : Boolean := True;

   begin
      Self.Start_Entity (Name, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end Start_Entity;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   procedure Start_Prefix_Mapping
    (Self          : in out SAX_Writer'Class;
     Prefix        : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Namespace_URI : League.Strings.Universal_String)
   is
      Success : Boolean := True;

   begin
      Self.Start_Prefix_Mapping (Prefix, Namespace_URI, Success);

      if not Success then
         raise Constraint_Error
           with League.Text_Codecs.To_Exception_Message (Self.Error_String);
      end if;
   end Start_Prefix_Mapping;

end XML.SAX.Writers;
