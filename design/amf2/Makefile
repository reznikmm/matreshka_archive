
all:
	make -C ../..
	gprbuild -p -j0 -Pamf/amf.gpr
	gprbuild -p -j0 -Puml/uml.gpr
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

gen2: gens
	rm -rf amf/cmof/generated/.new
	mkdir amf/cmof/generated/.new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen2 data/metamodels/CMOF24.cmof 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' CMOF > amf/cmof/generated/.new/sources.ada
	gnatchop -gnat05 -w amf/cmof/generated/.new/sources.ada amf/cmof/generated/.new
	ls amf/cmof/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed amf/cmof/generated/.new/{} amf/cmof/generated/{}
	rm -r amf/cmof/generated/.new
	gprbuild -p -Pgen-stage2/gens.gpr
	rm -rf amf/cmof/generated/.new
	test -d amf/cmof/generated/.new || mkdir amf/cmof/generated/.new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen2 data/metamodels/CMOF24.cmof 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' CMOF > amf/cmof/generated/.new/sources.ada
	gnatchop -gnat05 -w amf/cmof/generated/.new/sources.ada amf/cmof/generated/.new
	ls amf/cmof/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed amf/cmof/generated/.new/{} amf/cmof/generated/{}
	rm -r amf/cmof/generated/.new

gen2-api: gens
	rm -rf amf/cmof/generated/.new
	mkdir amf/cmof/generated/.new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen_api data/metamodels/CMOF24.cmof 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' CMOF > amf/cmof/generated/.new/sources.ada
	gnatchop -gnat12 -w amf/cmof/generated/.new/sources.ada amf/cmof/generated/.new
	ls amf/cmof/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed amf/cmof/generated/.new/{} amf/cmof/generated/{}
	rm -r amf/cmof/generated/.new

gen-pt: gens
	rm -rf uml/generated/.new
	mkdir uml/generated/.new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen2 data/metamodels/PrimitiveTypes24.cmof 'http://www.omg.org/spec/UML/20100901/PrimitiveTypes.cmof' Primitive_Types > uml/generated/.new/sources.ada
	gnatchop -gnat12 -w uml/generated/.new/sources.ada uml/generated/.new
	ls uml/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/generated/{}
	rm -r uml/generated/.new
	gnatmake -p -Puml/uml.gpr -c -u amf-internals-tables-primitive_types_metamodel.adb

gen-uml-stubs: gens
	test -d uml/generated/.new || mkdir uml/generated/.new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen_api data/metamodels/UML24.cmof 'http://www.omg.org/spec/UML/20100901/UML.cmof' UML --stubs > uml/generated/.new/sources.ada
	gnatchop -gnat12 -w uml/generated/.new/sources.ada uml/generated/.new
	ls uml/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/{}
	rm -r uml/generated/.new

gen-uml: gens
	rm -rf uml/generated/.new
	mkdir uml/generated/.new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen_api data/metamodels/UML24.cmof 'http://www.omg.org/spec/UML/20100901/UML.cmof' UML > uml/generated/.new/sources.ada
	gnatchop -gnat12 -w uml/generated/.new/sources.ada uml/generated/.new
	ls uml/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/generated/{}
	rm -rf uml/generated/.new
	mkdir uml/generated/.new
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen2 data/metamodels/UML24.cmof 'http://www.omg.org/spec/UML/20100901/UML.cmof' UML > uml/generated/.new/sources.ada
	gnatchop -gnat12 -w uml/generated/.new/sources.ada uml/generated/.new
	ls uml/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/generated/{}
	rm -r uml/generated/.new
	gnatmake -p -Puml/uml.gpr -c -u amf-internals-tables-uml_string_data.ads
	gnatmake -p -Puml/uml.gpr -c -u amf-internals-tables-uml_metamodel.adb
	gnatmake -p -Puml/uml.gpr

clean:
	rm -rf .libs amf/.objs gen-stage1/.objs gen-stage2/.obj uml/.objs gui/cmof_tree_view/.objs gui/cmof_tree_view/.amoc demo-cmof demo-reader demo-viewer


gen-iats: gens
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen_api IATS_Profile.cmof 'file:///home/godunko/Matreshka/matreshka/design/amf2/IATS_Profile.cmof' IATS > iats/source.ada
	gnatchop -gnat12 -w iats/source.ada iats
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen_api IATS_Profile.cmof 'file:///home/godunko/Matreshka/matreshka/design/amf2/IATS_Profile.cmof' IATS --stubs > iats/source.ada
	gnatchop -gnat12 -w iats/source.ada iats
	AMF_DATA_DIR=data ./gen-stage2/.obj/gen2 IATS_Profile.cmof 'file:///home/godunko/Matreshka/matreshka/design/amf2/IATS_Profile.cmof' IATS > iats/source.ada
	gnatchop -gnat12 -w iats/source.ada iats

build-iats:
	gprbuild -p -j0 -Piats/iats.gpr
