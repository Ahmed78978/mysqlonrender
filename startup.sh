#!/bin/bash

# Move redo log files to a backup location
#mv /var/lib/mysql/ib_logfile0 /var/lib/mysql/ib_logfile0_backup
#mv /var/lib/mysql/ib_logfile1 /var/lib/mysql/ib_logfile1_backup
#RUN mv /var/lib/mysql/\#innodb_redo/redo* /var/lib/mysql/
# Start MySQL server with minimal upgrade and skip grant tables
mysqld --upgrade=minimal --skip-grant-tables
mkdir -p /var/lib/mysql/backups
CMD mysqldump -h "$MYSQL_HOST" -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" \
    --single-transaction \
    --result-file=/var/lib/mysql/backups/backup.$(date +%F.%T).sql \
    --all-databases
