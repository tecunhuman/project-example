#!/bin/bash

dir=$(realpath .)
build_dir=$dir/build/linux

mkdir -p $build_dir
gcc -O2 -o $build_dir/project-example $dir/src/main.c
