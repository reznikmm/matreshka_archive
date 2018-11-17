FROM fedora
RUN curl -o /etc/yum.repos.d/bintray-reznikmm-matreshka.repo \
 https://bintray.com/reznikmm/matreshka/rpm && \
    dnf --assumeyes install make && \
    dnf --assumeyes install rpmdevtools && \
    dnf --assumeyes install aws-devel && \
    dnf --assumeyes install mariadb-devel && \
    dnf --assumeyes install --repo bintray--reznikmm-matreshka libgnatutil-devel &&\
    dnf --assumeyes install --repo bintray--reznikmm-matreshka asis-devel &&\
    dnf --assumeyes install nodejs && \
    dnf --assumeyes install nodejs-requirejs && \
    npm -g install js-beautify && \
    dnf --assumeyes install 'dnf-command(builddep)'
COPY m* /src/
RUN dnf --assumeyes builddep matreshka && \
useradd max && \
su -c rpmdev-setuptree max && \
su -c "cp -v /src/matreshka.tar.gz /src/*.patch ~/rpmbuild/SOURCES" max

