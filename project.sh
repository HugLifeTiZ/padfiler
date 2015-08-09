#!/bin/bash
# Project file for Padfiler.

[[ -z "$1" ]] && echo "No arguments given." && exit 1
[[ -z "$PREFIX" ]] && PREFIX="$2"
[[ -z "$PREFIX" ]] && PREFIX="/usr/local"

cd $(dirname $(readlink -f $0))
case "$1" in
install)
    [[ "$(whoami)" != "root" ]] && echo "Sorry, you need to be root." && exit 1
    export SIMPLE_BACKUP_SUFFIX="off"
    install -m0755 padfiler "$PREFIX/bin/"
    echo \
"Defaults env_keep += \"SDL_GAMECONTROLLERCONFIG padfiles_dir antimicro_bin\"
ALL ALL=(ALL:ALL) NOPASSWD: $PREFIX/bin/padfiler" > /etc/sudoers.d/padfiler
    ;;
uninstall)
    [[ "$(whoami)" != "root" ]] && echo "Sorry, you need to be root." && exit 1
    rm "$PREFIX/bin/arcadia" "/etc/sudoers.d/padfiler"
    ;;
gen-desktop)
    echo "Can't do that yet, sorry."
    ;;
esac
