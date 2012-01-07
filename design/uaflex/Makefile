uaflex: yyparse.adb yylex.adb
	gprbuild -p -P uaflex.gpr

yyparse.adb: parser.y
	../../tools/ayacc/src/ayacc parser.y

yylex.adb: scanner.l
	~/bin/aflex -d scanner.l
	gnatchop -w *.a

clean:
	rm parser*.a* scanner*.a* yy* uaflex
	rm -rf .objs