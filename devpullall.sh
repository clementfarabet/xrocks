#!/bin/sh 
for d in */ 
do echo pulling $d ...
cd $d 
git checkout master
git pull 
cd - 
done
