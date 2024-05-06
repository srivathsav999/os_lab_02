#Exercise_8 - Modify the previous script to accept an unlimited number of files and directories as arguments.
#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file_or_directory> [file_or_directory] ..."
    exit 1
fi

for file_name in "$@"; do
    echo "Checking '$file_name':"

    if [ ! -e "$file_name" ]; then
        echo "  - The file or directory '$file_name' does not exist."
        continue  
    fi

    if [ -d "$file_name" ]; then
        echo "  - '$file_name' is a directory."
    elif [ -f "$file_name" ]; then
        echo "  - '$file_name' is a regular file."
    else
        echo "  - '$file_name' is another type of file."
    fi
    ls -l "$file_name"
    echo ""
done
