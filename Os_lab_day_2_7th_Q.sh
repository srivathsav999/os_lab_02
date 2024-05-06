#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 1
fi

file_name="$1"

if [ ! -e "$file_name" ]; then
    echo "The file or directory '$file_name' does not exist."
    exit 1
fi

if [ -d "$file_name" ]; then
    echo "'$file_name' is a directory."
elif [ -f "$file_name" ]; then
    echo "'$file_name' is a regular file."
else
    echo "'$file_name' is another type of file."
fi

ls -l "$file_name"
