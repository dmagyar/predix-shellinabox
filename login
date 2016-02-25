#!/bin/bash

set +x # make sure debugging is set off

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

read -s -p "Password: " password
echo

set -e
echo -n "${password}" |shasum -a 256 -c "$SCRIPTPATH/passwd" -s
set +e

# on success, start bash as a login shell
echo "Logged in, executing bash"
cd $HOME
exec /bin/bash -l




