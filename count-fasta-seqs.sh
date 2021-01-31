#!/bin/sh

# works for each file alone but the sum of both is still missing 
for f in "$@"; do grep -o -i ">" ${f} | wc -l | tr -d '\n'; basename ${f}; done
cat "$@" | grep -c ">" 
