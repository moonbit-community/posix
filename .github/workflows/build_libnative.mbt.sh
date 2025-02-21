set -e
cd .mooncakes/illusory0x0/native/
export MOON_HOME="$HOME/.moon"
mkdir build
cd build
cmake ..
cmake --build .
cd ../../../..

mkdir lib
cp .mooncakes/illusory0x0/native/build/libnative.mbt.a  ./lib/