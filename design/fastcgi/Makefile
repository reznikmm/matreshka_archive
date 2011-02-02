
all:
	make -C ../..
	gprbuild -p

install:
	killall demo.fcgi || true
	cp demo.fcgi ~/public_html

install_web:
	scp demo.fcgi qtadacom@qtada.com:adaforge/matreshka/libexec

install_lib:
	scp ../../.libs/libleague.so qtadacom@qtada.com:adaforge/matreshka/lib64
#	scp ~/local/gnat-20110120/lib/gcc/x86_64-pc-linux-gnu/4.5.3/adalib/libgnarl-6.5.so qtadacom@qtada.com:adaforge/matreshka/lib64
#	scp ~/local/gnat-20110120/lib/gcc/x86_64-pc-linux-gnu/4.5.3/adalib/libgnat-6.5.so qtadacom@qtada.com:adaforge/matreshka/lib64

clean:
	rm -rf .obj demo.fcgi
