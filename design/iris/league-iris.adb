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

package body League.IRIs is

   ---------
   -- "=" --
   ---------

   function "=" (Left : IRI; Right : IRI) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """="" unimplemented");
      raise Program_Error;
      return "=" (Left, Right);
   end "=";

   ---------------
   -- Authority --
   ---------------

   function Authority
    (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Authority unimplemented");
      raise Program_Error;
      return Authority (Self);
   end Authority;

   -----------------------
   -- Encoded_Authority --
   -----------------------

   function Encoded_Authority
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Authority unimplemented");
      raise Program_Error;
      return Encoded_Authority (Self);
   end Encoded_Authority;

   ----------------------
   -- Encoded_Fragment --
   ----------------------

   function Encoded_Fragment
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Fragment unimplemented");
      raise Program_Error;
      return Encoded_Fragment (Self);
   end Encoded_Fragment;

   ------------------
   -- Encoded_Host --
   ------------------

   function Encoded_Host
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Host unimplemented");
      raise Program_Error;
      return Encoded_Host (Self);
   end Encoded_Host;

   ------------------
   -- Encoded_Path --
   ------------------

   function Encoded_Path
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Path unimplemented");
      raise Program_Error;
      return Encoded_Path (Self);
   end Encoded_Path;

   -------------------
   -- Encoded_Query --
   -------------------

   function Encoded_Query
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Query unimplemented");
      raise Program_Error;
      return Encoded_Query (Self);
   end Encoded_Query;

   --------------------
   -- Encoded_Scheme --
   --------------------

   function Encoded_Scheme
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Scheme unimplemented");
      raise Program_Error;
      return Encoded_Scheme (Self);
   end Encoded_Scheme;

   -----------------------
   -- Encoded_User_Info --
   -----------------------

   function Encoded_User_Info
     (Self : IRI'Class)
      return League.Stream_Element_Vectors.Stream_Element_Vector
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_User_Info unimplemented");
      raise Program_Error;
      return Encoded_User_Info (Self);
   end Encoded_User_Info;

   --------------
   -- Fragment --
   --------------

   function Fragment
    (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Fragment unimplemented");
      raise Program_Error;
      return Fragment (Self);
   end Fragment;

   ------------------
   -- From_Encoded --
   ------------------

   function From_Encoded
    (Item : League.Stream_Element_Vectors.Stream_Element_Vector) return IRI is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "From_Encoded unimplemented");
      raise Program_Error;
      return From_Encoded (Item);
   end From_Encoded;

   ---------------------------
   -- From_Universal_String --
   ---------------------------

   function From_Universal_String
    (Item : League.Strings.Universal_String) return IRI is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "From_Universal_String unimplemented");
      raise Program_Error;
      return From_Universal_String (Item);
   end From_Universal_String;

   ----------
   -- Host --
   ----------

   function Host (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Host unimplemented");
      raise Program_Error;
      return Host (Self);
   end Host;

   --------------
   -- Is_Valid --
   --------------

   function Is_Valid (Self : IRI'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Valid unimplemented");
      raise Program_Error;
      return Is_Valid (Self);
   end Is_Valid;

   ----------
   -- Path --
   ----------

   function Path (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Path unimplemented");
      raise Program_Error;
      return Path (Self);
   end Path;

   ----------
   -- Port --
   ----------

   function Port (Self : IRI'Class; Default : Natural := 0) return Natural is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Port unimplemented");
      raise Program_Error;
      return Port (Self, Default);
   end Port;

   -----------
   -- Query --
   -----------

   function Query (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Query unimplemented");
      raise Program_Error;
      return Query (Self);
   end Query;

   ------------
   -- Scheme --
   ------------

   function Scheme
    (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Scheme unimplemented");
      raise Program_Error;
      return Scheme (Self);
   end Scheme;

   -------------------
   -- Set_Authority --
   -------------------

   procedure Set_Authority
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Authority unimplemented");
      raise Program_Error;
   end Set_Authority;

   -----------------
   -- Set_Encoded --
   -----------------

   procedure Set_Encoded
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded unimplemented");
      raise Program_Error;
   end Set_Encoded;

   ---------------------------
   -- Set_Encoded_Authority --
   ---------------------------

   procedure Set_Encoded_Authority
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Authority unimplemented");
      raise Program_Error;
   end Set_Encoded_Authority;

   --------------------------
   -- Set_Encoded_Fragment --
   --------------------------

   procedure Set_Encoded_Fragment
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Fragment unimplemented");
      raise Program_Error;
   end Set_Encoded_Fragment;

   ----------------------
   -- Set_Encoded_Host --
   ----------------------

   procedure Set_Encoded_Host
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Host unimplemented");
      raise Program_Error;
   end Set_Encoded_Host;

   ----------------------
   -- Set_Encoded_Path --
   ----------------------

   procedure Set_Encoded_Path
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Path unimplemented");
      raise Program_Error;
   end Set_Encoded_Path;

   -----------------------
   -- Set_Encoded_Query --
   -----------------------

   procedure Set_Encoded_Query
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Query unimplemented");
      raise Program_Error;
   end Set_Encoded_Query;

   ------------------------
   -- Set_Encoded_Scheme --
   ------------------------

   procedure Set_Encoded_Scheme
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Scheme unimplemented");
      raise Program_Error;
   end Set_Encoded_Scheme;

   ---------------------------
   -- Set_Encoded_User_Info --
   ---------------------------

   procedure Set_Encoded_User_Info
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_User_Info unimplemented");
      raise Program_Error;
   end Set_Encoded_User_Info;

   ------------------
   -- Set_Fragment --
   ------------------

   procedure Set_Fragment
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Fragment unimplemented");
      raise Program_Error;
   end Set_Fragment;

   --------------
   -- Set_Host --
   --------------

   procedure Set_Host
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Host unimplemented");
      raise Program_Error;
   end Set_Host;

   -------------
   -- Set_IRI --
   -------------

   procedure Set_IRI
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_IRI unimplemented");
      raise Program_Error;
   end Set_IRI;

   --------------
   -- Set_Path --
   --------------

   procedure Set_Path
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Path unimplemented");
      raise Program_Error;
   end Set_Path;

   --------------
   -- Set_Port --
   --------------

   procedure Set_Port (Self : in out IRI'Class; To : Natural) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Port unimplemented");
      raise Program_Error;
   end Set_Port;

   ---------------
   -- Set_Query --
   ---------------

   procedure Set_Query
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Query unimplemented");
      raise Program_Error;
   end Set_Query;

   ----------------
   -- Set_Scheme --
   ----------------

   procedure Set_Scheme
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Scheme unimplemented");
      raise Program_Error;
   end Set_Scheme;

   -------------------
   -- Set_User_Info --
   -------------------

   procedure Set_User_Info
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_User_Info unimplemented");
      raise Program_Error;
   end Set_User_Info;

   ----------------
   -- To_Encoded --
   ----------------

   function To_Encoded
    (Self : IRI'Class)
      return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "To_Encoded unimplemented");
      raise Program_Error;
      return To_Encoded (Self);
   end To_Encoded;

   -------------------------
   -- To_Universal_String --
   -------------------------

   function To_Universal_String
    (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "To_Universal_String unimplemented");
      raise Program_Error;
      return To_Universal_String (Self);
   end To_Universal_String;

   ---------------
   -- User_Info --
   ---------------

   function User_Info
    (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "User_Info unimplemented");
      raise Program_Error;
      return User_Info (Self);
   end User_Info;

end League.IRIs;
