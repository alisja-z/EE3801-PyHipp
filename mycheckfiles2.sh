#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo
echo "Start Times"
for file in *slurm*.out
do
	echo "==> $file <=="
	head -1 $file
	echo
done


echo "End Times"
for file in *slurm*.out
do
	echo "==> $file <=="
	tail -5 $file
	echo
done
