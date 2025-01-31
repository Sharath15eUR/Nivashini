#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 \"source_directory\" \"backup_directory\" \"file_extension\""
    exit 1
fi

SOURCE_DIR="$1"
BACKUP_DIR="$2"
FILE_EXT="$3"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory does not exist."
    exit 1
fi

if [ ! -d "$BACKUP_DIR" ]; then
    mkdir -p "$BACKUP_DIR" || { echo "Error: Failed to create backup directory."; exit 1; }
fi

files=($(find "$SOURCE_DIR" -type f -name "*${FILE_EXT}"))

if [ "${#files[@]}" -eq 0 ]; then
    echo "No files with extension $FILE_EXT found in $SOURCE_DIR."
    exit 0
fi

export BACKUP_COUNT=0
TOTAL_SIZE=0

echo "Files to be backed up:"
for file in "${files[@]}"; do
    size=$(stat -c%s "$file")
    echo "$(basename "$file") - ${size} bytes"
    TOTAL_SIZE=$((TOTAL_SIZE + size))

done

for file in "${files[@]}"; do
    dest_file="$BACKUP_DIR/$(basename "$file")"
    if [ -f "$dest_file" ]; then
        if [ "$file" -nt "$dest_file" ]; then
            cp "$file" "$dest_file"
            ((BACKUP_COUNT++))
        fi
    else
        cp "$file" "$dest_file"
        ((BACKUP_COUNT++))
    fi
done

REPORT_FILE="$BACKUP_DIR/backup_report.log"
echo "Backup Summary" > "$REPORT_FILE"
echo "================" >> "$REPORT_FILE"
echo "Total files processed: ${#files[@]}" >> "$REPORT_FILE"
echo "Total files backed up: $BACKUP_COUNT" >> "$REPORT_FILE"
echo "Total size of files backed up: $TOTAL_SIZE bytes" >> "$REPORT_FILE"
echo "Backup directory: $BACKUP_DIR" >> "$REPORT_FILE"

echo "Backup completed. Report saved at $REPORT_FILE."
