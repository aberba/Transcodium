clear
sudo rm -rf build/
echo "build dir remove"

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=/usr ../
make
echo "make finished"

sudo make install
transcodium 