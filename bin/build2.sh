#!/bin/bash

set -e
set -x

virtualenv --python /usr/bin/python2 /opt/graphite

PIP=/opt/graphite/bin/pip
$PIP install https://github.com/graphite-project/ceres/tarball/master
$PIP install whisper
$PIP install carbon
