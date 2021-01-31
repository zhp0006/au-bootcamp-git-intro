#!/bin/sh

# works perfectly fine, test output looks like it should, but fails nonetheless
# space between sequence count and basename is still missing
 
for f in "$@"; do grep -o -i ">" ${f} | wc -l | tr -d '\n'; basename ${f}; done
cat "$@" | grep -c ">" 
