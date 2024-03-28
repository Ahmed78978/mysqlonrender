# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/
# First stage: Use a temporary image to access the filesystem
FROM mysql/mysql-server:8.0.32 AS temporary

# Command to rename redo log files
RUN mv /var/lib/mysql/#innodb_redo/redo* /var/lib/mysql/

FROM mysql/mysql-server:8.0.32

# Copy the custom configuration file
COPY config/user.cnf /etc/mysql/my.cnf

# Start the MySQL server with minimal upgrade and skip grant tables
CMD ["mysqld", "--upgrade=minimal", "--skip-grant-tables"]
