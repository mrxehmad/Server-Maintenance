#!/bin/bash

# Sync and clear PageCache, dentries, and inodes
sync; echo 3 > /proc/sys/vm/drop_caches

# Remove unused Docker images
docker image prune -a -f

# Remove stopped Docker containers
docker container prune -f

# Remove unused Docker volumes
docker volume prune -f

# Remove unused Docker networks
docker network prune -f

# Remove all unused Docker data
docker system prune -a -f

# Clean APT cache
apt-get clean

# Remove unnecessary packages
apt-get autoremove -y

# Clear journal logs older than 7 days
journalctl --vacuum-time=7d

# Clear /tmp directory
rm -rf /tmp/*

# Clear /var/tmp directory
rm -rf /var/tmp/*

echo "Weekly maintenance tasks completed successfully."
