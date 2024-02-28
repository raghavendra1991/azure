#!/bin/bash

# Set the script to exit on any error
set -e
# This script will exit immediately if any command fails, and it will print each command before executing it.
set -exo pipefail

SCRIPT_DIR=$ROOT_DIR/az/docker/scripts

username="duvva"

# Function to display usage instructions
# print help info -----------------------------------------------------------------------
PROGRAME="$(basename "$0")"
usage() {
    echo "Usage: $0 -h" # $0 is Nmme of the Script
    echo "Options:"
    echo " ./$PROGRAME -u <username> -p <password>"
    echo "  -u, --username    Specify the DockerHub username (default: $username)"
    echo "  -p, --password    Specify the DockerHub password "
    echo "  -h, --help "
    echo "Example: "
	echo "  ./$PROGRAME -u username -p password"
    return
}

# Check for command-line options
while getopts ":hu:p:" opt; do
    case $opt in
        h)
            usage
            ;;
        u)
            username="$OPTARG"
            ;;
        p)  
            password="$OPTARG"
            ;;
        \?)
            echo invalid option: -$OPTARG
            ;;
    esac
done

# If username and password were not provided as arguments, prompt for them
read -p "-- Is your Docker username [$username]? (Press Enter for default or type new one): " $username
if [ -n "$username" ]; then
    docker_username="$username"
fi
read -s -p '-- Please enter APIkey: ' PASSWORD
echo

# Log in to Docker Hub
echo "$password"| docker login -u "$username" --password-stdin

# Check if login was successful
if [ $? -eq 0 ]; then
    echo "Login successful!"
else
    echo "Login failed. Please check your credentials and try again."
fi
