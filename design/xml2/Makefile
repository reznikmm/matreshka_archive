
all:
	gprbuild -p -j2 -P demo.gpr
	gprbuild -p -j2 -P ../../examples/sax_events_printer/sax_events_printer.gpr

xml:
	make -C ../.. xml

check:

clean:
	rm -rf .objs
