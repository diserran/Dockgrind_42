# Download base image ubuntu 20.04
FROM ubuntu:20.04

# Info about the container
LABEL maintainer="diserran"
LABEL version="1.0"
LABEL description="Docker container to test memory \
leaks with valgrind"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

# Install valgrind and other necessary tools
RUN apt install -y valgrind vim nano build-essential && \
    rm -rf /var/lib/apt/lists/* && \
    apt clean

# Set the work directory
WORKDIR /valgrind
