

# Second stage: Use the actual MySQL image


FROM mysql/mysql-server:8.0.24

COPY config/user.cnf /etc/mysql/my.cnf
