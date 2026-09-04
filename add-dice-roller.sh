#!/bin/bash
# Author Dividesbyzer0
# adds dice roller aliases to terminal

for n in {1..10}; do
    for sides in 2 4 6 8 10 12 20 100; do
        cmd="for i in {1..${n}}; do shuf -i 1-${sides} -n 1; done | paste -sd' ' -"
        alias "${n}d${sides}=${cmd}"
        alias "${n}D${sides}=${cmd}"
    done
done
