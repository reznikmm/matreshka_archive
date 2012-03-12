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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Strings;

package AMF.Internals.Tables.Primitive_Types_String_Data_00 is

   --  "primitives"

   MS_0000 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 15,
         Unused => 10,
         Length => 10,
         Value  =>
          (16#0070#, 16#0072#, 16#0069#, 16#006D#,
           16#0069#, 16#0074#, 16#0069#, 16#0076#,
           16#0065#, 16#0073#,
           others => 16#0000#),
         others => <>);

   --  "http://www.omg.org/spec/PrimitiveTypes/20100901"

   MS_0001 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 55,
         Unused => 47,
         Length => 47,
         Value  =>
          (16#0068#, 16#0074#, 16#0074#, 16#0070#,
           16#003A#, 16#002F#, 16#002F#, 16#0077#,
           16#0077#, 16#0077#, 16#002E#, 16#006F#,
           16#006D#, 16#0067#, 16#002E#, 16#006F#,
           16#0072#, 16#0067#, 16#002F#, 16#0073#,
           16#0070#, 16#0065#, 16#0063#, 16#002F#,
           16#0050#, 16#0072#, 16#0069#, 16#006D#,
           16#0069#, 16#0074#, 16#0069#, 16#0076#,
           16#0065#, 16#0054#, 16#0079#, 16#0070#,
           16#0065#, 16#0073#, 16#002F#, 16#0032#,
           16#0030#, 16#0031#, 16#0030#, 16#0030#,
           16#0039#, 16#0030#, 16#0031#,
           others => 16#0000#),
         others => <>);

   --  "UnlimitedNatural"

   MS_0002 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 23,
         Unused => 16,
         Length => 16,
         Value  =>
          (16#0055#, 16#006E#, 16#006C#, 16#0069#,
           16#006D#, 16#0069#, 16#0074#, 16#0065#,
           16#0064#, 16#004E#, 16#0061#, 16#0074#,
           16#0075#, 16#0072#, 16#0061#, 16#006C#,
           others => 16#0000#),
         others => <>);

   --  "Integer"

   MS_0003 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 15,
         Unused => 7,
         Length => 7,
         Value  =>
          (16#0049#, 16#006E#, 16#0074#, 16#0065#,
           16#0067#, 16#0065#, 16#0072#,
           others => 16#0000#),
         others => <>);

   --  "org.omg.xmi.schemaType"

   MS_0004 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 23,
         Unused => 22,
         Length => 22,
         Value  =>
          (16#006F#, 16#0072#, 16#0067#, 16#002E#,
           16#006F#, 16#006D#, 16#0067#, 16#002E#,
           16#0078#, 16#006D#, 16#0069#, 16#002E#,
           16#0073#, 16#0063#, 16#0068#, 16#0065#,
           16#006D#, 16#0061#, 16#0054#, 16#0079#,
           16#0070#, 16#0065#,
           others => 16#0000#),
         others => <>);

   --  "http://www.w3.org/2001/XMLSchema#boolean"

   MS_0005 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 47,
         Unused => 40,
         Length => 40,
         Value  =>
          (16#0068#, 16#0074#, 16#0074#, 16#0070#,
           16#003A#, 16#002F#, 16#002F#, 16#0077#,
           16#0077#, 16#0077#, 16#002E#, 16#0077#,
           16#0033#, 16#002E#, 16#006F#, 16#0072#,
           16#0067#, 16#002F#, 16#0032#, 16#0030#,
           16#0030#, 16#0031#, 16#002F#, 16#0058#,
           16#004D#, 16#004C#, 16#0053#, 16#0063#,
           16#0068#, 16#0065#, 16#006D#, 16#0061#,
           16#0023#, 16#0062#, 16#006F#, 16#006F#,
           16#006C#, 16#0065#, 16#0061#, 16#006E#,
           others => 16#0000#),
         others => <>);

   --  "A Boolean type is used for logical expression, consisting of the predefined values true and false."

   MS_0006 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 103,
         Unused => 98,
         Length => 98,
         Value  =>
          (16#0041#, 16#0020#, 16#0042#, 16#006F#,
           16#006F#, 16#006C#, 16#0065#, 16#0061#,
           16#006E#, 16#0020#, 16#0074#, 16#0079#,
           16#0070#, 16#0065#, 16#0020#, 16#0069#,
           16#0073#, 16#0020#, 16#0075#, 16#0073#,
           16#0065#, 16#0064#, 16#0020#, 16#0066#,
           16#006F#, 16#0072#, 16#0020#, 16#006C#,
           16#006F#, 16#0067#, 16#0069#, 16#0063#,
           16#0061#, 16#006C#, 16#0020#, 16#0065#,
           16#0078#, 16#0070#, 16#0072#, 16#0065#,
           16#0073#, 16#0073#, 16#0069#, 16#006F#,
           16#006E#, 16#002C#, 16#0020#, 16#0063#,
           16#006F#, 16#006E#, 16#0073#, 16#0069#,
           16#0073#, 16#0074#, 16#0069#, 16#006E#,
           16#0067#, 16#0020#, 16#006F#, 16#0066#,
           16#0020#, 16#0074#, 16#0068#, 16#0065#,
           16#0020#, 16#0070#, 16#0072#, 16#0065#,
           16#0064#, 16#0065#, 16#0066#, 16#0069#,
           16#006E#, 16#0065#, 16#0064#, 16#0020#,
           16#0076#, 16#0061#, 16#006C#, 16#0075#,
           16#0065#, 16#0073#, 16#0020#, 16#0074#,
           16#0072#, 16#0075#, 16#0065#, 16#0020#,
           16#0061#, 16#006E#, 16#0064#, 16#0020#,
           16#0066#, 16#0061#, 16#006C#, 16#0073#,
           16#0065#, 16#002E#,
           others => 16#0000#),
         others => <>);

   --  "http://www.w3.org/2001/XMLSchema#double"

   MS_0007 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 47,
         Unused => 39,
         Length => 39,
         Value  =>
          (16#0068#, 16#0074#, 16#0074#, 16#0070#,
           16#003A#, 16#002F#, 16#002F#, 16#0077#,
           16#0077#, 16#0077#, 16#002E#, 16#0077#,
           16#0033#, 16#002E#, 16#006F#, 16#0072#,
           16#0067#, 16#002F#, 16#0032#, 16#0030#,
           16#0030#, 16#0031#, 16#002F#, 16#0058#,
           16#004D#, 16#004C#, 16#0053#, 16#0063#,
           16#0068#, 16#0065#, 16#006D#, 16#0061#,
           16#0023#, 16#0064#, 16#006F#, 16#0075#,
           16#0062#, 16#006C#, 16#0065#,
           others => 16#0000#),
         others => <>);

   --  "A real is a primitive type representing the mathematical concept of real."

   MS_0008 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 79,
         Unused => 73,
         Length => 73,
         Value  =>
          (16#0041#, 16#0020#, 16#0072#, 16#0065#,
           16#0061#, 16#006C#, 16#0020#, 16#0069#,
           16#0073#, 16#0020#, 16#0061#, 16#0020#,
           16#0070#, 16#0072#, 16#0069#, 16#006D#,
           16#0069#, 16#0074#, 16#0069#, 16#0076#,
           16#0065#, 16#0020#, 16#0074#, 16#0079#,
           16#0070#, 16#0065#, 16#0020#, 16#0072#,
           16#0065#, 16#0070#, 16#0072#, 16#0065#,
           16#0073#, 16#0065#, 16#006E#, 16#0074#,
           16#0069#, 16#006E#, 16#0067#, 16#0020#,
           16#0074#, 16#0068#, 16#0065#, 16#0020#,
           16#006D#, 16#0061#, 16#0074#, 16#0068#,
           16#0065#, 16#006D#, 16#0061#, 16#0074#,
           16#0069#, 16#0063#, 16#0061#, 16#006C#,
           16#0020#, 16#0063#, 16#006F#, 16#006E#,
           16#0063#, 16#0065#, 16#0070#, 16#0074#,
           16#0020#, 16#006F#, 16#0066#, 16#0020#,
           16#0072#, 16#0065#, 16#0061#, 16#006C#,
           16#002E#,
           others => 16#0000#),
         others => <>);

   --  "Boolean"

   MS_0009 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 15,
         Unused => 7,
         Length => 7,
         Value  =>
          (16#0042#, 16#006F#, 16#006F#, 16#006C#,
           16#0065#, 16#0061#, 16#006E#,
           others => 16#0000#),
         others => <>);

   --  "An unlimited natural is a primitive type representing unlimited natural values."

   MS_000A : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 87,
         Unused => 79,
         Length => 79,
         Value  =>
          (16#0041#, 16#006E#, 16#0020#, 16#0075#,
           16#006E#, 16#006C#, 16#0069#, 16#006D#,
           16#0069#, 16#0074#, 16#0065#, 16#0064#,
           16#0020#, 16#006E#, 16#0061#, 16#0074#,
           16#0075#, 16#0072#, 16#0061#, 16#006C#,
           16#0020#, 16#0069#, 16#0073#, 16#0020#,
           16#0061#, 16#0020#, 16#0070#, 16#0072#,
           16#0069#, 16#006D#, 16#0069#, 16#0074#,
           16#0069#, 16#0076#, 16#0065#, 16#0020#,
           16#0074#, 16#0079#, 16#0070#, 16#0065#,
           16#0020#, 16#0072#, 16#0065#, 16#0070#,
           16#0072#, 16#0065#, 16#0073#, 16#0065#,
           16#006E#, 16#0074#, 16#0069#, 16#006E#,
           16#0067#, 16#0020#, 16#0075#, 16#006E#,
           16#006C#, 16#0069#, 16#006D#, 16#0069#,
           16#0074#, 16#0065#, 16#0064#, 16#0020#,
           16#006E#, 16#0061#, 16#0074#, 16#0075#,
           16#0072#, 16#0061#, 16#006C#, 16#0020#,
           16#0076#, 16#0061#, 16#006C#, 16#0075#,
           16#0065#, 16#0073#, 16#002E#,
           others => 16#0000#),
         others => <>);

   --  "An integer is a primitive type representing integer values."

   MS_000B : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 63,
         Unused => 59,
         Length => 59,
         Value  =>
          (16#0041#, 16#006E#, 16#0020#, 16#0069#,
           16#006E#, 16#0074#, 16#0065#, 16#0067#,
           16#0065#, 16#0072#, 16#0020#, 16#0069#,
           16#0073#, 16#0020#, 16#0061#, 16#0020#,
           16#0070#, 16#0072#, 16#0069#, 16#006D#,
           16#0069#, 16#0074#, 16#0069#, 16#0076#,
           16#0065#, 16#0020#, 16#0074#, 16#0079#,
           16#0070#, 16#0065#, 16#0020#, 16#0072#,
           16#0065#, 16#0070#, 16#0072#, 16#0065#,
           16#0073#, 16#0065#, 16#006E#, 16#0074#,
           16#0069#, 16#006E#, 16#0067#, 16#0020#,
           16#0069#, 16#006E#, 16#0074#, 16#0065#,
           16#0067#, 16#0065#, 16#0072#, 16#0020#,
           16#0076#, 16#0061#, 16#006C#, 16#0075#,
           16#0065#, 16#0073#, 16#002E#,
           others => 16#0000#),
         others => <>);

   --  "http://www.w3.org/2001/XMLSchema#integer"

   MS_000C : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 47,
         Unused => 40,
         Length => 40,
         Value  =>
          (16#0068#, 16#0074#, 16#0074#, 16#0070#,
           16#003A#, 16#002F#, 16#002F#, 16#0077#,
           16#0077#, 16#0077#, 16#002E#, 16#0077#,
           16#0033#, 16#002E#, 16#006F#, 16#0072#,
           16#0067#, 16#002F#, 16#0032#, 16#0030#,
           16#0030#, 16#0031#, 16#002F#, 16#0058#,
           16#004D#, 16#004C#, 16#0053#, 16#0063#,
           16#0068#, 16#0065#, 16#006D#, 16#0061#,
           16#0023#, 16#0069#, 16#006E#, 16#0074#,
           16#0065#, 16#0067#, 16#0065#, 16#0072#,
           others => 16#0000#),
         others => <>);

   --  "Real"

   MS_000D : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 7,
         Unused => 4,
         Length => 4,
         Value  =>
          (16#0052#, 16#0065#, 16#0061#, 16#006C#,
           others => 16#0000#),
         others => <>);

   --  "PrimitiveTypes"

   MS_000E : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 15,
         Unused => 14,
         Length => 14,
         Value  =>
          (16#0050#, 16#0072#, 16#0069#, 16#006D#,
           16#0069#, 16#0074#, 16#0069#, 16#0076#,
           16#0065#, 16#0054#, 16#0079#, 16#0070#,
           16#0065#, 16#0073#,
           others => 16#0000#),
         others => <>);

   --  "org.omg.xmi.nsPrefix"

   MS_000F : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 23,
         Unused => 20,
         Length => 20,
         Value  =>
          (16#006F#, 16#0072#, 16#0067#, 16#002E#,
           16#006F#, 16#006D#, 16#0067#, 16#002E#,
           16#0078#, 16#006D#, 16#0069#, 16#002E#,
           16#006E#, 16#0073#, 16#0050#, 16#0072#,
           16#0065#, 16#0066#, 16#0069#, 16#0078#,
           others => 16#0000#),
         others => <>);

   --  "A string is a sequence of characters in some suitable character set used to display information about the model. Character sets may include non-Roman alphabets and characters."

   MS_0010 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 183,
         Unused => 175,
         Length => 175,
         Value  =>
          (16#0041#, 16#0020#, 16#0073#, 16#0074#,
           16#0072#, 16#0069#, 16#006E#, 16#0067#,
           16#0020#, 16#0069#, 16#0073#, 16#0020#,
           16#0061#, 16#0020#, 16#0073#, 16#0065#,
           16#0071#, 16#0075#, 16#0065#, 16#006E#,
           16#0063#, 16#0065#, 16#0020#, 16#006F#,
           16#0066#, 16#0020#, 16#0063#, 16#0068#,
           16#0061#, 16#0072#, 16#0061#, 16#0063#,
           16#0074#, 16#0065#, 16#0072#, 16#0073#,
           16#0020#, 16#0069#, 16#006E#, 16#0020#,
           16#0073#, 16#006F#, 16#006D#, 16#0065#,
           16#0020#, 16#0073#, 16#0075#, 16#0069#,
           16#0074#, 16#0061#, 16#0062#, 16#006C#,
           16#0065#, 16#0020#, 16#0063#, 16#0068#,
           16#0061#, 16#0072#, 16#0061#, 16#0063#,
           16#0074#, 16#0065#, 16#0072#, 16#0020#,
           16#0073#, 16#0065#, 16#0074#, 16#0020#,
           16#0075#, 16#0073#, 16#0065#, 16#0064#,
           16#0020#, 16#0074#, 16#006F#, 16#0020#,
           16#0064#, 16#0069#, 16#0073#, 16#0070#,
           16#006C#, 16#0061#, 16#0079#, 16#0020#,
           16#0069#, 16#006E#, 16#0066#, 16#006F#,
           16#0072#, 16#006D#, 16#0061#, 16#0074#,
           16#0069#, 16#006F#, 16#006E#, 16#0020#,
           16#0061#, 16#0062#, 16#006F#, 16#0075#,
           16#0074#, 16#0020#, 16#0074#, 16#0068#,
           16#0065#, 16#0020#, 16#006D#, 16#006F#,
           16#0064#, 16#0065#, 16#006C#, 16#002E#,
           16#0020#, 16#0043#, 16#0068#, 16#0061#,
           16#0072#, 16#0061#, 16#0063#, 16#0074#,
           16#0065#, 16#0072#, 16#0020#, 16#0073#,
           16#0065#, 16#0074#, 16#0073#, 16#0020#,
           16#006D#, 16#0061#, 16#0079#, 16#0020#,
           16#0069#, 16#006E#, 16#0063#, 16#006C#,
           16#0075#, 16#0064#, 16#0065#, 16#0020#,
           16#006E#, 16#006F#, 16#006E#, 16#002D#,
           16#0052#, 16#006F#, 16#006D#, 16#0061#,
           16#006E#, 16#0020#, 16#0061#, 16#006C#,
           16#0070#, 16#0068#, 16#0061#, 16#0062#,
           16#0065#, 16#0074#, 16#0073#, 16#0020#,
           16#0061#, 16#006E#, 16#0064#, 16#0020#,
           16#0063#, 16#0068#, 16#0061#, 16#0072#,
           16#0061#, 16#0063#, 16#0074#, 16#0065#,
           16#0072#, 16#0073#, 16#002E#,
           others => 16#0000#),
         others => <>);

   --  "String"

   MS_0011 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 7,
         Unused => 6,
         Length => 6,
         Value  =>
          (16#0053#, 16#0074#, 16#0072#, 16#0069#,
           16#006E#, 16#0067#,
           others => 16#0000#),
         others => <>);

end AMF.Internals.Tables.Primitive_Types_String_Data_00;
