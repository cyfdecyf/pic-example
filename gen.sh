#!/bin/bash

cmake -B build -S .
cmake --build build

objdump -d build/e > dis/e.s
objdump -d build/e_pic > dis/e_pic.s

diff -u dis/e.s dis/e_pic.s > dis/diffu

