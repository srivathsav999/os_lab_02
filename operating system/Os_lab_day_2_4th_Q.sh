# Write a shell script to check to see if the file “file_path” exists. If it does exist, display “file_path passwords are enabled.” Next, check to see if you can write to the file. If you can, display “You have permissions to edit “file_path.””If you cannot, display “You do NOT have permissions to edit “file_path””
#!/bin/bash

file_path="file_path"
if [ -e "$file_path" ]; then
    echo "$file_path passwords are enabled."
    if [ -w "$file_path" ]; then
        echo "You have permissions to edit $file_path."
    else
        echo "You do NOT have permissions to edit $file_path."
    fi
else
    echo "$file_path does not exist."
fi
