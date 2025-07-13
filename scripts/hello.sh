#!/bin/bash

# Func to print messages and log them
logging() {
    local text="$1"
    echo "$text"
    echo "$text" >> "$log_file"
}

# Func to count files in output
count_files() {
    find output/ -maxdepth 1 -type f 2>/dev/null | wc -l | tr -d '[:space:]'
}

mkdir -p output logs

current_datetime="$(date +%Y%m%d_%H%M%S)"
humanized_datetime="$(date +%Y-%m-%d\ %H:%M:%S)"

# Define logfile name
if [ $# -gt 0 ]; then
    log_file="logs/$1.txt"
else
    log_file="logs/log-$current_datetime.txt"
fi


logging "Hello from Bash!"
logging "Current date and time: $humanized_datetime"
logging "Number of regular files in output/: $(count_files)"

# Writing in history.txt
history_log_file="logs/history.txt"
echo "Log file $(basename "$log_file") was created at $humanized_datetime" >> "$history_log_file"

exit 0
