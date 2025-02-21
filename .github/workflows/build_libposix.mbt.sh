set -e
export MOON_HOME="$HOME/.moon"
mkdir build
cd build
cmake ../stub
cmake --build .
cd ..