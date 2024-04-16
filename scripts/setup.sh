#!/bin/bash
# Author: James M. Tucker
# Date: 2024-04-13
# Version: 1.0
# Usage: ./setup.sh
# Description: This script will install the necessary dependencies for development in a Ubuntu 20.04 environment.

# Update and upgrade the system
apt update && apt upgrade -y
apt install build-essential wget cmake gcc git parallel jq libwww-perl libjson-perl -y
apt install tmux -y

