#!/bin/bash

seed='https://www.google.com'
log_file='log.txt'
output_file='output.txt'

wget -o $log_file -O $output_file $seed
if [ $? != 0 ]; then
	echo "Error downloading page $seed"
	exit 1
fi

grep -Eo "(http|https)://[A-Za-z0-9\./-]+" $output_file
