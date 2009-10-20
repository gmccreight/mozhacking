#!/bin/sh

# Get the latest version of all the code from the git repos

cd jsbridge
git pull
cd ../mozmill
git pull
cd ../mozrunner
git pull
