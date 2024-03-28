# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/

# Start from the base MySQL Docker image
FROM mysql/mysql-server:8.0.32

# Copy the custom MySQL configuration file
COPY config/user.cnf /etc/mysql-new/my.cnf

# Copy the SQL initialization script into the container
COPY init.sql /docker-entrypoint-initdb.d/init.sql

# Make sure the script has executable permissions
RUN chmod +x /docker-entrypoint-initdb.d/init.sql



