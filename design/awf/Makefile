
all:
	gprbuild -p

install: all
	mkdir -p $(HOME)/public_html/cgi-bin
	cp main $(HOME)/public_html/cgi-bin/demo.fcgi

upload: all
	scp main forge.ada-ru.org:cgi-bin/demo.fcgi
#	scp ../../.libs/libmatreshka-xml-7.1.so.0.3.0 forge.ada-ru.org:cgi-bin
#	scp ../../.libs/libmatreshka-fastcgi-7.1.so.0.3.0 forge.ada-ru.org:cgi-bin
#	scp ../../.libs/libleague-7.1.so.0.3.0 forge.ada-ru.org:cgi-bin
#	scp /home/godunko/Matreshka/matreshka/design/awf/../../../../local/gnat-20111208/lib/gcc/x86_64-pc-linux-gnu/4.5.4/adalib/libgnarl-7.1.so forge.ada-ru.org:cgi-bin
#	scp /home/godunko/Matreshka/matreshka/design/awf/../../../../local/gnat-20111208/lib/gcc/x86_64-pc-linux-gnu/4.5.4/adalib/libgnat-7.1.so forge.ada-ru.org:cgi-bin
