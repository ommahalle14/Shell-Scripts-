#!/bin/bash

# check if file name is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <compressed-file>"
    exit 1
fi

file=$1

# check if file exists
if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

echo "Extracting $file ..."

case "$file" in
    *.tar.bz2) tar -xvjf "$file" ;;
    *.tar.gz)  tar -xvzf "$file" ;;
    *.tar.xz)  tar -xvJf "$file" ;;
    *.bz2)     bunzip2 "$file" ;;
    *.rar)     unrar x "$file" ;;
    *.gz)      gunzip "$file" ;;
    *.tar)     tar -xvf "$file" ;;
    *.tbz2)    tar -xvjf "$file" ;;
    *.tgz)     tar -xvzf "$file" ;;
    *.zip)     unzip "$file" ;;
    *.Z)       uncompress "$file" ;;
    *.7z)      7z x "$file" ;;
    *)
        echo "Unsupported file format!"
        exit 1
        ;;
esac

echo "Extraction complete."
