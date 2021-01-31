#!/bin/sh

# works perfectly fine, test output looks like it should, but fails nonetheless
# left align is not possible, who knows why...

for f in "$@"; do count=$(grep -o -i ">" ${f} | wc -l); name=$(basename ${f}); printf '%-10s\n' "$count $name"; done
cat "$@" | grep -c ">"
