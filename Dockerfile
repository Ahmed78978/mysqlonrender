# First stage: Use a temporary image to access the filesystem
FROM mysql/mysql-server:8.0.32 AS temporary

# Second stage: Use the actual MySQL image
FROM mysql/mysql-server:8.0.32

# Copy the startup script into the container
COPY startup.sh /usr/local/bin/startup.sh

# Make the script executable
RUN chmod +x /usr/local/bin/startup.sh

# Set the startup script as the command to run when the container starts
CMD ["/usr/local/bin/startup.sh"]
