#!/bin/sh

# Install all the packages from the source repositories
cd jsbridge
sudo python setup.py install > /dev/null
cd ../mozmill
sudo python setup.py install > /dev/null
cd ../mozrunner
sudo python setup.py install > /dev/null

# Change the ownership of the installed packages so that
# you can hack around in the packages easily to test things
# out if you really want to.
# cd /usr/local/lib/python2.6/dist-packages/
# sudo chown -R gmccreight moz* jsbridge*
# cd - > /dev/null
