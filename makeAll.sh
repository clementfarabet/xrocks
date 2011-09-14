#!/bin/bash 
# 

function usage {
    echo ""
    echo "$0"
    echo ""
    echo "  a simple command to repeat luarocks make to all subdirectories starting with lua---*"
    echo ""
}

# --------------- ARGS -----------------------------
# Should give an arg
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Init Submodules..."
git submodule init
git submodule update
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Installing lua4torch..."
cd lua4torch
make install
cd -
echo "lua4torch installed..."
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

PATH=$HOME/lua-local/bin:$PATH

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Installing torch..."
cd torch
luarocks make
cd -
echo "torch installed..."
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"



echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Building all the lua---* directories..."

for d in lua---*
do 
    echo "** Entering  in $d"
    cd $d
    luarocks make
    cd -
done

echo "Install successful..."
echo "Make sure you add $HOME/lua-local/bin to your PATH env variable"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"