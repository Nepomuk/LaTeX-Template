#!/usr/bin/env bash

if [[ $1 == "-h" || $1 == "--help" || $1 == "help" ]]; then
	echo "cleanBiberCache.sh"
	echo "Clear the Biber cache."
	exit 1
fi

rm -rf `biber --cache`
