include ../../Makefile.config

GPRBUILD_FLAGS = -p -XARCHITECTURE=$(ARCHITECTURE) -XBUILD=$(BUILD)

all:
	gprbuild $(GPRBUILD_FLAGS) -Pdemo.gpr
	./demo expression string

clean:
	rm -rf .objs
