#!/bin/bash
glusterd
dd if=/dev/zero of=/brick count=1000 bs=1M
mkfs.xfs -i size=512 /brick
mkdir -p /export/brick && mount /brick /export/brick && mkdir -p /export/brick/volume
gluster volume create gv0 aurora-demo.jxk.ovh:/export/brick/volume
gluster volume info
gluster volume set gv0 auth.allow 192.168.33.7
gluster volume start gv0

