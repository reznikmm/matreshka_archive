with XML.SAX.Content_Handlers;

package Test_Parsers is

   type Test_Parser is limited
     new XML.SAX.Content_Handlers.SAX_Content_Handler with
   record
     Locator : XML.SAX.Locators.SAX_Locator;
     X       : Integer := 0;
   end record;

end Test_Parsers;
