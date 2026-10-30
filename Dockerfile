
# Use Python 3.9 as the base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install Git and required dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends git bash && \
    rm -rf /var/lib/apt/lists/*

# Copy the repository files into the container
COPY . /app

# Ensure the entrypoint script is executable
RUN chmod +x /app/.github/scripts/entrypoint.sh

# Run the entrypoint script when Docker starts
ENTRYPOINT ["/app/.github/scripts/entrypoint.sh"]
