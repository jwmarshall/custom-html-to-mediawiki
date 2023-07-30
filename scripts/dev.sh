#!/bin/sh

apt-get update
apt-get install -yqq pandoc

make install

exec $@
