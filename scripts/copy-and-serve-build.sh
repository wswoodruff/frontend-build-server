#!/bin/bash

# echo "The present working directory is `pwd`"

# See this discussion on $BASH_SOURCE
# http://mywiki.wooledge.org/BashFAQ/028
script_dir_from_project_root="`dirname $BASH_SOURCE`"
# script_absolute_dir="`pwd`/$script_relative_dir"

# echo "dfdfdf `pwd`"

# Relative target build folder
serve_build_dir="$1"

target_dir="$script_dir_from_project_root/../lib/public"

echo "Attempting to copy '$serve_build_dir' to '$target_dir'"
echo ""

assert_dir() {
    # Note $1 here is scoped to "assert_dir"
    echo "ASSERTING EXISTS $1"
    if [ ! -d "$1" ]
      then
        echo ""
        echo "ERROR Directory '$1' DOES NOT exists."
        echo ""
        exit 1
    fi
}

assert_dir $serve_build_dir
assert_dir $target_dir

cp -a "$serve_build_dir/." $target_dir

echo ""

echo "Success. Idk try it out. 🎉"
echo ""
