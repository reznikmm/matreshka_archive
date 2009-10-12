with Sax.Content_Handlers;
with Sax.Lexical_Handlers;

private with Internals.Sax_Default_Handlers;

package Sax.Readers is

   type Sax_Content_Handler_Access is
     access all Sax.Content_Handlers.Sax_Content_Handler'Class;

   type Sax_Lexical_Handler_Access is
     access all Sax.Lexical_Handlers.Sax_Lexical_Handler'Class;

   type Sax_Reader is tagged limited private;

--  virtual QXmlDTDHandler * DTDHandler () const = 0
--  virtual QXmlDeclHandler * declHandler () const = 0
--  virtual QXmlEntityResolver * entityResolver () const = 0
--  virtual QXmlErrorHandler * errorHandler () const = 0
--  virtual bool feature ( const QString & name, bool * ok = 0 ) const = 0
--  virtual bool hasFeature ( const QString & name ) const = 0
--  virtual bool hasProperty ( const QString & name ) const = 0
--  virtual bool parse ( const QXmlInputSource * input ) = 0
--  virtual void * property ( const QString & name, bool * ok = 0 ) const = 0
--  virtual void setDTDHandler ( QXmlDTDHandler * handler ) = 0
--  virtual void setDeclHandler ( QXmlDeclHandler * handler ) = 0
--  virtual void setEntityResolver ( QXmlEntityResolver * handler ) = 0
--  virtual void setErrorHandler ( QXmlErrorHandler * handler ) = 0
--  virtual void setFeature ( const QString & name, bool value ) = 0
--  virtual void setProperty ( const QString & name, void * value ) = 0

   not overriding function Content_Handler
    (Self : not null access constant Sax_Reader)
       return not null Sax_Content_Handler_Access;

   not overriding function Lexical_Handler
    (Self : not null access constant Sax_Reader)
       return not null Sax_Lexical_Handler_Access;

   not overriding procedure Set_Content_Handler
    (Self    : not null access Sax_Reader;
     Handler : not null Sax_Content_Handler_Access);

   not overriding procedure Set_Lexical_Handler
    (Self    : not null access Sax_Reader;
     Handler : not null Sax_Lexical_Handler_Access);

private

   type Sax_Reader is tagged limited record
      Content_Handler : Sax_Content_Handler_Access
        := Internals.Sax_Default_Handlers.Default_Handler'Access;
      Lexical_Handler : Sax_Lexical_Handler_Access
        := Internals.Sax_Default_Handlers.Default_Handler'Access;
   end record;

end Sax.Readers;
