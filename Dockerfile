# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/

# Start from the base MySQL Docker image
FROM mysql/mysql-server:8.0.32

# Run MySQL daemon in the background
CMD ["mysqld", "--daemonize"]

# Sleep for a few seconds to allow MySQL to start
RUN sleep 5

# Run SQL command to rename the existing user table to user_old
RUN mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "RENAME TABLE mysql.user TO mysql.user_old;"

# Stop MySQL daemon
RUN mysqladmin -u root -p"$MYSQL_ROOT_PASSWORD" shutdown



