#!/usr/bin/env bash

for F in *.fasta; do
	N=$(basename $F .fasta);
	ragtag.py scaffold ../../scaffolding_halococcus/scaffold_reference_dombrowskii/H_dombrowskii.fasta $F -o scaffold_$N -C -u;
done 
