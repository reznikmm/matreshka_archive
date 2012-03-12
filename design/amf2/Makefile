
all:
	make -C ../..
	gprbuild -p -j0 -Ptools/umlprofile2cmof/umlprofile2cmof.gpr
	gprbuild -p -Pxmi.gpr
	gprbuild -p -Pgui/cmof_tree_view/gui_moc.gpr
	gprbuild -p -Pgui/cmof_tree_view/gui.gpr
	gprbuild -p -Pgui/modeler/modeler.gpr -XBUILD_MODE=MOC
	gprbuild -p -Pgui/modeler/modeler.gpr -XBUILD_MODE=APP
#	gprbuild -p -Pgen-stage1/generator.gpr
	gprbuild -p -Pgen-stage2/gens.gpr
#	time ./demo-reader data/cmof.cmof
#	./demo-viewer data/cmof.cmof
#	(cd data/2.4 && ../../demo-viewer UML.cmof)

sqldemo:
	gprbuild -p -j0 -P demo/demo.gpr
	(cd demo && AMF_DATA_DIR=../data ../demo-gen DemoSQL.xml)

gens:
	gprbuild -p -Pgen-stage2/gens.gpr
uml-all:
	gprbuild -p -Puml/uml.gpr

gen-cmof: gens
	rm -rf .new
	mkdir .new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen_api 2010 2011 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' > .new/sources.ada
	gnatchop -gnat12 -w .new/sources.ada .new
	ls .new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed .new/{} ../../source/amf/mof/cmof/{}
	rm -r .new
	rm -rf .new
	mkdir .new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen2 2010 2011 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' > .new/sources.ada
	gnatchop -gnat05 -w .new/sources.ada .new
	ls .new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed .new/{} ../../source/amf/mof/cmof/{}
	rm -r .new
	gprbuild -p -Pgen-stage2/gens.gpr
	rm -rf .new
	test -d .new || mkdir .new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen2 2010 2011 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' > .new/sources.ada
	gnatchop -gnat05 -w .new/sources.ada .new
	ls .new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed .new/{} ../../source/amf/mof/cmof/{}
	rm -r .new

gen-pt: gens
	rm -rf .new
	mkdir .new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen2 2011 2011 'http://www.omg.org/spec/UML/20100901/PrimitiveTypes.cmof' > .new/sources.ada
	gnatchop -gnat12 -w .new/sources.ada .new
	ls .new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed .new/{} ../../source/amf/uml/{}
	rm -r .new

gen-uml-stubs: gens
	test -d uml/generated/.new || mkdir uml/generated/.new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen_api 2011 2011 'http://www.omg.org/spec/UML/20100901/UML.cmof' --stubs > uml/generated/.new/sources.ada
	gnatchop -gnat12 -w uml/generated/.new/sources.ada uml/generated/.new
	ls uml/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/{}
	rm -r uml/generated/.new

gen-uml: gens
	rm -rf .new
	mkdir .new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen_api 2011 2011 'http://www.omg.org/spec/UML/20100901/UML.cmof' > .new/sources.ada
	gnatchop -gnat12 -w .new/sources.ada .new
	ls .new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed .new/{} ../../source/amf/uml/{}
	rm -rf .new
	mkdir .new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen2 2011 2011 'http://www.omg.org/spec/UML/20100901/UML.cmof' > .new/sources.ada
	gnatchop -gnat12 -w .new/sources.ada .new
	ls .new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed .new/{} ../../source/amf/uml/{}
	rm -r .new

gen-ocl: gens
	rm -rf .new
	mkdir .new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen_api 2012 2012 'http://www.omg.org/spec/OCL/20090501/OCL.cmof' > .new/sources.ada
	gnatchop -gnat12 -w .new/sources.ada .new
	ls .new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed .new/{} ../../source/amf/ocl/{}
	rm -rf .new
	mkdir .new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen2 2012 2012 'http://www.omg.org/spec/OCL/20090501/OCL.cmof' > .new/sources.ada
	gnatchop -gnat12 -w .new/sources.ada .new
	ls .new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed .new/{} ../../source/amf/ocl/{}
	rm -r .new

clean:
	rm -rf .libs amf/.objs gen-stage1/.objs gen-stage2/.obj uml/.objs gui/cmof_tree_view/.objs gui/cmof_tree_view/.amoc demo-cmof demo-reader demo-viewer


gen-iats: gens
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen_api 2011 2012 'file:///home/godunko/Matreshka/matreshka/design/amf2/IATS_Profile.cmof' > iats/source.ada
	gnatchop -gnat12 -w iats/source.ada iats
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen_api 2011 2012 'file:///home/godunko/Matreshka/matreshka/design/amf2/IATS_Profile.cmof' --stubs > iats/source.ada
	gnatchop -gnat12 -w iats/source.ada iats
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen2 2011 2011 'file:///home/godunko/Matreshka/matreshka/design/amf2/IATS_Profile.cmof' > iats/source.ada
	gnatchop -gnat12 -w iats/source.ada iats

build-iats:
	gprbuild -p -j0 -Piats/iats.gpr
