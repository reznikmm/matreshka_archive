------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  Plugin interface for Oracle database.
------------------------------------------------------------------------------
with System.Storage_Elements;
with SQL.Databases;

package Matreshka.Internals.SQL_Drivers.Oracle.Plug_In is

   type Control_Side is (Driver, Plug_In);

   type Column_Description is record
      Column_Type : aliased Data_Type;  --  OCI_ATTR_DATA_TYPE
      Size        : aliased Ub2;        --  OCI_ATTR_DATA_SIZE
      Precision   : aliased Sb2;        --  OCI_ATTR_PRECISION
      Scale       : aliased Sb1;        --  OCI_ATTR_SCALE
   end record;

   type Abstract_Plug_In is abstract tagged private;

   not overriding procedure Check_Parameter
     (Self       : Abstract_Plug_In;
      Holder     : League.Holders.Holder;
      Control    : in out Control_Side;
      SQLT_Type  : out Data_Type;
      Extra_Size : out System.Storage_Elements.Storage_Count) is abstract;
   --  If given plugin supports given Holder as statement parameter
   --  set Control to Plug_In, SQLT_Type to expected data type and Extra_Size
   --  to size of binding area

   not overriding procedure Check_Column
     (Self       : Abstract_Plug_In;
      Column     : Column_Description;
      Control    : in out Control_Side;
      SQLT_Type  : out Data_Type;
      Extra_Size : out System.Storage_Elements.Storage_Count) is abstract;
   --  If given plugin supports Column set Control to Plug_In and Extra_Size
   --  to size of define area

   not overriding procedure Encode
     (Self   : Abstract_Plug_In;
      Holder : League.Holders.Holder;
      Buffer : in out System.Storage_Elements.Storage_Array) is abstract;
   --  Convert Holder to Storage_Array

   not overriding procedure Decode
     (Self   : Abstract_Plug_In;
      Holder : in out League.Holders.Holder;
      Buffer : System.Storage_Elements.Storage_Array) is abstract;
   --  Convert Storage_Array to Holder

   procedure Register
     (Database : in out SQL.Databases.SQL_Database;
      Plug_In  : access Abstract_Plug_In'Class);
   --  register plugin in given Database

   function Next
     (Self : Abstract_Plug_In'Class)
      return access Abstract_Plug_In'Class;
   --  To iterate over registered plugins

private

   type Abstract_Plug_In is abstract tagged record
      Next : access Abstract_Plug_In'Class;
   end record;

end Matreshka.Internals.SQL_Drivers.Oracle.Plug_In;
