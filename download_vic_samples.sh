#! /usr/bin/env bash

set -e

# save a few directory names
CWD=$PWD
ODIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git submodule init
git submodule update

# Get the sample data
cd samples
git fetch origin
# TODO - get data branch/tag that aligns with the state of the VIC repo.
git checkout master

# back to the original directory
cd $CWD
