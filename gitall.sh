#!/bin/bash 
# 

function usage {
    echo ""
    echo "$0"
    echo ""
    echo "  a simple command to repeat a git command to all subdirectories"
    echo ""
    echo "syntax:"
    echo ""
    echo "  ${0} <command(s)>"
    echo ""
    echo "eg:"
    echo ""
    echo " + switch all submodules to the master branch"
    echo "  $0 checkout master"
    echo " + pull updates for all submodules" 
    echo "  $0 pull"
    echo " + other useful"
    echo "  $0 status"
    echo "  $0 diff"
    echo ""
    echo "WARNING: will blindly send command(s) to git in each directory"
    
}

# --------------- ARGS -----------------------------
# Should give an arg
if [ $# == 0 ]
then
    usage
    exit
fi

for d in */ 
do echo '**' \"git $*\" in $d ...
cd $d 
if [ -e .git/ ] 
then
    git $*
fi
cd - 
done
