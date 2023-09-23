#!/bin/bash -ex


#pushd hello-world
#cargo build --release
#popd

rm -f *.deb
fpm -s dir -t deb -n hello-world -v 1.0.0 --prefix=/usr/local/bin/ --chdir=./hello-world/target/release/ hello-world
dpkg -c hello-world_1.0.0_amd64.deb

