# backup_and_rotate
Scripts to dynamically back up all sites on a host and rotate existing backups

#Backup scripts
archive_helper: grabs a listing of vhosts in the /var/www/html dir and feeds them into xargs to be backed up by the backup script. Run daily as a cron job.
archive_db.sh:  performs a mysqldump of the site's database, using a my.cnf file located in each vhost's backup directory for database credentials
archive.sh      tars and gzips the contents of the vhost directory

#Retention Policy scripts
retain_daily:   remove all backups from the daily backups older than7 days
retain_weekly:  copy this week's daily backup into the weekly backup archive, remove weekly backups older than 4 weeks
retain_monthly: copy this moth's daily backup into the monthly backup archive, remove monthly backups older than 12 months
retain_yearly:  copy this year's daily backup into the yearly backup archive. No retention policy in place.
