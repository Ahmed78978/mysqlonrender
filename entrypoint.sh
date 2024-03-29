#!/bin/bash

# Move redo log files to a backup location
mv /var/lib/mysql/ib_logfile0 /var/lib/mysql/ib_logfile0_backup
mv /var/lib/mysql/ib_logfile1 /var/lib/mysql/ib_logfile1_backup

# Start MySQL server with minimal upgrade and skip grant tables
mysqld --upgrade=minimal --skip-grant-tables
