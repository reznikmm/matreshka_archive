AYACC = ../../tools/ayacc/src/ayacc

uaflex: yy_tools yyparse.adb yylex.adb
	gprbuild -p -P uaflex.gpr

yyparse.adb: parser.y
	$(AYACC) parser.y

yylex.adb: test
	+./uaflex --types AAA --scanner AAA.Scanners --handler AAA.Handlers \
	  --tokens Parser_Tokens test

yy_tools:
	$(MAKE) -C ../.. yy_tools

clean:
	rm parser*.a* scanner*.a* yy* uaflex
	rm -rf .objs
