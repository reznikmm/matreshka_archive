
all:
	make -C ../..
	gprbuild -p -Pcmof/cmof.gpr
	gprbuild -p -Pxmi/xmi.gpr
#	gprbuild -p -Pgui/gui_moc.gpr
#	gprbuild -p -Pgui/gui.gpr
	./demo-reader data/cmof.xml

gen:
	gprbuild -p -Pgen-stage1/generator.gpr
	./gen-stage1/.objs/gen data/Infrastructure.cmof > cmof/generated/sources.ada
	gnatchop -gnat05 -w cmof/generated/sources.ada cmof/generated
	rm cmof/generated/sources.ada

clean:
	rm -rf cmof/.objs gen-stage1/.objs xmi/.objs gui/.objs gui/.amoc demo-cmof demo-reader demo-viewer
