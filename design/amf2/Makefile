
all:
	make -C ../..
	gprbuild -p -Pamf/amf.gpr
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

uml-all:
	gprbuild -p -Puml/uml.gpr

gen2:
	gprbuild -p -Pgen-stage2/gens.gpr
	test -d cmof/generated/.new || mkdir cmof/generated/.new
	./gen-stage2/.obj/gen2 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' > cmof/generated/.new/sources.ada
	gnatchop -gnat05 -w cmof/generated/.new/sources.ada cmof/generated/.new
	ls cmof/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed cmof/generated/.new/{} cmof/generated/{}
	rm -r cmof/generated/.new
	gprbuild -p -Pgen-stage2/gens.gpr
	test -d cmof/generated/.new || mkdir cmof/generated/.new
	./gen-stage2/.obj/gen2 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' > cmof/generated/.new/sources.ada
	gnatchop -gnat05 -w cmof/generated/.new/sources.ada cmof/generated/.new
	ls cmof/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed cmof/generated/.new/{} cmof/generated/{}
	rm -r cmof/generated/.new

gen2-api:
	gprbuild -j2 -p -Pgen-stage2/gens.gpr
	test -d cmof/generated/.new || mkdir cmof/generated/.new
	./gen-stage2/.obj/gen_api 'http://schema.omg.org/spec/MOF/2.0/cmof.xml' CMOF > cmof/generated/.new/sources.ada
	gnatchop -gnat12 -w cmof/generated/.new/sources.ada cmof/generated/.new
	ls cmof/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed cmof/generated/.new/{} cmof/generated/{}
	rm -r cmof/generated/.new

gen-uml:
	gprbuild -p -Pgen-stage2/gens.gpr
	test -d uml/generated/.new || mkdir uml/generated/.new
	./gen-stage2/.obj/gen_api 'http://www.omg.org/spec/UML/20100901/' UML > uml/generated/.new/sources.ada
	gnatchop -gnat12 -w uml/generated/.new/sources.ada uml/generated/.new
	ls uml/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/generated/{}
	rm -r uml/generated/.new
	test -d uml/generated/.new || mkdir uml/generated/.new
	./gen-stage2/.obj/gen2 'http://www.omg.org/spec/UML/20100901/' > uml/generated/.new/sources.ada
	gnatchop -gnat12 -w uml/generated/.new/sources.ada uml/generated/.new
	ls uml/generated/.new/*.ad[sb] | xargs -L1 basename | xargs -I{} ../../tools/move-if-changed uml/generated/.new/{} uml/generated/{}
	rm -r uml/generated/.new
	gnatmake -p -Puml/uml.gpr

clean:
	rm -rf .libs amf/.objs gen-stage1/.objs gen-stage2/.obj xmi/.objs gui/cmof_tree_view/.objs gui/cmof_tree_view/.amoc demo-cmof demo-reader demo-viewer
