#!/bin/bash

DATE=20200813
HASH=4433e5c202d0c17ad0b7177e51d401786456fc31
LOCATION=/home/pmena

# copy tarball 
cp -v $LOCATION/uframe_ooi_$DATE'_'$HASH.tar.gz /home/asadev/uframes/uframe_tarballs/uframe_ooi_$DATE'_'$HASH.tar.gz

# extract tarball
/bin/tar -C /home/asadev/uframes/uframe_tarballs/ -xpf /home/asadev/uframes/uframe_tarballs/uframe_ooi_$DATE'_'$HASH.tar.gz
/bin/mv -v /home/asadev/uframes/uframe_tarballs/ooi /home/asadev/uframes/uframe_tarballs/uframe_ooi_$DATE'_'$HASH
/bin/mv -v /home/asadev/uframes/uframe_tarballs/uframe_ooi_$DATE'_'$HASH /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH
/bin/cp -av /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH

# make copies of the newly extracted config files
/bin/cp -v /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties.DISTRIBUTION-ORIG
/bin/cp -v /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/etc/ooi.sh /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/etc/ooi.sh.DISTRIBUTION-ORIG
/bin/cp -v /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/bin/setup.env /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/bin/setup.env.DISTRIBUTION-ORIG
/bin/cp -v /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/conf/modes/ooi.xml /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/conf/modes/ooi.xml.DISTRIBUTION-ORIG
/bin/cp -v /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties.DISTRIBUTION-ORIG
/bin/cp -v /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/etc/ooi.sh /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/etc/ooi.sh.DISTRIBUTION-ORIG
/bin/cp -v /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/bin/setup.env /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/bin/setup.env.DISTRIBUTION-ORIG
/bin/cp -v /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/conf/modes/ooi.xml /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/conf/modes/ooi.xml.DISTRIBUTION-ORIG

# make copies of the installed config files
/bin/cp -v /home/asadev/uframes/ooi_cabled/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties.PRODUCTION-ORIG
/bin/cp -v /home/asadev/uframes/ooi_cabled/uframe-1.0/edex/etc/ooi.sh /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/etc/ooi.sh.PRODUCTION-ORIG
/bin/cp -v /home/asadev/uframes/ooi_cabled/uframe-1.0/edex/bin/setup.env /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/bin/setup.env.PRODUCTION-ORIG
/bin/cp -v /home/asadev/uframes/ooi_cabled/uframe-1.0/edex/conf/modes/ooi.xml /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/conf/modes/ooi.xml.PRODUCTION-ORIG
/bin/cp -v /home/asadev/uframes/ooi_uncabled/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties.PRODUCTION-ORIG
/bin/cp -v /home/asadev/uframes/ooi_uncabled/uframe-1.0/edex/etc/ooi.sh /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/etc/ooi.sh.PRODUCTION-ORIG
/bin/cp -v /home/asadev/uframes/ooi_uncabled/uframe-1.0/edex/bin/setup.env /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/bin/setup.env.PRODUCTION-ORIG
/bin/cp -v /home/asadev/uframes/ooi_uncabled/uframe-1.0/edex/conf/modes/ooi.xml /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/conf/modes/ooi.xml.PRODUCTION-ORIG

# make additional copies of the installed config files for editing
/bin/cp -v /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties.PRODUCTION-ORIG /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties.PRODUCTION-EDIT
/bin/cp -v /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/etc/ooi.sh.PRODUCTION-ORIG /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/etc/ooi.sh.PRODUCTION-EDIT
/bin/cp -v /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/bin/setup.env.PRODUCTION-ORIG /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/bin/setup.env.PRODUCTION-EDIT
/bin/cp -v /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/conf/modes/ooi.xml.PRODUCTION-ORIG /home/asadev/uframes/uframe_ooi_cabled_$DATE'_'$HASH/uframe-1.0/edex/conf/modes/ooi.xml.PRODUCTION-EDIT
/bin/cp -v /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties.PRODUCTION-ORIG /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/data/utility/edex_static/base/ooi/ooi_configure.properties.PRODUCTION-EDIT
/bin/cp -v /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/etc/ooi.sh.PRODUCTION-ORIG /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/etc/ooi.sh.PRODUCTION-EDIT
/bin/cp -v /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/bin/setup.env.PRODUCTION-ORIG /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/bin/setup.env.PRODUCTION-EDIT
/bin/cp -v /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/conf/modes/ooi.xml.PRODUCTION-ORIG /home/asadev/uframes/uframe_ooi_uncabled_$DATE'_'$HASH/uframe-1.0/edex/conf/modes/ooi.xml.PRODUCTION-EDIT
