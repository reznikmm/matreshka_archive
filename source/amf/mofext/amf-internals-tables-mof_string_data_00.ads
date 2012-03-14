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

package AMF.Internals.Tables.MOF_String_Data_00 is

   --  "value"

   MS_0000 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 7,
         Unused => 5,
         Length => 5,
         Value  =>
          (16#0076#, 16#0061#, 16#006C#, 16#0075#,
           16#0065#,
           others => 16#0000#),
         others => <>);

   --  "element"

   MS_0001 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 15,
         Unused => 7,
         Length => 7,
         Value  =>
          (16#0065#, 16#006C#, 16#0065#, 16#006D#,
           16#0065#, 16#006E#, 16#0074#,
           others => 16#0000#),
         others => <>);

   --  "A_element_tag"

   MS_0002 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 15,
         Unused => 13,
         Length => 13,
         Value  =>
          (16#0041#, 16#005F#, 16#0065#, 16#006C#,
           16#0065#, 16#006D#, 16#0065#, 16#006E#,
           16#0074#, 16#005F#, 16#0074#, 16#0061#,
           16#0067#,
           others => 16#0000#),
         others => <>);

   --  "http://www.omg.org/spec/MOF/20110701"

   MS_0003 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 39,
         Unused => 36,
         Length => 36,
         Value  =>
          (16#0068#, 16#0074#, 16#0074#, 16#0070#,
           16#003A#, 16#002F#, 16#002F#, 16#0077#,
           16#0077#, 16#0077#, 16#002E#, 16#006F#,
           16#006D#, 16#0067#, 16#002E#, 16#006F#,
           16#0072#, 16#0067#, 16#002F#, 16#0073#,
           16#0070#, 16#0065#, 16#0063#, 16#002F#,
           16#004D#, 16#004F#, 16#0046#, 16#002F#,
           16#0032#, 16#0030#, 16#0031#, 16#0031#,
           16#0030#, 16#0037#, 16#0030#, 16#0031#,
           others => 16#0000#),
         others => <>);

   --  "mofext"

   MS_0004 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 7,
         Unused => 6,
         Length => 6,
         Value  =>
          (16#006D#, 16#006F#, 16#0066#, 16#0065#,
           16#0078#, 16#0074#,
           others => 16#0000#),
         others => <>);

   --  "Tag"

   MS_0005 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 7,
         Unused => 3,
         Length => 3,
         Value  =>
          (16#0054#, 16#0061#, 16#0067#,
           others => 16#0000#),
         others => <>);

   --  "MOF"

   MS_0006 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 7,
         Unused => 3,
         Length => 3,
         Value  =>
          (16#004D#, 16#004F#, 16#0046#,
           others => 16#0000#),
         others => <>);

   --  "tagOwner"

   MS_0007 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 15,
         Unused => 8,
         Length => 8,
         Value  =>
          (16#0074#, 16#0061#, 16#0067#, 16#004F#,
           16#0077#, 16#006E#, 16#0065#, 16#0072#,
           others => 16#0000#),
         others => <>);

   --  "name"

   MS_0008 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 7,
         Unused => 4,
         Length => 4,
         Value  =>
          (16#006E#, 16#0061#, 16#006D#, 16#0065#,
           others => 16#0000#),
         others => <>);

   --  "tag"

   MS_0009 : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 7,
         Unused => 3,
         Length => 3,
         Value  =>
          (16#0074#, 16#0061#, 16#0067#,
           others => 16#0000#),
         others => <>);

   --  "A_ownedTag_tagOwner"

   MS_000A : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 23,
         Unused => 19,
         Length => 19,
         Value  =>
          (16#0041#, 16#005F#, 16#006F#, 16#0077#,
           16#006E#, 16#0065#, 16#0064#, 16#0054#,
           16#0061#, 16#0067#, 16#005F#, 16#0074#,
           16#0061#, 16#0067#, 16#004F#, 16#0077#,
           16#006E#, 16#0065#, 16#0072#,
           others => 16#0000#),
         others => <>);

   --  "ownedTag"

   MS_000B : aliased Matreshka.Internals.Strings.Shared_String
     := (Size   => 15,
         Unused => 8,
         Length => 8,
         Value  =>
          (16#006F#, 16#0077#, 16#006E#, 16#0065#,
           16#0064#, 16#0054#, 16#0061#, 16#0067#,
           others => 16#0000#),
         others => <>);

   --  "org.omg.xmi.nsPrefix"

   MS_000C : aliased Matreshka.Internals.Strings.Shared_String
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

end AMF.Internals.Tables.MOF_String_Data_00;
