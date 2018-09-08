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
	./run.sh typedarray2.test
	./run.sh typedarray3.test
	./run.sh slice.test
	./run.sh pkg_rename.test
	./run.sh ta_conv.test
	./run.sh ta_conv2.test
	./run.sh visitor.test
	./run.sh null_simple_out.test
	@echo A2JS Tests succeed!
