# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/

FROM mysql/mysql-server:8.0.32
RUN mkdir -p /newsql
COPY config/user.cnf /etc/mysql-new/my.cnf





