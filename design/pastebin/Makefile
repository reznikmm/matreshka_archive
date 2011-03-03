
all:
	make -C ../..
	gprbuild -p -P paste_bin.gpr

install:
	killall pastebin.fcgi || true
	cp pastebin.fcgi ~/public_html

upload:
	scp pastebin.fcgi qtadacom@qtada.com:adaforge/matreshka/libexec

upload_lib:
	scp ../../.libs/libleague-6.5.so.0.0.7 qtadacom@qtada.com:adaforge/matreshka/lib64
	scp ../../.libs/libmatreshka-fastcgi-6.5.so.0.0.7 qtadacom@qtada.com:adaforge/matreshka/lib64
	scp ../../.libs/libmatreshka-sql-6.5.so.0.0.7 qtadacom@qtada.com:adaforge/matreshka/lib64
	scp ../../.libs/libmatreshka-sql-sqlite3-6.5.so.0.0.7 qtadacom@qtada.com:adaforge/matreshka/lib64
#	scp ~/local/gnat-20110120/lib/gcc/x86_64-pc-linux-gnu/4.5.3/adalib/libgnarl-6.5.so qtadacom@qtada.com:adaforge/matreshka/lib64
#	scp ~/local/gnat-20110120/lib/gcc/x86_64-pc-linux-gnu/4.5.3/adalib/libgnat-6.5.so qtadacom@qtada.com:adaforge/matreshka/lib64

clean:
	rm -rf .obj pastebin.fcgi
