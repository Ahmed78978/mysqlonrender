# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/

# Start from the base MySQL Docker image
FROM mysql/mysql-server:8.0.32
COPY config/user.cnf /etc/mysql/my.cnf
RUN mv /var/lib/mysql /var/lib/mysql2



