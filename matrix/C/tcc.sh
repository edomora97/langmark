#!/bin/bash -e

cd "$(dirname "$0")"

case "$1" in

"pre_exec")
    tcc matrix.c -o matrix
;;

"exec")
    /usr/bin/time -f %U ./matrix 2> time.out
;;

"print_exec")
    ./matrix --print > print.out
;;

"version")
    tcc -version > version.out
;;

"clean")
    rm matrix
    rm time.out
    rm print.out
    rm version.out
;;

esac