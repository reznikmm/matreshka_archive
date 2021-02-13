srpm:
	dnf -y install rpkg
	dnf -y install npm
	cp packages/copr/matreshka.spec .
	rpkg srpm --outdir $(outdir)
