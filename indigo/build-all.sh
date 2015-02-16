#! /bin/bash
#
# build-all.sh
#
# Handy dandy snippet to build all the various images.
#
cd base
./build.sh
cd ..

cd blender
./build.sh
cd ..

cd arthur-animation
docker build -t opencog/arthur-animation .

cd ../arthur-dev
docker build -t opencog/arthur-dev .

cd ..
