#!/bin/bash

#Date/Time for archive filename
date=$(date +"%Y%m%d-%H_%M")

#working site
website=$1

#full filename for archive
filename=$website-$date.tar.gz

#cd into site directory
cd /var/www/

#verbose output
echo $date "- tarballing and compressing" $website

#tar src files and db dump into tar.gz in archive directory
tar -czf ./$website/archive/$filename -C ./$website ./html -C ./archive/.db/ .

