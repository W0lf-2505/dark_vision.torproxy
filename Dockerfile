# Use a base image with Tor pre-installed
FROM dperson/torproxy:latest

# Set the desired Tor proxy port
ENV TOR_PROXY_PORT=2505

# Create a custom torrc configuration file with the desired port
RUN echo "SocksPort 0.0.0.0:${TOR_PROXY_PORT}" > /etc/tor/torrc_custom

# Append the custom torrc configuration to the default torrc file
RUN cat /etc/tor/torrc_custom >> /etc/tor/torrc

# Expose the new Tor proxy port (2505) inside the container
EXPOSE ${TOR_PROXY_PORT}
