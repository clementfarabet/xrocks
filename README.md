
# This repo is a container for all our Lua rocks

Note: all these packages used to be distributed into a big messy repo 
called XLearn.

## Retrieve all packages

This repo is empty, and only contains references to other GIT
repos. You can retrieve all of them like this:

```sh
$ git submodule init
$ git submodule update
```

## Install the whole framework

1/ third-party libraries:

On Linux (Ubuntu > 9.04):

``` sh
$ apt-get install gcc g++ git libreadline5-dev cmake wget libqt4-core libqt4-gui libqt4-dev
```

On Mac OS (Leopard, or more), using [Homebrew](http://mxcl.github.com/homebrew/):

``` sh
$ brew install git readline cmake wget qt
```

2/ Lua 5.1 + Luarocks + xLua:

``` sh
$ cd lua4torch
$ make install PREFIX=/usr/local
```

3/ Torch7

The best way to install Torch7 is to let Luarocks do it:

``` sh
$ luarocks install torch
```

4/ Packages:

Like for Torch7, you can either install each package from the 
server:

``` sh
$ luarocks install imgraph
```

or build them locally, if you are planning to work on the sources:

``` sh
$ cd lua---imgraph
$ luarocks make
```

## Use the framework

First run xlua (an alias to qlua -lxlua), and load a package:

``` sh
$ xlua
``` 

``` lua
> require 'imgraph'
```

Once loaded, tab-completion will help you navigate through the
library:

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
$ cd torch7-demos
``` 

this repo contains demos, and tutorials to get started. Looking
at the code is the best way to get there !
