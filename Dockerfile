
# Use Python 3.9 as the base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install Git and Bash
RUN apt-get update && \
    apt-get install -y --no-install-recommends git bash && \
    rm -rf /var/lib/apt/lists/*

# Copy all repository files
COPY . /app

# Ensure the shell scripts use Unix line endings
RUN sed -i 's/\r$//' /app/.github/scripts/entrypoint.sh && \
    sed -i 's/\r$//' /app/.github/scripts/update_readme.sh

# Make scripts executable
RUN chmod +x /app/.github/scripts/entrypoint.sh && \
    chmod +x /app/.github/scripts/update_readme.sh

# Run entrypoint using Bash
ENTRYPOINT ["/bin/bash", "/app/.github/scripts/entrypoint.sh"]
