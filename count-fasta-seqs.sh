#!/bin/sh

# works for each file alone but the sum of both is still missing 
for f in "$@"; do grep -o -i "Negros" ${f} | wc -l | tr -d '\n'; basename ${f}; done
grep -o -i "Negros" ${f} | wc -l


