FROM nginx:alpine

# Install openssh and supervisor
RUN apk update && apk add openssh supervisor

# Generate SSH keys
RUN ssh-keygen -A

# Copy supervisord configuration
COPY supervisord.conf /etc/supervisor/conf.d/

# Create a new user
RUN adduser -D -s /bin/sh username

# Set the user's password
RUN echo 'username:password' | chpasswd

# Install Tor
RUN apk add --no-cache tor

# Install Node.js and npm
RUN apk add --no-cache nodejs npm

# Create directory for Node.js project
RUN mkdir /usr/app

# Copy Tor configuration
COPY torrc /etc/tor/torrc

# Copy Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

COPY sshd_config /etc/ssh/sshd_config
# Copy Node.js application files
WORKDIR /usr/app
RUN npm init -y
COPY index.js /usr/app/

# Expose ports
EXPOSE 80
EXPOSE 9050
EXPOSE 3000
EXPOSE 22

# Start supervisord
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]


