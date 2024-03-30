#!/bin/bash

# Move redo log files to a backup location
#mv /var/lib/mysql/ib_logfile0 /var/lib/mysql/ib_logfile0_backup
#mv /var/lib/mysql/ib_logfile1 /var/lib/mysql/ib_logfile1_backup
#mv /var/lib/mysql/\#innodb_redo/redo* /var/lib/mysql/
#mv /var/lib/mysql /var/lib/mysql_old/

# Start MySQL server with minimal upgrade and skip grant tables
echo "Moving redo log files..."
#mv /var/lib/mysql/ib_logfile0 /var/lib/mysql/ib_logfile0_backup
echo "ib_logfile0 moved"
#mv /var/lib/mysql/ib_logfile1 /var/lib/mysql/ib_logfile1_backup
echo "ib_logfile1 moved"
#mkdir -p /var/lib/mysql/backups
echo "backup created"
# Create a new folder named mysql_old in /var/lib/
#mkdir /var/lib/mysql_old

# Move all files within /var/lib/mysql to /var/lib/mysql_old
#mv /var/lib/mysql/* /var/lib/mysql_old

# Start MySQL server with minimal upgrade and skip grant tables
echo "Starting MySQL server "
mysqld --innodb-force-recovery=4 --skip-lock-tables


echo "done mysql"
exit 0
#mkdir -p /var/lib/mysql/backups
#CMD mysqldump -h "$MYSQL_HOST" -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" \
   # --single-transaction \
   # --result-file=/var/lib/mysql/backups/backup.$(date +%F.%T).sql \
   # --all-databases
