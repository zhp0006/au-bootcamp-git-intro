#!/bin/sh

# works perfectly fine, test output looks like it should, but fails nonetheless
# left align is not possible, who knows why...

for f in "$@"; do count=$(grep -o -i ">" ${f} | wc -l | xargs); name=$(basename ${f}); echo "$count $name"; done
cat "$@" | grep -c ">"
