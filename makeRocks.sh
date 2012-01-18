#!/bin/bash

./gitall.sh reset --hard HEAD
./gitall.sh checkout master
./gitall.sh pull
./gitall.sh clean -df
./gitall.sh reset --hard HEAD

mkdir -p rocks; cd rocks

NAME=xlua
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=sys
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=inline
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME-C $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=mattorch
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=lushmat
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=opengm
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=parallel
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=opencv
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=ffmpeg
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=optim
VER=1.0-1
MOD=$NAME-$VER
cp -r ../$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=torch
VER=7.0-1
MOD=$NAME-$VER
cp -r ../$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=image
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=camera
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=nnx
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=imgraph
VER=1.0-1
MOD=$NAME-$VER
cp -r ../lua---$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

NAME=neuflow
VER=1.0-1
MOD=$NAME-$VER
cp -r ../$NAME $MOD
rm -rf $MOD/.git*
tar cvzf $MOD.tgz $MOD
luarocks pack $MOD/$MOD.rockspec
rm -r $MOD

luarocks-admin make_manifest .
cd ..
