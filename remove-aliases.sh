#!/usr/bin/env sh

mkdir -p html svg png
IFS='	'
while read dst src; do

	for dir in html svg png; do
		d="$dir/$dst.$dir"
		rm -f $d
	done
done < data/ALIASES
