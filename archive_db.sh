#!/bin/bash

#Date/Time for archive filename
date=$(date +"%Y%m%d-%H_%M")

#working site
website=$1

#full filename for archive
filename=$website-$date.mysql.sql

#cd into sites directory
cd /var/www/

#remove prior backups
rm ./$website/archive/.db/*

#backup the database using the defaults file to the hidden .db directory
#DEBUG
echo $date "- backing up" $website "database"
mysqldump --defaults-file=./$website/archive/.my.cnf > ./$website/archive/.db/$filename
