private with Ada.Containers.Vectors;
private with Ada.Finalization;

private with Matreshka.Internals.Strings;
private with Matreshka.Internals.Unicode;
private with Matreshka.Internals.Utf16;

with XML.SAX.Readers;
with Sources;

package XML.SAX.Validating_Readers is

   type SAX_Validating_Reader is
     limited new XML.SAX.Readers.SAX_Reader with private;

   procedure Parse
    (Self   : in out SAX_Validating_Reader'Class;
     Source : not null Sources.Source_Access);
   --  Parse data from the specified source.

   procedure Parse_Incremental
    (Self   : in out SAX_Validating_Reader'Class;
     Source : not null Sources.Source_Access);
   --  Initialize incremental parsing and parse exists data. To parse next
   --  chunk call Parse_Next.

   procedure Parse_Next (Self : in out SAX_Validating_Reader'Class);
   --  Parse next portion of data available in source.

private

   ----------------------------
   -- Entity reference stack --
   ----------------------------

   type Entity_Identifier is new Natural;

   type Entity_Reference is record
      Entity      : Entity_Identifier;
      Is_Document : Boolean;
      Source      : Sources.Source_Access;
      Text        : Matreshka.Internals.Strings.Shared_String_Access;
      Position    : Matreshka.Internals.Utf16.Utf16_String_Index;
      Line        : Natural;
      Column      : Natural;
      Skip_LF     : Boolean;
   end record;

   package Entiry_Reference_Vectors is
     new Ada.Containers.Vectors (Positive, Entity_Reference);

   -----------------------
   -- Parse state stack --
   -----------------------

   type Parser_Statuses is (Continue, End_Of_Data, Error);

   type Parser_States is mod 2 ** 8;

   type Parse_Subprogram is
     access procedure (Self : in out SAX_Validating_Reader'Class);

   type Parse_State is record
      Subprogram : Parse_Subprogram;
      State      : Parser_States;
   end record;

   package Parse_State_Vectors is
     new Ada.Containers.Vectors (Positive, Parse_State);

   ------------
   -- Reader --
   ------------

   type SAX_Validating_Reader is
     limited new Ada.Finalization.Limited_Controlled
       and XML.SAX.Readers.SAX_Reader with
   record
      --  Event handlers

      Content_Handler          : XML.SAX.Readers.SAX_Content_Handler_Access;
      Declaration_Handler      : XML.SAX.Readers.SAX_Declaration_Handler_Access;
      DTD_Handler              : XML.SAX.Readers.SAX_DTD_Handler_Access;
      Entity_Resolver          : XML.SAX.Readers.SAX_Entity_Resolver_Access;
      Error_Handler            : XML.SAX.Readers.SAX_Error_Handler_Access;
      Lexical_Handler          : XML.SAX.Readers.SAX_Lexical_Handler_Access;

      --  Entity references stack

      Current_Entity_Reference : Entity_Reference;
      Entity_Reference_Stack   : Entiry_Reference_Vectors.Vector;

      --  Current code point and input source status

      Code                     : Matreshka.Internals.Unicode.Code_Point;
      Source_Status            : Sources.Read_Status;
      Parser_Status            : Parser_Statuses;

      --  Parse state stack, used in incremental mode only.

      Parse_State_Stack        : Parse_State_Vectors.Vector;

      --  Buffers to accumulate text data

      Name_Buffer              :
        Matreshka.Internals.Strings.Shared_String_Access
          := Matreshka.Internals.Strings.Shared_Empty'Access;
   end record;

   --  Overrided subprograms

   overriding procedure Initialize (Self : in out SAX_Validating_Reader);

   overriding procedure Finalize (Self : in out SAX_Validating_Reader);

   overriding function Content_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Content_Handler_Access;

   overriding function Declaration_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Declaration_Handler_Access;

   overriding function DTD_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_DTD_Handler_Access;

   overriding function Entity_Resolver
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Entity_Resolver_Access;

   overriding function Error_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Error_Handler_Access;

   overriding function Lexical_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Lexical_Handler_Access;

   overriding procedure Set_Content_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Content_Handler_Access);

   overriding procedure Set_Declaration_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Declaration_Handler_Access);

   overriding procedure Set_DTD_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_DTD_Handler_Access);

   overriding procedure Set_Entity_Resolver
    (Self     : not null access SAX_Validating_Reader;
     Resolver : XML.SAX.Readers.SAX_Entity_Resolver_Access);

   overriding procedure Set_Error_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Error_Handler_Access);

   overriding procedure Set_Lexical_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Lexical_Handler_Access);

end XML.SAX.Validating_Readers;
