# write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file. Also perform an ls command against the file or directory with the long listing option.
#!/bin/bash

echo "Enter the name of a file or directory:"
read file_name

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
