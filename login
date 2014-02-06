#!/bin/bash

set +x # make sure debugging is set off

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

read -s -p "Password: " password
echo

set -e # make sure we exit on shasum check error
echo -n "${password}" |shasum -a 256 -c "$SCRIPTPATH/passwd" -s
set +e # disable exit on error


# on success, start bash as a login shell
cd $HOME
exec bash -l
