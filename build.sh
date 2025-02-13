#!/bin/bash
git clone https://github.com/cilynx/rtl88x2bu
cd rtl88x2bu
dkms build . -k 6.6.21-amd64-vyos
dkms mktarball --binaries-only rtl88x2bu/5.8.7.1 -k 6.6.21-amd64-vyos
cd /var/lib/dkms/rtl88x2bu/5.8.7.1/tarball/
tar -xvf rtl88x2bu-5.8.7.1-kernel6.6.21-amd64-vyos-x86_64.dkms.tar.gz
