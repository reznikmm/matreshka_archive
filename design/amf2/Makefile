
all:
	make -C ../..
	gprbuild -p -Pamf/amf.gpr
	gprbuild -p -Puml/uml.gpr
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

gens:
	gprbuild -p -Pgen-stage2/gens.gpr
uml-all:
	gprbuild -p -Puml/uml.gpr

gen2: gens
	rm -rf amf/cmof/generated/.new
	mkdir amf/cmof/generated/.new
	./gen-stage2/.obj/gen2 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' CMOF > amf/cmof/generated/.new/sources.ada
	gnatchop -gnat05 -w amf/cmof/generated/.new/sources.ada amf/cmof/generated/.new
	ls amf/cmof/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed amf/cmof/generated/.new/{} amf/cmof/generated/{}
	rm -r amf/cmof/generated/.new
	gprbuild -p -Pgen-stage2/gens.gpr
	rm -rf amf/cmof/generated/.new
	test -d amf/cmof/generated/.new || mkdir amf/cmof/generated/.new
	./gen-stage2/.obj/gen2 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' CMOF > amf/cmof/generated/.new/sources.ada
	gnatchop -gnat05 -w amf/cmof/generated/.new/sources.ada amf/cmof/generated/.new
	ls amf/cmof/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed amf/cmof/generated/.new/{} amf/cmof/generated/{}
	rm -r amf/cmof/generated/.new

gen2-api: gens
	rm -rf amf/cmof/generated/.new
	mkdir amf/cmof/generated/.new
	./gen-stage2/.obj/gen_api 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' CMOF > amf/cmof/generated/.new/sources.ada
	gnatchop -gnat12 -w amf/cmof/generated/.new/sources.ada amf/cmof/generated/.new
	ls amf/cmof/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed amf/cmof/generated/.new/{} amf/cmof/generated/{}
	rm -r amf/cmof/generated/.new

gen-pt: gens
	rm -rf uml/generated/.new
	mkdir uml/generated/.new
	./gen-stage2/.obj/gen2 'http://www.omg.org/spec/UML/20100901/PrimitiveTypes.xmi' Primitive_Types > uml/generated/.new/sources.ada
	gnatchop -gnat12 -w uml/generated/.new/sources.ada uml/generated/.new
	ls uml/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/generated/{}
	rm -r uml/generated/.new
	gnatmake -p -Puml/uml.gpr -c -u amf-internals-tables-primitive_types_metamodel.adb

gen-uml-stubs: gens
	test -d uml/generated/.new || mkdir uml/generated/.new
	./gen-stage2/.obj/gen_api 'http://www.omg.org/spec/UML/20100901/' UML --stubs > uml/generated/.new/sources.ada
	gnatchop -gnat12 -w uml/generated/.new/sources.ada uml/generated/.new
	# ls uml/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/{}
	ls uml/generated/.new/*.ad[sb] | xargs -L1 basename > uml/generated/.new/ada.lst
	cat uml/generated/.new/ada.lst | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/{}
	cat uml/generated/.new/ada.lst | xargs -I{} gnat stub -Puml/uml.gpr -f uml/{}
	rm -r uml/generated/.new

gen-uml: gens
	rm -rf uml/generated/.new
	mkdir uml/generated/.new
	./gen-stage2/.obj/gen_api 'http://www.omg.org/spec/UML/20100901/' UML > uml/generated/.new/sources.ada
	gnatchop -gnat12 -w uml/generated/.new/sources.ada uml/generated/.new
	ls uml/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/generated/{}
	rm -rf uml/generated/.new
	mkdir uml/generated/.new
	./gen-stage2/.obj/gen2 'http://www.omg.org/spec/UML/20100901/' UML > uml/generated/.new/sources.ada
	gnatchop -gnat12 -w uml/generated/.new/sources.ada uml/generated/.new
	ls uml/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/generated/{}
	rm -r uml/generated/.new
	gnatmake -p -Puml/uml.gpr -c -u amf-internals-tables-uml_string_data.ads
	gnatmake -p -Puml/uml.gpr -c -u amf-internals-tables-uml_metamodel.adb
	gnatmake -p -Puml/uml.gpr

clean:
	rm -rf .libs amf/.objs gen-stage1/.objs gen-stage2/.obj uml/.objs gui/cmof_tree_view/.objs gui/cmof_tree_view/.amoc demo-cmof demo-reader demo-viewer
