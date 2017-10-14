if [ "$TRAVIS_OS_NAME" == "osx" ]; then
    export NODE_PATH=$(npm config get prefix)/lib/node_modules
    export PATH=$HOME/gnat/bin:$PATH
fi

function osx_before_install()
{
    npm -g install requirejs
    npm -g install js-beautify
    export OSX_GCC=gcc-5.2.0-x86_64-apple-darwin15-bin
    export URL=http://sourceforge.net/projects/gnuada/files
    wget $URL/'GNAT_GCC%20Mac%20OS%20X/5.2.0/native'/$OSX_GCC.tar.bz2
    tar xjf $OSX_GCC.tar.bz2
    cd $OSX_GCC; echo -e "\n$HOME/gnat\ny\ny\n" | ./doinstall
    cd $TRAVIS_BUILD_DIR
}

function osx_script()
{
    gnatls -v
    make config && ./configure --disable-amf && make
    make check
}

function linux_before_install()
{
    cp -r packages/travis /tmp/
    cd ..
    tar --exclude=.svn --exclude=design \
        -c -z -f /tmp/travis/matreshka.tar.gz matreshka
    docker build --tag matreshka /tmp/travis/
}

function linux_script()
{
    umask og+w
    mkdir upload
    docker run -i -t -v$(pwd)/upload:/upload --user=max matreshka /bin/bash -c \
           'rpmbuild -bb /src/matreshka.spec --define "_rpmdir /upload"'

}

${TRAVIS_OS_NAME}_$1
