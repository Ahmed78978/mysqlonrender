#!/bin/bash

# Move redo log files to a backup location
#mv /var/lib/mysql/ib_logfile0 /var/lib/mysql/ib_logfile0_backup
#mv /var/lib/mysql/ib_logfile1 /var/lib/mysql/ib_logfile1_backup
#mv /var/lib/mysql/\#innodb_redo/redo* /var/lib/mysql/
mv /var/lib/mysql /var/lib/mysql_old/

# Start MySQL server with minimal upgrade and skip grant tables
echo "Moving redo log files..."
mv /var/lib/mysql/ib_logfile0 /var/lib/mysql/ib_logfile0_backup
echo "ib_logfile0 moved"
mv /var/lib/mysql/ib_logfile1 /var/lib/mysql/ib_logfile1_backup
echo "ib_logfile1 moved"
# Start MySQL server with minimal upgrade and skip grant tables
echo "Starting MySQL server with minimal upgrade and skip grant tables..."
mysqld --skip-grant-tables --skip-host-cache --skip-name-resolve --skip-add-locks --skip-slave-start --skip-show-database --skip-log-bin --skip-log-slave-updates --skip-auto-rehash --skip-external-locking --skip-innodb


echo "done mysql"
#mkdir -p /var/lib/mysql/backups
#CMD mysqldump -h "$MYSQL_HOST" -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" \
   # --single-transaction \
   # --result-file=/var/lib/mysql/backups/backup.$(date +%F.%T).sql \
   # --all-databases
