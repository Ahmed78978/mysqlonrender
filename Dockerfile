

# Second stage: Use the final image for running MySQL
FROM mysql/mysql-server:8.0.32

# Copy the custom configuration file
COPY config/user.cnf /etc/mysql/my.cnf
# Remove all files from the data directory
RUN rm -rf /var/lib/mysql/*
# Start the MySQL server with minimal upgrade and skip grant tables
CMD ["mysqld",  "--skip-grant-tables", "--initialize-insecure"]

