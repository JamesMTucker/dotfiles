# Ubuntu 20.04
FROM ubuntu:20.04

# Set to non-interactive mode
ARG DEBIAN_FRONTEND=noninteractive

# Set the timezone to US/New_York
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    curl \
    cmake \
    gcc \
    git \
    parallel \
    jq \
    libwww-perl \
    --no-install-recommends

# Set the WORKDIR to users home directory
WORKDIR /root

# Copy the scripts to the WORKDIR
COPY scripts/ .

# COPY over the .zsh_aliases folder
COPY .zsh_aliases .zsh_aliases

# Makefile
RUN make

# COPY over the .zshrc file
COPY .zshrc .zshrc

# Copy over the tmux.conf file
COPY .tmux.conf .tmux.conf
COPY .tmux .tmux

# Copy over the ~/.local/share/tmux folder
COPY local_tmux .local/share/tmux
COPY tmux .config/tmux

