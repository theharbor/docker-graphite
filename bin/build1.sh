#!/bin/bash

set -e
set -x
aptinstall="apt-get install --no-install-recommends --yes"

apt-get update
$aptinstall virtualenv python-virtualenv python-dev gcc
rm -rf /var/lib/apt/lists/*

useradd --shell /bin/bash --system --user-group --create-home --home /opt/graphite graphite
runas graphite /build2.sh
