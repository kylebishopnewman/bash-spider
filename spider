#!/bin/bash

log_file='log.txt'
output_file='output.txt'
url_file='urls.txt'


while read url; do
	wget -o $log_file -O $output_file $url
	if [ $? != 0 ]; then
		echo "Error downloading page $url"
		exit 1
	fi

	grep -Eo "(http|https)://[A-Za-z0-9\./-]+" $output_file >> $url_file
done < $url_file

