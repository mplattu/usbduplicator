#!/bin/sh

# Create usbduplicator debian package using equivs. You need this
# script as all source files must be in the same directory where
# equivs-build is executed.
#
# This script is public domain
#
# https://github.com/mplattu/usbduplicator

# Create temporary directory
THISTEMP=`/bin/mktemp -d`
echo "Temporary directory is $THISTEMP"

# Copy all required files to $THISTEMP

cp changelog.Debian $THISTEMP/
cp COPYING $THISTEMP/
cp README.Debian $THISTEMP/
cp usbduplicator-equivs $THISTEMP/

cp ../config/* $THISTEMP/
cp ../bin/* $THISTEMP/
cp ../icons/* $THISTEMP/

# Build the package
CURRENTDIR=`/bin/pwd`
cd $THISTEMP
equivs-build usbduplicator-equivs
cd $CURRENTDIR

# Move deb back from TEMP
mv $THISTEMP/*.deb .
rm -fR $THISTEMP/
