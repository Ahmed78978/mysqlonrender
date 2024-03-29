

# Second stage: Use the final image for running MySQL
FROM mysql/mysql-server:8.0.32
RUN mkdir -p /var/lib/mysql/backups

CMD mysqldump -h "$MYSQL_HOST" -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" \
    --single-transaction \
    --result-file=/var/lib/mysql/backups/backup.$(date +%F.%T).sql \
    --all-databases
# Copy the custom configuration file
COPY config/user.cnf /etc/mysql/my.cnf
# Remove all files from the data directory
RUN rm -rf /var/lib/mysql/*
# Start the MySQL server with minimal upgrade and skip grant tables
CMD ["mysqld",  "--skip-grant-tables", "--initialize-insecure"]

