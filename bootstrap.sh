#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

git pull origin master

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function link_dot_file() {
    file=${1}
    ln -sf ${DIR}/${file} ${HOME}/${file#dot} # Remove dot prefix from filename
}

for file in dot.*; do
    link_dot_file ${file}
done

# Os specific stuff
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   platform='freebsd'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='osx'
fi

# Execute Os specific bootstrap
bash ./bootstrap_${platform}.sh
bash ./bootstrap_common.sh
