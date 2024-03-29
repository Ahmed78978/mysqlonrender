

# First stage: Use a temporary image to access the filesystem
FROM mysql/mysql-server:8.0.32 AS temporary

# Command to rename redo log files
RUN mv /var/lib/mysql/#innodb_redo/redo* /var/lib/mysql/

# Second stage: Use the actual MySQL image
FROM mysql/mysql-server:8.0.32

# Stop MySQL server before upgrading
RUN service mysql stop

# Move existing MySQL data directory to a safe location
RUN mv /var/lib/mysql /var/lib/mysql_old

# Start the MySQL server with minimal upgrade and skip grant tables
CMD ["mysqld", "--upgrade=minimal", "--skip-grant-tables"]

# Copy the custom configuration file

# Remove all files from the data directory

