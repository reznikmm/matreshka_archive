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
	./run.sh value.test
	./run.sh float_64.test
	./run.sh ind_constr.test
	./run.sh ifexp.test
	./run.sh matrix2d.test
#	./run.sh typedarray.test
	./run.sh slice.test
	@echo A2JS Tests succeed!
