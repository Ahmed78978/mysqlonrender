

# Second stage: Use the final image for running MySQL
FROM mysql/mysql-server:8.0.32
COPY config/user.cnf /etc/mysql/my.cnf



   

# Copy the custom configuration file

# Remove all files from the data directory

