#!/usr/bin/env bash
set -e
echo "Installing rocks"

# Add any extra luarocks dependencies here:
rocks=( "moonscript" "busted" "luasocket" "luacov" )

installCmd="luarocks install"
if [ "$1" == "github" ]; then
    installCmd="sudo luarocks install"
elif [ "$1" == "docker" ]; then
    installCmd="/usr/bin/luarocks-5.1 install"
fi

for rock in "${rocks[@]}"
do
    $installCmd $rock
done
echo "Done"
