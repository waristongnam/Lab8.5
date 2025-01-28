# Use an official Python runtime as a base image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Install system dependencies (optional but may be useful for additional dependencies)
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Robot Framework and any other dependencies you need (e.g., libraries, tools)
RUN pip install --upgrade pip
RUN pip install robotframework

# Set the entrypoint to run Robot Framework tests (can be overridden by Jenkins)
ENTRYPOINT ["robot"]

# Default command (can be changed in the Jenkinsfile)
CMD ["--help"]
