#!/bin/bash

# Start MySQL service
service mysql start

# Wait for MySQL service to start
sleep 10

# Run mysqldump command to create backup
mysqldump -h "$MYSQL_HOST" -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" \
    --single-transaction \
    --result-file="/var/lib/mysql/backups/backup_$(date +%F_%H-%M-%S).sql" \
    --all-databases
