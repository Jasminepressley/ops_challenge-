# !/bin/bash
# Script: Ops 301 Ops Chall Class-05
# Author: Jasmine Pressley
# Date of latest revision: 12/3/2023
# Purpose: Clearing Logs

#!/bin/bash

# Create a fake log file
touch "my-log-file.txt"

# Write some text to the new file
cat <<EOF > "my-log-file.txt"
    Hackers rule the world, and they know it...
EOF

# View a file's contents
cat "my-log-file.txt"

# Create a fake backups directory
mkdir -p "backups"

# Define the log files to compress
LOG_FILES=("my-log-file.txt")

# Define the backup directory
BACKUP_DIR="backups"

# Define the timestamp format
TIMESTAMP=$(date +"%m%d%Y")

# Loop through each log file and compress it to the backup directory
for file in "${LOG_FILES[@]}"; do
    # Get the file size before compression
    FILE_SIZE=$(stat -c %s "$file")

    # Compress the file to the backup directory with timestamp
    FILE_NAME=$(basename "$file")
    zip -q -r "$BACKUP_DIR/$FILE_NAME-$TIMESTAMP.zip" "$file"

    # Print out a confirmation message of the file being zipped
    echo "Compressing $BACKUP_DIR/$FILE_NAME-$TIMESTAMP.zip"

    # Clear the contents of the log file
    echo -n > "$file"

    # Get the file size after compression
    COMPRESSED_FILE_SIZE=$(stat -c %s "$BACKUP_DIR/$FILE_NAME-$TIMESTAMP.zip")

    # Print file size before and after compression
    echo "File size before compression: $FILE_SIZE"
    echo "File size after compression: $COMPRESSED_FILE_SIZE"

    # Compare the file size before and after compression
    if (( FILE_SIZE > COMPRESSED_FILE_SIZE )); then
        echo "Compression successful: compressed file size is smaller than original file size"
    else
        echo "Compression unsuccessful: compressed file size is larger than original file size"
    fi
done
