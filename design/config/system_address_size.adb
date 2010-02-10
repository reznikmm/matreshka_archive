with Ada.Strings.Fixed;
with Ada.Text_IO;
with System;

procedure System_Address_Size is
begin
   Ada.Text_IO.Put_Line
    (Ada.Strings.Fixed.Trim
      (Integer'Image (System.Address'Size), Ada.Strings.Both));
end System_Address_Size;
