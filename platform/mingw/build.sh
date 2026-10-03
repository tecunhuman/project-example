#!/bin/bash

dir=$(realpath .)
build_dir=$dir/build/windows

mkdir -p $build_dir
x86_64-w64-mingw32-gcc -O2 -o $build_dir/project-example.exe $dir/src/main.c
