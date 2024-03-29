

# Second stage: Use the final image for running MySQL
FROM mysql/mysql-server:8.0.32
COPY config/user.cnf /etc/mysql/my.cnf
RUN mkdir -p /var/lib/mysql/backups

CMD mysqldump -h "$MYSQL_HOST" -u "mysql" --password="ESZszATb91PSc+O61Ym9/RmKMMyD4PKZkfUWnkuQ9hk=" \
    --single-transaction \   
    --all-databases \
    > all_databases_dump.sql

   

# Copy the custom configuration file

# Remove all files from the data directory

