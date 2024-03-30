

FROM mysql/mysql-server:8.0.24
COPY config/user.cnf /etc/mysql/my.cnf
RUN yum install -y mysql-server
# Copy the startup script into the container
COPY startup.sh /usr/local/bin/startup.sh

# Make the script executable
RUN chmod +x /usr/local/bin/startup.sh

# Set the startup script as the command to run when the container starts
CMD ["/usr/local/bin/startup.sh"]


