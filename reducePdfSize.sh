#!/usr/bin/env bash
# Reduction of PDF file size by means of bitmap resolution lowering with Ghostscript
# Based on this StackExchange comment: http://tex.stackexchange.com/a/41273/56326

if [[ $1 == "-h" || $1 == "--help" || $1 == "help" ]]; then
	echo "reducePdfSize.sh FILE <COMPRESSIONLEVEL>"
	echo "Compresses a (LaTeX-generated) PDF file."
	echo ""
	echo "Arguments:"
	echo "  -h               -  Print this help message"
	echo "  FILE             -  Input file. Output file name is auto generated."
	echo "  COMPRESSIONLEVEL -  Level of compression (optional). One of the following: highest, high (default), mid, low, lowest."
	exit 1
fi

if [[ ! -e $1 ]]; then
	echo "ERROR: Please specify input file"
	exit 1
fi

inputfile=$1
outputfile=$inputfile"_compressed.pdf"
level="ebook"

if [[ $2 == "highest" ]]; then  # 72 dpi images
	level="screen"
fi
if [[ $2 == "high" ]]; then  # 150 dpi images
	level="ebook"
fi
if [[ $2 == "mid" ]]; then  # 300 dpi images
	level="printer"
fi
if [[ $2 == "low" ]]; then  # 300 dpi images, color preserving
	level="prepress"
fi
if [[ $2 == "lowest" ]]; then  # best possible
	level="default"
fi

gs -sDEVICE=pdfwrite -dCompabilityLevel=1.4 -dPDFSETTINGS=/$level -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$outputfile $inputfile
