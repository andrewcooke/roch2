#!/bin/bash -xe

cd "$(dirname "$0")"
pushd ..
if [ ! -e bin ]; then
    mkdir bin
fi
pushd bin
rm -f roc_nightly-linux_x86_64-latest.tar.gz
wget https://github.com/roc-lang/roc/releases/download/nightly/roc_nightly-linux_x86_64-latest.tar.gz
tar xvfz roc_nightly-linux_x86_64-latest.tar.gz
latest=`ls -1d roc_nightly-linux_x86_64-20* | sort -rn | head -1`
rm -f roc
ln -s $latest/roc .
