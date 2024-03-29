

# Second stage: Use the final image for running MySQL
FROM mysql/mysql-server:8.0.32
#COPY config/user.cnf /etc/mysql/my.cnf

#FROM mysql/mysql-server:8.0.24

RUN mkdir -p /var/lib/mysql/backups

CMD mysqldump -h "$MYSQL_HOST" -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" \
    --single-transaction \
    --result-file=backup.$(date +%F.%T).sql \
    --all-databases

   

# Copy the custom configuration file

# Remove all files from the data directory

