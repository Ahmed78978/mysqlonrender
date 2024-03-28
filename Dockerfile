# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/

# Start from the base MySQL Docker image
FROM mysql/mysql-server:8.0.32

# Copy the custom MySQL configuration file
COPY config/user.cnf /etc/mysql-new/my.cnf

# Run SQL command to rename the existing user table to user_old
RUN service mysql start && \
    mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "RENAME TABLE mysql.user TO mysql.user_old;"

# Start the MySQL server
CMD ["mysqld"]



