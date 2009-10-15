#!/bin/sh

cd ..

# Download the nightly version and untar it into the ./firefox directory
wget -O f.tar.bz2 -q http://ftp.mozilla.org/pub/mozilla.org/firefox/\
nightly/latest-mozilla-1.9.2/firefox-3.6b1pre.en-US.linux-i686.tar.bz2
bunzip2 f.tar.bz2
rm -rf ./firefox
tar xf f.tar

# Save a compressed backup of the downloaded file using the current datetime
datetime=`date +"%Y_%m_%d_%H_%M_%S"`
bzip2 f.tar
mv f.tar.bz2 ./firefox_downloads/firefox_${datetime}.tar.bz2
