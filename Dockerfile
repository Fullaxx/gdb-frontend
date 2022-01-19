# ------------------------------------------------------------------------------
# Pull base image
FROM ubuntu:focal
MAINTAINER Brett Kuskie <fullaxx@gmail.com>

# ------------------------------------------------------------------------------
# Set environment variables
ENV DEBIAN_FRONTEND noninteractive

# ------------------------------------------------------------------------------
# Install rtorrent and clean up
RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential gdb python3-pip tmux && \
    python3 -m pip install gdbfrontend && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

# ------------------------------------------------------------------------------
# Install startup scripts
COPY app/*.sh /app/

# ------------------------------------------------------------------------------
# Identify Volumes
VOLUME /data

# ------------------------------------------------------------------------------
# Expose ports
EXPOSE 5550

# ------------------------------------------------------------------------------
# Define default command
CMD ["/app/app.sh"]
