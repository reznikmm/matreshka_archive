AYACC = ../../tools/ayacc/src/ayacc
UAFLEX_GENERATED=generated/aaa*.ad[sb]
AYACC_GENERATED=generated/parser*.ad[sb]

uaflex:
	gprbuild -p -P uaflex.gpr

gen: $(AYACC_GENERATED) $(UAFLEX_GENERATED)

$(AYACC_GENERATED): parser.y
	cd generated;../$(AYACC) ../parser.y

$(UAFLEX_GENERATED): test
	-cd generated; ../uaflex --types AAA --scanner AAA.Scanners\
	   --handler AAA.Handlers  --tokens Parser_Tokens ../test
yy_tools:
	$(MAKE) -C ../.. yy_tools

clean:
	rm uaflex
	rm -rf .objs


TESTS=$(wildcard testsuite/TN*/uaflex.*)
RESULTS=$(patsubst %,%.result,$(TESTS))
check: $(RESULTS)
	echo "Test success"

%.just_read.result: %.just_read
	rm -rf tmp
	mkdir tmp
	cd tmp;	../uaflex  --types AAA --scanner AAA.Scanners \
		--handler AAA.Handlers --tokens Parser_Tokens ../$?
