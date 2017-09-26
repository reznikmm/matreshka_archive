function osx_before_install()
{
    export NODE_PATH=$(npm config get prefix)/lib/node_modules
    npm -g install requirejs
    npm -g install js-beautify
    export OSX_GCC=gcc-5.2.0-x86_64-apple-darwin15-bin
    export URL=http://sourceforge.net/projects/gnuada/files
    wget $URL/'GNAT_GCC%20Mac%20OS%20X/5.2.0/native'/$OSX_GCC.tar.bz2
    tar xjf $OSX_GCC.tar.bz2
    cd $OSX_GCC; echo -e "\n$HOME/gnat\ny\ny\n" | ./doinstall
    export PATH=$HOME/gnat/bin:$PATH
    cd $TRAVIS_BUILD_DIR
}

function osx_script()
{
    gnatls -v
    make config && ./configure --disable-amf && make
    make check
}

function linux_install()
{
    cp -r packages/travis /tmp/
    tar --exclude=.svn --exclude=.objs --exclude=.libs --exclude=design \
        '--transform=s/^/matreshka\//' -c -z -f /tmp/travis/matreshka.tar.gz .
    docker build --tag matreshka /tmp/travis/
}

function linux_script()
{
    docker run -i -t --user=max matreshka /bin/bash -c \
           'su -c "rpmbuild -bb /src/matreshka.spec" max'

}

${TRAVIS_OS_NAME}_$1
