uaflex: yyparse.adb yylex.adb
	gprbuild -p -P uaflex.gpr

yyparse.adb: parser.y
	~/bin/ayacc parser.y
	echo 'with Nodes;' > tokens.a
	cat parser_tokens.ads >> tokens.a
	gnatchop -w *.a
	rm tokens.a

yylex.adb: scanner.l
	~/bin/aflex -d scanner.l
	gnatchop -w *.a

clean:
	rm parser*.a* scanner*.a* yy* uaflex
	rm -rf .objs