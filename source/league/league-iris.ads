------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
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
--  This package provides a convenient interface for working with
--  Internationalized Resource Identifiers (IRIs), as defined by RFC 3987; and
--  Uniform Resource Identifier (URI), as defined by RFC 3986.
------------------------------------------------------------------------------
private with Ada.Finalization;

with League.Stream_Element_Vectors;
private with League.String_Vectors;
with League.Strings;

package League.IRIs is

   pragma Preelaborate;
   pragma Remote_Types;

   type IRI is tagged private;
--   pragma Preelaborable_Initialization (IRI);

   function From_Universal_String
    (Item : League.Strings.Universal_String) return IRI;

   function From_Encoded
    (Item : League.Stream_Element_Vectors.Stream_Element_Vector) return IRI;

   function To_Universal_String
    (Self : IRI'Class) return League.Strings.Universal_String;

   function To_Encoded
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector;

   procedure Set_IRI
    (Self : in out IRI'Class; To : League.Strings.Universal_String);

   procedure Set_Encoded
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector);

   function Is_Valid (Self : IRI'Class) return Boolean;

   procedure Clear (Self : in out IRI'Class);

   function Scheme (Self : IRI'Class) return League.Strings.Universal_String;

   function Encoded_Scheme
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector;

   procedure Set_Scheme
    (Self : in out IRI'Class; To : League.Strings.Universal_String);

   procedure Set_Encoded_Scheme
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector);

   function Authority
    (Self : IRI'Class) return League.Strings.Universal_String;

   function Encoded_Authority
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector;

   procedure Set_Authority
    (Self : in out IRI'Class; To : League.Strings.Universal_String);

   procedure Set_Encoded_Authority
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector);

   function User_Info
    (Self : IRI'Class) return League.Strings.Universal_String;

   function Encoded_User_Info
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector;

   procedure Set_User_Info
    (Self : in out IRI'Class; To : League.Strings.Universal_String);

   procedure Set_Encoded_User_Info
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector);

   function Host (Self : IRI'Class) return League.Strings.Universal_String;

   function Encoded_Host
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector;

   procedure Set_Host
    (Self : in out IRI'Class; To : League.Strings.Universal_String);

   procedure Set_Encoded_Host
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector);

   function Port (Self : IRI'Class; Default : Natural := 0) return Natural;

   procedure Set_Port (Self : in out IRI'Class; To : Natural);

   function Path (Self : IRI'Class) return League.Strings.Universal_String;

   function Encoded_Path
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector;

   procedure Set_Path
    (Self : in out IRI'Class; To : League.Strings.Universal_String);

   procedure Set_Encoded_Path
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector);

   function Query (Self : IRI'Class) return League.Strings.Universal_String;

   function Encoded_Query
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector;

   procedure Set_Query
    (Self : in out IRI'Class; To : League.Strings.Universal_String);

   procedure Set_Encoded_Query
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector);

   function Fragment (Self : IRI'Class) return League.Strings.Universal_String;

   function Encoded_Fragment
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector;

   procedure Set_Fragment
    (Self : in out IRI'Class; To : League.Strings.Universal_String);

   procedure Set_Encoded_Fragment
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector);

   function Resolve (Self : IRI'Class; Relative : IRI'Class) return IRI;
   --  Returns the result of the merge of this IRI with Relative. This IRI is
   --  used as a base to convert relative to an absolute IRI.
   --
   --  If Relative is not a relative IRI, this function will return Relative
   --  directly. Otherwise, the paths of the two IRIs are merged, and the new
   --  IRI returned has the scheme and authority of the base IRI, but with the
   --  merged path.

   function "=" (Left : IRI; Right : IRI) return Boolean;

private

   type IRI is new Ada.Finalization.Controlled with record
      Scheme           : League.Strings.Universal_String;

      Has_Authority    : Boolean;
      User_Info        : League.Strings.Universal_String;
      Host             : League.Strings.Universal_String;
      Port             : Natural := 0;

      Path_Is_Absolute : Boolean;
      Path             : League.String_Vectors.Universal_String_Vector;

      Query            : League.Strings.Universal_String;
      Fragment         : League.Strings.Universal_String;
   end record;

end League.IRIs;
