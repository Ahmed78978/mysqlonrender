

# Second stage: Use the final image for running MySQL
FROM mysql/mysql-server:8.0.32
RUN mkdir -p /var/lib/mysql/backups

CMD mysqldump -h "$MYSQL_HOST" -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" \
    --single-transaction \   
    --all-databases \
    > /var/lib/mysql/backups/all_databases_dump.sql

   

# Copy the custom configuration file
COPY config/user.cnf /etc/mysql/my.cnf
# Remove all files from the data directory

