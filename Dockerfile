# First stage: Use a temporary image to access the filesystem
FROM mysql/mysql-server:8.0.32 AS temporary

# Delete the redo log files
RUN rm -rf /var/lib/mysql/#innodb_redo/*

# Second stage: Use the final image for running MySQL
FROM mysql/mysql-server:8.0.32

# Copy the custom configuration file
COPY config/user.cnf /etc/mysql/my.cnf

# Start the MySQL server with minimal upgrade and skip grant tables
CMD ["mysqld", "--upgrade=minimal", "--skip-grant-tables", "--initialize-insecure"]

