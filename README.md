
# This repo is a container for all my Torch7 packages.

Note: all these packages used to be distributed into a big messy repo 
called XLearn.

## Retrieve all packages

This repo is empty, and only contains references to other GIT
repos. You can retrieve all of them like this:

```sh
$ git submodule init
$ git submodule update
```

## Install

1/ Torch7 and dependencies:

On Linux (Ubuntu > 9.04):

``` sh
$ apt-get install gcc g++ git libreadline5-dev cmake wget libqt4-core libqt4-gui libqt4-dev
```

On Mac OS (Leopard, or more), using [Homebrew](http://mxcl.github.com/homebrew/):

``` sh
$ brew install git readline cmake wget qt
```

Then on both platforms:

``` sh
$ git clone https://github.com/andresy/torch
$ cd torch
$ mkdir build; cd build
$ cmake ..
$ make
$ [sudo] make install
```

2/ Packages:

Once Torch7 is installed, it comes with a package manager
that you can use to either install packages from the web:

``` sh
$ torch-pkg install pkg-name
$ torch-pkg --help
```

or build them locally, if you are planning to work on the 
sources:

``` sh
$ cd pkg-name
$ torch-pkg deploy
```

## Use Torch7

First run torch, and load a package:

``` sh
$ torch
``` 

``` lua
> require 'imgraph'
```

Once loaded, tab-completion will help you navigate through the
library (note: tab-completion will only work if you have
Qt4 and readline):

``` lua
> imgraph. + TAB
imgraph.colorize(           imgraph.connectcomponents(  
imgraph.graph(              imgraph.histpooling(        
imgraph.segmentmst(         imgraph.testme(             
imgraph.watershed(          imgraph.gradient(
```

Most packages then provide a testme() function to quickly see
what it does:

``` lua
> imgraph.testme()
```

## Checkout the demos & tutorials

``` sh
$ cd demos
``` 

this repo contains demos, and tutorials to get started. Looking
at the code is the best way to get there!

## Developers

If you would like to develop one of the submodules you should check
out the master branch of that module: 

``` sh
$ cd nnx
$ git checkout master
$ git pull
```

This puts you at the head of development for that submodule, and in
the proper branch to commit any changes you make to the git repository
for that module.  To check out all the submodules in developer mode we
have added the script :

``` sh
$ ./gitall.sh
```
  a simple command to repeat a git command to all subdirectories

syntax:

  ./gitall.sh <command(s)>

eg:

 + switch all submodules to the master branch
  ./gitall.sh checkout master
 + pull updates for all submodules
  ./gitall.sh pull
 + other useful
  ./gitall.sh status
  ./gitall.sh diff

WARNING: will blindly send command(s) to git in each directory
