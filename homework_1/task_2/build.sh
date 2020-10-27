#!/usr/bin/env bash
echo "This is a bash script, this is the first line"
echo "This is the second one, it will run after the first one"

mkdir build
c++ -c -I include/ src/sum.cpp -o build/sum.o
c++ -c -I include/ src/subtract.cpp -o build/subtract.o

ar rcs build/libipb_arithmetic.a build/sum.o build/subtract.o

c++ src/main.cpp -I include/ -L build/ -lipb_arithmetic -o results/bin/main

mv build/libipb_arithmetic.a results/lib/

