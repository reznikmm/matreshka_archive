with Aaa.Scanners;
with UAFLEX_Handler;
package Parser is
   Scanner : aliased Aaa.Scanners.Scanner;
   Handler : aliased UAFLEX_Handler.Handler;
   procedure YYParse;
end Parser;
