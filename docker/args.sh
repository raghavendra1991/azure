#!/bin/bash
folder="Docker/"
PROGRAME="$(basename "$0")"
usage() {
    echo "Options:"
    echo "-f, --folder, specify the foldername (default:$folder)"
    echo "-h --help"
    echo " Example:./$PROGRAME -f /path/to/folder"
    return
}

# Parse command-line options
while [[ $# -gt 0 ]]; do
    case "$1" in
        -f|--foldername)
        folder="$2"
        shift 2
        ;;
        -h|--help)
        usage
        exit 0  # Add this line to exit the script after displaying help
        ;;
        *)
        echo "Error: Unknown option: $1"
        usage
        exit 1
        ;;
    esac
done

if [ -d "$folder" ]; then
    echo "List of Directories in \"$folder\":"
    echo -e "\n*****************List of Directories************"
    for item in "$folder"/*;do
        if [ -d "$item" ]; then
            directory_name=$(basename "$item")
            echo "$directory_name"
        fi
    done
    echo "List of Files in \"$folder\":"
    echo -e "\n******************List of Files*****************"
    for item in "$folder"*;do
        if [ -f "$item" ]; then
            filename=$(basename "$item")
            echo "$filename"
        fi
    done
else
    echo "Error: The specified folder does not exist: $folder"
fi
