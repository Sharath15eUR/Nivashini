#!/bin/bash

# Function to log errors
log_error() {
    echo "Error: $1" | tee -a "errors.log"
}

# Function to display help menu using here document
display_help() {
    cat << EOF
Usage: $0 [OPTION]...
Search for files containing a specific keyword.

Options:
  -d <directory>   Search recursively in the specified directory.
  -k <keyword>     Specify the keyword to search for.
  -f <file>        Search for the keyword in the specified file.
  --help           Display this help menu.

Examples:
  $0 -d logs -k error         # Recursively search 'logs' directory for 'error'
  $0 -f log.txt -k warning    # Search 'log.txt' for 'warning'
EOF
}

# Function to search within a file
search_file() {
    local file="$1"
    local keyword="$2"

    if [[ ! -f "$file" ]]; then
        log_error "File '$file' not found!"
        exit 1
    fi

    grep -in "$keyword" "$file" && echo "Found '$keyword' in $file" || echo "No matches found in $file."
}

# Function for recursive search in a directory
search_directory() {
    local dir="$1"
    local keyword="$2"

    if [[ ! -d "$dir" ]]; then
        log_error "Directory '$dir' not found!"
        exit 1
    fi

    echo "Searching recursively for '$keyword' in directory: $dir"
    grep -iRn "$keyword" "$dir" 2>/dev/null || echo "No matches found."
}

# Handle '--help' option before getopts
if [[ "$1" == "--help" ]]; then
    display_help
    exit 0
fi

# Parse options
while getopts ":d:k:f:" opt; do
    case "$opt" in
        d) directory="$OPTARG" ;;
        k) keyword="$OPTARG" ;;
        f) file="$OPTARG" ;;
        \?)
            log_error "Invalid option: -$OPTARG"
            display_help
            exit 1
            ;;
        :)
            log_error "Option -$OPTARG requires an argument."
            exit 1
            ;;
    esac
done

# Main logic
if [[ -n "$directory" && -n "$keyword" ]]; then
    search_directory "$directory" "$keyword"
elif [[ -n "$file" && -n "$keyword" ]]; then
    search_file "$file" "$keyword"
else
    log_error "Insufficient arguments provided."
    display_help
    exit 1
fi
