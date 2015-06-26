#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

git pull origin master

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function dot_file() {
    file=${1}
    ln -sf ${DIR}/${file} ${HOME}/${file#dot} # Remove dot prefix from filename
}

for file in dot.*; do
    dot_file ${file}
done
