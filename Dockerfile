FROM ubuntu:22.04

# Install dependencies
RUN apt update && \
    apt install -y ffmpeg v4l-utils wget software-properties-common gnupg curl apt-transport-https \
    obs-studio obs-websocket-5.0.1 nodejs npm git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

# Install Node dependencies
RUN npm install

# Expose ports
EXPOSE 3000 8080 4455

# Default command handled in docker-compose.yml
