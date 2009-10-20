#!/bin/sh

# Install all the packages from the source repositories.  This might seem like
# overkill when you can simply use python setup.py develop to create a link to
# the directory you are developing in, however, if you get too used to that
# then you may end up introducing installation errors without noticing them,
# since you're never installing in your own setup.

cd jsbridge
sudo python setup.py install > /dev/null
cd ../mozmill
sudo python setup.py install > /dev/null
cd ../mozrunner
sudo python setup.py install > /dev/null
