#!/bin/bash

# This script will create an RDP connection to a remote server.

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <username> <server_address>"
    exit 1
fi

USERNAME="$1"
SERVER_ADDRESS="$2"

echo "Connecting to ${SERVER_ADDRESS} as ${USERNAME}"

xfreerdp /u:${USERNAME} /v:${SERVER_ADDRESS}
