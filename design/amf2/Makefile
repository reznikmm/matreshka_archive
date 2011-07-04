
all:
	make -C ../..
	gprbuild -p -Pcmof/cmof.gpr
	gprbuild -p -Pxmi/xmi.gpr
#	gprbuild -p -Puml/uml.gpr
	gprbuild -p -Pgui/cmof_tree_view/gui_moc.gpr
	gprbuild -p -Pgui/cmof_tree_view/gui.gpr
	gprbuild -p -Pgui/modeler/modeler.gpr -XBUILD_MODE=MOC
	gprbuild -p -Pgui/modeler/modeler.gpr -XBUILD_MODE=APP
#	gprbuild -p -Pgen-stage1/generator.gpr
	gprbuild -p -Pgen-stage2/gens.gpr
#	time ./demo-reader data/cmof.xml
#	./demo-viewer data/cmof.xml
#	(cd data/2.4 && ../../demo-viewer UML.cmof)

#gen:
#	gprbuild -p -Pgen-stage1/generator.gpr
#	./gen-stage1/.objs/gen data/Infrastructure.cmof > cmof/generated/sources.ada
#	gnatchop -gnat05 -w cmof/generated/sources.ada cmof/generated
#	rm cmof/generated/sources.ada
#	(cd cmof/generated && patch < uri-1.patch)

gen2:
	gprbuild -p -Pgen-stage2/gens.gpr
	./gen-stage2/.obj/gen2 data/cmof.xml > cmof/generated/sources.ada
	gnatchop -gnat05 -w cmof/generated/sources.ada cmof/generated
	rm cmof/generated/sources.ada
	gprbuild -p -Pgen-stage2/gens.gpr
	./gen-stage2/.obj/gen2 data/cmof.xml > cmof/generated/sources.ada
	gnatchop -gnat05 -w cmof/generated/sources.ada cmof/generated
	rm cmof/generated/sources.ada

gen2-api:
	gprbuild -j2 -p -Pgen-stage2/gens.gpr
	./gen-stage2/.obj/gen_api data/cmof.xml CMOF > cmof/generated/sources.ada
	gnatchop -gnat12 -w cmof/generated/sources.ada cmof/generated
	rm cmof/generated/sources.ada

gen-uml:
	gprbuild -p -Pgen-stage2/gens.gpr
#	(cd data/2.4 && ../../gen-stage2/.obj/gen_api UML.cmof UML) > uml/generated/sources.ada
#	gnatchop -gnat12 -w uml/generated/sources.ada uml/generated
#	rm uml/generated/sources.ada
	(cd data/2.4 && ../../gen-stage2/.obj/gen2 UML.cmof) > uml/generated/sources.ada
	gnatchop -gnat12 -w uml/generated/sources.ada uml/generated
	gnatmake -p -Puml/uml.gpr

clean:
	rm -rf cmof/.objs gen-stage1/.objs gen-stage2/.obj xmi/.objs gui/cmof_tree_view/.objs gui/cmof_tree_view/.amoc demo-cmof demo-reader demo-viewer
