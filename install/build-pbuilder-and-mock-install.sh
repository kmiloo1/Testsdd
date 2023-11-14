#!/bin/bash
mkdir -p /root/pbuilder
pbuilderinstall () {
   wget https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/pbuilder/pbuilder-$1 -O /root/pbuilder/pbuilder-$1
   wget https://github.com/amidevous/odiniptvpanelfreesourcecode/raw/master/install/pbuilder/pbuilder-$1bin - O /usr/bin/pbuilder-$1
   chmod +x /usr/bin/pbuilder-$1
   pbuilder-$1 create
}
pbuilderinstall bionic
pbuilderinstall bullseye
pbuilderinstall focal
pbuilderinstall jammy
pbuilderinstall trusty
pbuilderinstall buster
