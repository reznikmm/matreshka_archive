with League.Strings;

procedure Test is
   A : League.Strings.Universal_String
     := League.Strings.To_Universal_String ("HKEY_CLASSES_ROOT");
   B : League.Strings.Universal_String := A.Slice (A.Length + 3, A.Length);

begin
   null;
end Test;
