#!/bin/sh

# Number of sequences in example1 based on "Negros"
for f in example-seqs1.fasta; do grep -o -i "Negros" ${f} | wc -l | tr -d '\n'; echo ${f}; done

# Number of sequences in example2 based on "Negros"
for g in example-seqs2.fasta; do grep -o -i "Negros" ${g} | wc -l | tr -d '\n';
echo ${g}; done

# Total number of sequences in example1 and example2 based on "Negros"
grep -o -i "Negros" ${f} ${g} | wc -l
