#!/bin/sh

# Counting the  sequences in the individual fasta file using regular expressions
grep -o -i "Negros" example-seqs1.fasta | wc -l; grep -o -i "Negros" example-seqs2.fasta | wc -l; grep -o -i "Negros" example-seqs1.fasta example-seqs2.fasta | wc -l
 
# Counting total number of sequences  
for f in *.fasta; do grep -o -i "Negros" ${f} | wc -l | tr -d '\n'; echo ${f}; done;
