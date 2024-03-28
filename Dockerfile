# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/

# Start from the base MySQL Docker image
FROM mysql/mysql-server:8.0.32
COPY config/user.cnf /etc/mysql/my.cnf
# Run MySQL daemon in the background
CMD ["mysqld", "--daemonize"]

# Sleep for a few seconds to allow MySQL to start
RUN sleep 10

# Run SQL command to rename the existing user table to user_old -h "$MYSQL_HOST" -u "$MYSQL_USER" --password="$MYSQL_PASSWORD" \
RUN mysql -u root -p"ESZszATb91PSc+O61Ym9/RmKMMyD4PKZkfUWnkuQ9hk=" -h "$MYSQL_HOST" -u "$MYSQL_USER" -e "RENAME TABLE mysql.user TO mysql.user_old;"

# Stop MySQL daemon
RUN mysqladmin -u root -p"ESZszATb91PSc+O61Ym9/RmKMMyD4PKZkfUWnkuQ9hk=" -h 127.0.0.1 -P 3306  shutdown

