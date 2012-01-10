uaflex: yyparse.adb yylex.adb
	gprbuild -p -P uaflex.gpr

yyparse.adb: parser.y
	../../tools/ayacc/src/ayacc parser.y

yylex.adb: test
	+./uaflex --types AAA --scanner AAA.Scanners --handler AAA.Handlers \
	  --tokens Parser_Tokens test

clean:
	rm parser*.a* scanner*.a* yy* uaflex
	rm -rf .objs