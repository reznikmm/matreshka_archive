export TEMPDIR := $(shell mktemp -d -t a2js.XXXX)

all:
	./run.sh hello_world.test
	./run.sh amf3.test
	./run.sh xmi_writer.test
	./run.sh aga.test
	./run.sh aga2.test
	./run.sh aga3.test
	./run.sh aga4.test
	./run.sh version2.test
	@echo A2JS Tests succeed!
