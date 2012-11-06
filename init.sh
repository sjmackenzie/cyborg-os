#!/bin/bash
args=("$@")
username=${args[0]}

if [ -z ${username} ]; then
    git submodule add -f git://github.com/cyborgos/cyborg-vm.git vm
    git submodule add -f git://github.com/cyborgos/cyborg-bootcompiler.git bootcompiler
    git submodule add -f git://github.com/cyborgos/cyborg-library.git lib/main
    git submodule add -f git://github.com/cyborgos/cyborg-compiler.git lib/compiler
else
    git submodule add -f git@github.com:${username}/cyborg-vm.git vm
    git submodule add -f git@github.com:${username}/cyborg-bootcompiler.git bootcompiler
    git submodule add -f git@github.com:${username}/cyborg-library.git lib/main
    git submodule add -f git@github.com:${username}/cyborg-compiler.git lib/compiler
fi
