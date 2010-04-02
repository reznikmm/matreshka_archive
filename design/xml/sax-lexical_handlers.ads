with Ada.Strings.Wide_Wide_Unbounded;

package Sax.Lexical_Handlers is

   type Sax_Lexical_Handler is limited interface;

   not overriding procedure Comment
    (Self : not null access Sax_Lexical_Handler;
     Text : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop : in out Boolean)
       is null;

   not overriding function Error_String
    (Self : not null access constant Sax_Lexical_Handler)
       return Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String
         is abstract;

--  virtual bool endCDATA () = 0
--  virtual bool endDTD () = 0
--  virtual bool endEntity ( const QString & name ) = 0
--  virtual QString errorString () const = 0
--  virtual bool startCDATA () = 0
--  virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId ) = 0
--  virtual bool startEntity ( const QString & name ) = 0

end Sax.Lexical_Handlers;
