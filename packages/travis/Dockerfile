FROM fedora
RUN dnf --assumeyes install rpmdevtools && \
    dnf --assumeyes install mariadb-devel && \
    dnf --assumeyes install 'dnf-command(builddep)'
COPY * /src/
RUN dnf --assumeyes builddep matreshka && \
useradd max && \
su -c rpmdev-setuptree max && \
su -c "cp -v /src/matreshka.tar.gz /src/*.patch ~/rpmbuild/SOURCES" max

