with League.Strings;
with League.String_Vectors;

package Generator.OOP_Handler is
   
   procedure Go
     (Actions : League.String_Vectors.Universal_String_Vector;
      File    : String;
      Unit    : League.Strings.Universal_String;
      Scanner : League.Strings.Universal_String;
      Tokens  : League.Strings.Universal_String);
   
   procedure On_Accept
     (Actions : League.String_Vectors.Universal_String_Vector;
      File    : String;
      Handler : League.Strings.Universal_String;
      Scanner : League.Strings.Universal_String;
      Tokens  : League.Strings.Universal_String);
   
end Generator.OOP_Handler;
